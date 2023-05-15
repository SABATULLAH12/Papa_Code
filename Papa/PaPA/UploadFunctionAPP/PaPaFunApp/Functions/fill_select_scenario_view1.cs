using System.IO;
using System.Threading.Tasks;
using Microsoft.AspNetCore.Mvc;
using Microsoft.Azure.WebJobs;
using Microsoft.Azure.WebJobs.Extensions.Http;
using Microsoft.AspNetCore.Http;
using Microsoft.Extensions.Logging;
using System.Data;

namespace PaPaFunApp.Fill_Select_Scenario_View1_Functions
{
    public static class Fill_Select_Scenario_View1
    {
        /// <summary>
        /// Specific to each function. Fills the correct table related information and passes to stored proc.
        /// </summary>
        /// <param name="rawString"> string passed in body</param>
        /// <returns>Error Message if any</returns>
        private static string FillCustomTable(string rawString, string emailId)
        {
            DataTable dt = new DataTable();
            string procName = "[papafuncapp_addRows_Select_Scenario_View1]";
            string tableTypeName = "[dbo].[Select_Scenario_View1]";
			dt.Columns.Add(new DataColumn("Scenario", typeof(string)));
			dt.Columns.Add(new DataColumn("Scenario Description", typeof(string)));
			dt.Columns.Add(new DataColumn("Time Period", typeof(string)));
			dt.Columns.Add(new DataColumn("Bottler", typeof(string)));
			dt.Columns.Add(new DataColumn("Channel", typeof(string)));
			dt.Columns.Add(new DataColumn("Concat_Sce_TP_Bott_Chan", typeof(string)));
			dt.Columns.Add(new DataColumn("Package Name", typeof(string)));
			dt.Columns.Add(new DataColumn("Include for Optimization?", typeof(string)));
			dt.Columns.Add(new DataColumn("Include for Promo Modelling", typeof(string)));
			dt.Columns.Add(new DataColumn("Premium-ness", typeof(decimal)));
			dt.Columns.Add(new DataColumn("White Tag Elasticity", typeof(decimal)));
			dt.Columns.Add(new DataColumn("Promo Elasticity", typeof(decimal)));
			dt.Columns.Add(new DataColumn("AWR Elasticity", typeof(decimal)));
			dt.Columns.Add(new DataColumn("White Tag Margins", typeof(decimal)));
			dt.Columns.Add(new DataColumn("Promo Margins", typeof(decimal)));
			dt.Columns.Add(new DataColumn("AWR Price Margins", typeof(decimal)));
			dt.Columns.Add(new DataColumn("Min Price Increase on White Tag Price", typeof(decimal)));
			dt.Columns.Add(new DataColumn("Min Price Increase on Promo Price", typeof(decimal)));
			dt.Columns.Add(new DataColumn("Max Price Increase on White Tag price", typeof(decimal)));
			dt.Columns.Add(new DataColumn("Max Price Increase on Promo price", typeof(decimal)));
			dt.Columns.Add(new DataColumn("Max Allowed decline in White Tag Volume_Package", typeof(decimal)));
			dt.Columns.Add(new DataColumn("Max Allowed decline in Promo Volume_Package", typeof(decimal)));
			dt.Columns.Add(new DataColumn("Timestamp", typeof(string)));
            string transformErrMsg = Common.TransformStringFillTable(dt, rawString);
            string errMsg = string.IsNullOrEmpty(transformErrMsg) ? Common.RunSP(procName, emailId, tableTypeName, dt) : transformErrMsg;
            return errMsg;
        }
        [FunctionName("fill_Select_Scenario_View1")]
        public static async Task<IActionResult> Run([HttpTrigger(AuthorizationLevel.Function, "post", Route = null)] HttpRequest req,ILogger log)
        {
            log.LogInformation("fill_Select_Scenario_View1 triggered");
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
