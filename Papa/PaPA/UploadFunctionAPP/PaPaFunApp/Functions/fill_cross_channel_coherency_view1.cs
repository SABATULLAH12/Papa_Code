using System.IO;
using System.Threading.Tasks;
using Microsoft.AspNetCore.Mvc;
using Microsoft.Azure.WebJobs;
using Microsoft.Azure.WebJobs.Extensions.Http;
using Microsoft.AspNetCore.Http;
using Microsoft.Extensions.Logging;
using System.Data;

namespace PaPaFunApp.Fill_Cross_Channel_Coherency_View1_Functions
{
    public static class Fill_Cross_Channel_Coherency_View1
    {
        /// <summary>
        /// Specific to each function. Fills the correct table related information and passes to stored proc.
        /// </summary>
        /// <param name="rawString"> string passed in body</param>
        /// <returns>Error Message if any</returns>
        private static string FillCustomTable(string rawString, string emailId)
        {
            DataTable dt = new DataTable();
            string procName = "[papafuncapp_addRows_Cross_Channel_Coherency_View1]";
            string tableTypeName = "[dbo].[Cross_Channel_Coherency_View1]";
			dt.Columns.Add(new DataColumn("Scenario", typeof(string)));
			dt.Columns.Add(new DataColumn("Scenario Description", typeof(string)));
			dt.Columns.Add(new DataColumn("Time Period", typeof(string)));
			dt.Columns.Add(new DataColumn("Bottler", typeof(string)));
			dt.Columns.Add(new DataColumn("Channel", typeof(string)));
			dt.Columns.Add(new DataColumn("Concat_Sce_TP_Bott_Chan", typeof(string)));
			dt.Columns.Add(new DataColumn("Package Filter", typeof(string)));
			dt.Columns.Add(new DataColumn("Price Type (OP,Curr)", typeof(string)));
			dt.Columns.Add(new DataColumn("Channel X-Axis", typeof(string)));
			dt.Columns.Add(new DataColumn("Price kind(WT-Promo-AWR)", typeof(string)));
			dt.Columns.Add(new DataColumn("Price value", typeof(decimal)));
			dt.Columns.Add(new DataColumn("Timestamp", typeof(string)));
			dt.Columns.Add(new DataColumn("Oz_to_UP_m", typeof(decimal)));
			dt.Columns.Add(new DataColumn("Oz_to_SPC_m", typeof(decimal)));
			dt.Columns.Add(new DataColumn("Price value_UnitPrice", typeof(decimal)));
			dt.Columns.Add(new DataColumn("volume", typeof(decimal)));
            string transformErrMsg = Common.TransformStringFillTable(dt, rawString);
            string errMsg = string.IsNullOrEmpty(transformErrMsg) ? Common.RunSP(procName, emailId, tableTypeName, dt) : transformErrMsg;
            return errMsg;
        }
        [FunctionName("fill_Cross_Channel_Coherency_View1")]
        public static async Task<IActionResult> Run([HttpTrigger(AuthorizationLevel.Function, "post", Route = null)] HttpRequest req,ILogger log)
        {
            log.LogInformation("fill_Cross_Channel_Coherency_View1 triggered");
            string rawString = await new StreamReader(req.Body).ReadToEndAsync();
            string emailId = req.Headers["EmailID"];
            string errMessage = FillCustomTable(rawString, emailId); 
            string responseMessage = Common.GenerateResponseMessage(errMessage);
            if (!string.IsNullOrEmpty(errMessage))
            {
                log.LogError(errMessage, rawString);
                return new BadRequestObjectResult(responseMessage);
            }
            return new OkObjectResult(responseMessage);
        }
    }
}
