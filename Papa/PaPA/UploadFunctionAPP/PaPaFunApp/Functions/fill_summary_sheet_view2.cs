using System.IO;
using System.Threading.Tasks;
using Microsoft.AspNetCore.Mvc;
using Microsoft.Azure.WebJobs;
using Microsoft.Azure.WebJobs.Extensions.Http;
using Microsoft.AspNetCore.Http;
using Microsoft.Extensions.Logging;
using System.Data;

namespace PaPaFunApp.Fill_Summary_Sheet_View2_Functions
{
    public static class Fill_Summary_Sheet_View2
    {
        /// <summary>
        /// Specific to each function. Fills the correct table related information and passes to stored proc.
        /// </summary>
        /// <param name="rawString"> string passed in body</param>
        /// <returns>Error Message if any</returns>
        private static string FillCustomTable(string rawString, string emailId)
        {
            DataTable dt = new DataTable();
            string procName = "[papafuncapp_addRows_Summary_Sheet_View2]";
            string tableTypeName = "[dbo].[Summary_Sheet_View2]";
			dt.Columns.Add(new DataColumn("Scenario", typeof(string)));
			dt.Columns.Add(new DataColumn("Scenario Description", typeof(string)));
			dt.Columns.Add(new DataColumn("Time Period", typeof(string)));
			dt.Columns.Add(new DataColumn("Bottler", typeof(string)));
			dt.Columns.Add(new DataColumn("Channel", typeof(string)));
			dt.Columns.Add(new DataColumn("Concat_Sce_TP_Bott_Chan", typeof(string)));
			dt.Columns.Add(new DataColumn("PriceChart_Price Type(WT,Promo,AWR)", typeof(string)));
			dt.Columns.Add(new DataColumn("PriceChart_Conversion", typeof(string)));
			dt.Columns.Add(new DataColumn("PriceChart_Packages", typeof(string)));
			dt.Columns.Add(new DataColumn("PriceChart_Current Price", typeof(decimal)));
			dt.Columns.Add(new DataColumn("PriceChart_Optimized Price", typeof(decimal)));
			dt.Columns.Add(new DataColumn("Price Gap(Current vs Optimized) MIN", typeof(decimal)));
			dt.Columns.Add(new DataColumn("Price Gap(Current vs Optimized) MAX", typeof(decimal)));
			dt.Columns.Add(new DataColumn("Price Gap(Current vs Optimized) delta", typeof(decimal)));
			dt.Columns.Add(new DataColumn("Price Gap(Current vs Destination) MIN", typeof(decimal)));
			dt.Columns.Add(new DataColumn("Price Gap(Current vs Destination) MAX", typeof(decimal)));
			dt.Columns.Add(new DataColumn("Price Gap(Current vs Destination) delta", typeof(decimal)));
			dt.Columns.Add(new DataColumn("Price Gap(Current vs Optimized) Delta negative", typeof(decimal)));
			dt.Columns.Add(new DataColumn("Price Gap(Current vs Optimized) Delta positive", typeof(decimal)));
			dt.Columns.Add(new DataColumn("Price Gap(Current vs Destination) Delta negative", typeof(decimal)));
			dt.Columns.Add(new DataColumn("Price Gap(Current vs Destination) Delta positive", typeof(decimal)));
			dt.Columns.Add(new DataColumn("Destination Price", typeof(decimal)));
			dt.Columns.Add(new DataColumn("Timestamp", typeof(string)));
            string transformErrMsg = Common.TransformStringFillTable(dt, rawString);
            string errMsg = string.IsNullOrEmpty(transformErrMsg) ? Common.RunSP(procName, emailId, tableTypeName, dt) : transformErrMsg;
            return errMsg;
        }
        [FunctionName("fill_Summary_Sheet_View2")]
        public static async Task<IActionResult> Run([HttpTrigger(AuthorizationLevel.Function, "post", Route = null)] HttpRequest req,ILogger log)
        {
            log.LogInformation("fill_Summary_Sheet_View2 triggered");
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
