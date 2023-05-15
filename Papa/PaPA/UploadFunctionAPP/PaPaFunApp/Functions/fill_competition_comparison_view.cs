using System.IO;
using System.Threading.Tasks;
using Microsoft.AspNetCore.Mvc;
using Microsoft.Azure.WebJobs;
using Microsoft.Azure.WebJobs.Extensions.Http;
using Microsoft.AspNetCore.Http;
using Microsoft.Extensions.Logging;
using System.Data;

namespace PaPaFunApp.Fill_Competition_Comparison_View_Functions
{
    public static class Fill_Competition_Comparison_View
    {
        /// <summary>
        /// Specific to each function. Fills the correct table related information and passes to stored proc.
        /// </summary>
        /// <param name="rawString"> string passed in body</param>
        /// <returns>Error Message if any</returns>
        private static string FillCustomTable(string rawString, string emailId)
        {
            DataTable dt = new DataTable();
            string procName = "[papafuncapp_addRows_Competition_Comparison_View]";
            string tableTypeName = "[dbo].[Competition_Comparison_View]";
			dt.Columns.Add(new DataColumn("Scenario", typeof(string)));
			dt.Columns.Add(new DataColumn("Scenario Description", typeof(string)));
			dt.Columns.Add(new DataColumn("Time Period", typeof(string)));
			dt.Columns.Add(new DataColumn("Bottler", typeof(string)));
			dt.Columns.Add(new DataColumn("Channel", typeof(string)));
			dt.Columns.Add(new DataColumn("Concat_Sce_TP_Bott_Chan", typeof(string)));
			dt.Columns.Add(new DataColumn("Packages", typeof(string)));
			dt.Columns.Add(new DataColumn("Timestamp", typeof(string)));
			dt.Columns.Add(new DataColumn("Price type", typeof(string)));
			dt.Columns.Add(new DataColumn("Current Prices on the Curve(Oz Price)", typeof(decimal)));
			dt.Columns.Add(new DataColumn("Oz to UP mutiplier", typeof(decimal)));
			dt.Columns.Add(new DataColumn("Current Prices on the Curve(Unit Price)", typeof(decimal)));
			dt.Columns.Add(new DataColumn("Nearest Major Competitor", typeof(string)));
			dt.Columns.Add(new DataColumn("Comp# Current Prices on the Curve(Unit Price)", typeof(decimal)));
			dt.Columns.Add(new DataColumn("Relative Price Index", typeof(decimal)));
			dt.Columns.Add(new DataColumn("NAOU Volume Share", typeof(decimal)));
			dt.Columns.Add(new DataColumn("Rate Guidance based on Competition", typeof(string)));
			dt.Columns.Add(new DataColumn("PBNA vol# share", typeof(decimal)));
			dt.Columns.Add(new DataColumn("DPSG vol# share", typeof(decimal)));
			dt.Columns.Add(new DataColumn("RecoID", typeof(decimal)));
			dt.Columns.Add(new DataColumn("NAOU value Share", typeof(decimal)));
			dt.Columns.Add(new DataColumn("PBNA value share", typeof(decimal)));
			dt.Columns.Add(new DataColumn("DPSG value share", typeof(decimal)));
			dt.Columns.Add(new DataColumn("NAOU_currentvol", typeof(decimal)));
			dt.Columns.Add(new DataColumn("PBNA Price", typeof(decimal)));
			dt.Columns.Add(new DataColumn("DPSG Price", typeof(decimal)));
			dt.Columns.Add(new DataColumn("PBNA Volume", typeof(decimal)));
			dt.Columns.Add(new DataColumn("DPSG Volume", typeof(decimal)));
            string transformErrMsg = Common.TransformStringFillTable(dt, rawString);
            string errMsg = string.IsNullOrEmpty(transformErrMsg) ? Common.RunSP(procName, emailId, tableTypeName, dt) : transformErrMsg;
            return errMsg;
        }
        [FunctionName("fill_Competition_Comparison_View")]
        public static async Task<IActionResult> Run([HttpTrigger(AuthorizationLevel.Function, "post", Route = null)] HttpRequest req,ILogger log)
        {
            log.LogInformation("fill_Competition_Comparison_View triggered");
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
