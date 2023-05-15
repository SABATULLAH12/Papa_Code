using System;
using System.Collections.Generic;
using System.Data;
using System.Data.SqlClient;
using System.Linq;

namespace PaPaFunApp
{
    public static class Common
    {
        /// <summary>
        /// get column names passed in rawstring
        /// </summary>
        /// <param name="cuts">list of strings which was seperated from rawString by using Row Delemeter</param>
        /// <returns>list of column names passed from rawstring</returns>
        private static List<string> GetColumnNames(string[] cuts)
        {
            List<string> columnNames = new List<string>();
            foreach (string cut in cuts[0].Split(Constants.ColDelem))
            {
                if (!string.IsNullOrEmpty(cut) && cut != "0")
                {
                    columnNames.Add(cut);
                }
            }
            return columnNames;
        }

        /// <summary>
        /// convert raw string to DataTable
        /// </summary>
        /// <param name="dt">data table with structure specified</param>
        /// <param name="rawString">the raw string passed in request body</param>
        /// <returns> Error message if any while transformation </returns>
        public static string TransformStringFillTable(DataTable dt, string rawString)
        {
            string transformErr = "";
            try
            {
                string cleanedString = rawString.Replace("\n", "").Replace("\r", "");
                string[] tableString = cleanedString.Split(Constants.tableDelem);
                if (tableString.Length != 3)
                {
                    throw new Exception("Request body is incomplete or not valid");
                }
                string[] cuts = tableString[1].Split(Constants.RowDelem);
                List<string> columnNames = GetColumnNames(cuts);
                int row_count = cuts.Length - 1;
                int col_count = columnNames.Count;

                for (int i = 1; i < cuts.Length; i++)
                {

                    if (cuts[i].Replace(Constants.ColDelem, "").Trim() == string.Empty)
                    {
                        continue;
                    }
                    else if (!string.IsNullOrEmpty(cuts[i]))
                    {
                        string[] stringRow = cuts[i].Split(Constants.ColDelem);
                        if (stringRow.Length == dt.Columns.Count)
                        {
                            DataRow dRow = dt.NewRow();
                            for (int j = 0; j < dt.Columns.Count; j++)
                            {
                                try
                                {
                                    dRow[j] = string.IsNullOrEmpty(stringRow[j]) ? DBNull.Value : Convert.ChangeType(stringRow[j], dt.Columns[j].DataType);
                                }
                                catch (Exception ex)
                                {
                                    throw new Exception($"{ex.Message} '{stringRow[j]}' is not in correct format at row '{cuts[i]}'.");
                                }
                            }
                            dt.Rows.Add(dRow);
                        }
                        else if (stringRow.Length > 0)
                        {
                            throw new Exception("Request has unequal number of Columns.");
                        }
                    }
                }

                if(dt.Rows.Count == 0)
                {
                    throw new Exception("No Rows in Request body");
                }
            }
            catch (Exception ex)
            {
                transformErr = "Transform Error\n" + ex.Message;
            }
            return transformErr;
        }
        
        /// <summary>
        /// tranform table to string for scenraio info message
        /// </summary>
        /// <param name="dt"> table info </param>
        /// <returns></returns>
        public static string TransformTableToString(DataTable dt)
        {
            string res = string.Join(Environment.NewLine,
                dt.Rows.OfType<DataRow>().
                Select(x => string.Join(" || ", x.ItemArray)));
            return res;
        }

        /// <summary>
        /// generate standard response message
        /// </summary>
        /// <param name="errMessage">error message</param>
        /// <returns>response message</returns>
        public static string GenerateResponseMessage(string errMessage,string successMessage = null)
        {
            if (!string.IsNullOrEmpty(successMessage))
            {
                return successMessage.Replace("\n",", ");
            }
            else if (string.IsNullOrEmpty(errMessage))
            {
                return "success";
            }
            else
            {
                return $"failed, Error Message: {errMessage.Replace("\n", ", ")}";
            }
        }
        
        /// <summary>
        /// Runs the stored procedure in data base with just EmailID
        /// </summary>
        /// <param name="procName">name of sp</param>
        /// <param name="emailId">Email ID</param>
        /// <returns></returns>
        public static void RunSP(string procName,string emailId)
        {
            var connStr = Environment.GetEnvironmentVariable("sqldb_connection");
            try
            {
                using (SqlConnection conn = new SqlConnection(connStr))
                {
                    conn.Open();

                    using (SqlCommand cmd = new SqlCommand(procName, conn))
                    {
                        cmd.CommandType = CommandType.StoredProcedure;
                        SqlParameter param = new SqlParameter("@emailId", SqlDbType.VarChar)
                        {
                            Value = emailId
                        };
                        cmd.Parameters.Add(param);
                        cmd.ExecuteNonQuery();
                        conn.Close();
                    }
                }
            }
            catch (Exception ex)
            {
                throw ex;
            }
        }
        
        /// <summary>
        /// Runs the stored procedure in data base with email Id and param1
        /// </summary>
        /// <param name="procName">name of sp</param>
        /// <param name="emailId">Email ID</param>
        /// <param name="param1name"></param>
        /// <param name="param1value"></param>
        /// <returns>dataset</returns>
        public static DataSet RunSP(string procName, string emailId, string param1name, string param1value)
        {
            var connStr = Environment.GetEnvironmentVariable("sqldb_connection");
            DataSet ds = new DataSet();
            try
            {
                using (SqlConnection conn = new SqlConnection(connStr))
                {
                    conn.Open();

                    using (SqlCommand cmd = new SqlCommand(procName, conn))
                    {
                        cmd.CommandType = CommandType.StoredProcedure;
                        SqlParameter param = new SqlParameter("@emailID", SqlDbType.VarChar)
                        {
                            Value = emailId
                        };
                        cmd.Parameters.Add(param);
                        SqlParameter param1 = new SqlParameter($"@{param1name}", SqlDbType.VarChar)
                        {
                            Value = param1value
                        };
                        cmd.Parameters.Add(param1);
                        SqlDataAdapter da = new SqlDataAdapter
                        {
                            SelectCommand = cmd
                        };
                        da.Fill(ds);
                        conn.Close();
                    }
                }
            }
            catch (Exception ex)
            {
                throw ex;
            }
            return ds;
        }

        /// <summary>
        /// Runs the stored procedure in data base with the passed datatable as parameter
        /// </summary>
        /// <param name="procName"> name of sp</param>
        /// <param name="tableTypeName"> name of table type parameter used in sqldb </param>
        /// <param name="emailId">Email ID</param>
        /// <param name="dt">data table which needs to be passed as table type parameter</param>
        /// <returns></returns>
        public static string RunSP(string procName,string emailId, string tableTypeName, DataTable dt)
        {
            string errorMsg = "";
            var connStr = Environment.GetEnvironmentVariable("sqldb_connection");
            try
            {
                using (SqlConnection conn = new SqlConnection(connStr))
                {
                    conn.Open();

                    using (SqlCommand cmd = new SqlCommand(procName, conn))
                    {
                        cmd.CommandType = CommandType.StoredProcedure;
                        SqlParameter TVPData = new SqlParameter("@tvpTable", SqlDbType.Structured)
                        {
                            TypeName = tableTypeName,
                            Value = dt
                        };
                        cmd.Parameters.Add(TVPData);
                        SqlParameter param = new SqlParameter("@emailID", SqlDbType.VarChar)
                        {
                            Value = emailId
                        };
                        cmd.Parameters.Add(param);
                        cmd.ExecuteNonQuery();
                        conn.Close();
                    }
                }
            }
            catch (Exception ex)
            {
                errorMsg = "SQL Error\n" + ex.Message;
            }
            return errorMsg;
        }
        
    }
}
