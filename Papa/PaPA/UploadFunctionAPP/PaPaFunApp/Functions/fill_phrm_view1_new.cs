using System.IO;
using System.Threading.Tasks;
using Microsoft.AspNetCore.Mvc;
using Microsoft.Azure.WebJobs;
using Microsoft.Azure.WebJobs.Extensions.Http;
using Microsoft.AspNetCore.Http;
using Microsoft.Extensions.Logging;
using System.Data;

namespace PaPaFunApp.Fill_PHRM_View1_new_Functions
{
    public static class Fill_PHRM_View1_new
    {
        /// <summary>
        /// Specific to each function. Fills the correct table related information and passes to stored proc.
        /// </summary>
        /// <param name="rawString"> string passed in body</param>
        /// <returns>Error Message if any</returns>
        private static string FillCustomTable(string rawString, string emailId)
        {
            DataTable dt = new DataTable();
            string procName = "[papafuncapp_addRows_PHRM_View1_new]";
            string tableTypeName = "[dbo].[PHRM_View1_new]";
			dt.Columns.Add(new DataColumn("Scenario", typeof(string)));
			dt.Columns.Add(new DataColumn("Scenario Description", typeof(string)));
			dt.Columns.Add(new DataColumn("Time Period", typeof(string)));
			dt.Columns.Add(new DataColumn("Bottler", typeof(string)));
			dt.Columns.Add(new DataColumn("Channel", typeof(string)));
			dt.Columns.Add(new DataColumn("Concat_Sce_TP_Bott_Chan", typeof(string)));
			dt.Columns.Add(new DataColumn("Price Change Option(Retailer,Deadnet)", typeof(string)));
			dt.Columns.Add(new DataColumn("Data Channel", typeof(string)));
			dt.Columns.Add(new DataColumn("Packages", typeof(string)));
			dt.Columns.Add(new DataColumn("Group", typeof(string)));
			dt.Columns.Add(new DataColumn("Price Growth", typeof(decimal)));
			dt.Columns.Add(new DataColumn("Adjusted Price Growth", typeof(decimal)));
			dt.Columns.Add(new DataColumn("Index", typeof(decimal)));
			dt.Columns.Add(new DataColumn("Volume", typeof(decimal)));
			dt.Columns.Add(new DataColumn("Year 1", typeof(decimal)));
			dt.Columns.Add(new DataColumn("Year 2", typeof(decimal)));
			dt.Columns.Add(new DataColumn("Year 3", typeof(decimal)));
			dt.Columns.Add(new DataColumn("Timestamp", typeof(string)));
			dt.Columns.Add(new DataColumn("Scenario-grp", typeof(string)));
			dt.Columns.Add(new DataColumn("flag", typeof(string)));
			dt.Columns.Add(new DataColumn("rankyear1", typeof(decimal)));
			dt.Columns.Add(new DataColumn("rankyear2", typeof(decimal)));
			dt.Columns.Add(new DataColumn("rankyear3", typeof(decimal)));
			dt.Columns.Add(new DataColumn("Current Volume", typeof(decimal)));
			dt.Columns.Add(new DataColumn("Y1 Volume", typeof(decimal)));
			dt.Columns.Add(new DataColumn("Y2 Volume", typeof(decimal)));
			dt.Columns.Add(new DataColumn("Y3 Volume", typeof(decimal)));
			dt.Columns.Add(new DataColumn("Conversion Factor", typeof(decimal)));
			dt.Columns.Add(new DataColumn("Current Price", typeof(decimal)));
			dt.Columns.Add(new DataColumn("Current Price y1", typeof(decimal)));
			dt.Columns.Add(new DataColumn("Current Price y2", typeof(decimal)));
			dt.Columns.Add(new DataColumn("Current Price y3", typeof(decimal)));
			dt.Columns.Add(new DataColumn("Destination Price", typeof(decimal)));
            string transformErrMsg = Common.TransformStringFillTable(dt, rawString);
            string errMsg = string.IsNullOrEmpty(transformErrMsg) ? Common.RunSP(procName, emailId, tableTypeName, dt) : transformErrMsg;
            return errMsg;
        }
        [FunctionName("fill_PHRM_View1_new")]
        public static async Task<IActionResult> Run([HttpTrigger(AuthorizationLevel.Function, "post", Route = null)] HttpRequest req,ILogger log)
        {
            log.LogInformation("fill_PHRM_View1_new triggered");
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
