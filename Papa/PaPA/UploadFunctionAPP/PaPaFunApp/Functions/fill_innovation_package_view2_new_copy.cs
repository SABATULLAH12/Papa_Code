using System.IO;
using System.Threading.Tasks;
using Microsoft.AspNetCore.Mvc;
using Microsoft.Azure.WebJobs;
using Microsoft.Azure.WebJobs.Extensions.Http;
using Microsoft.AspNetCore.Http;
using Microsoft.Extensions.Logging;
using System.Data;

namespace PaPaFunApp.Fill_Innovation_Package_View2_new_copy_Functions
{
    public static class Fill_Innovation_Package_View2_new_copy
    {
        /// <summary>
        /// Specific to each function. Fills the correct table related information and passes to stored proc.
        /// </summary>
        /// <param name="rawString"> string passed in body</param>
        /// <returns>Error Message if any</returns>
        private static string FillCustomTable(string rawString, string emailId)
        {
            DataTable dt = new DataTable();
            string procName = "[papafuncapp_addRows_Innovation_Package_View2_new_copy]";
            string tableTypeName = "[dbo].[Innovation_Package_View2_new_copy]";
			dt.Columns.Add(new DataColumn("Scenario", typeof(string)));
			dt.Columns.Add(new DataColumn("Scenario_Description", typeof(string)));
			dt.Columns.Add(new DataColumn("Time_Period", typeof(string)));
			dt.Columns.Add(new DataColumn("Bottler", typeof(string)));
			dt.Columns.Add(new DataColumn("Channel", typeof(string)));
			dt.Columns.Add(new DataColumn("Concat_Sce_TP_Bott_Chan", typeof(string)));
			dt.Columns.Add(new DataColumn("PriceChart_Conversion", typeof(string)));
			dt.Columns.Add(new DataColumn("PriceCurve_Package", typeof(string)));
			dt.Columns.Add(new DataColumn("Premiumness_Index", typeof(decimal)));
			dt.Columns.Add(new DataColumn("White_Tag", typeof(decimal)));
			dt.Columns.Add(new DataColumn("Promo", typeof(decimal)));
			dt.Columns.Add(new DataColumn("AWR", typeof(decimal)));
			dt.Columns.Add(new DataColumn("Timestamp", typeof(string)));
			dt.Columns.Add(new DataColumn("Scenario_channel_PriceUnit", typeof(string)));
			dt.Columns.Add(new DataColumn("White_Tag_CP", typeof(decimal)));
			dt.Columns.Add(new DataColumn("Promo_CP", typeof(decimal)));
			dt.Columns.Add(new DataColumn("AWR_CP", typeof(decimal)));
            string transformErrMsg = Common.TransformStringFillTable(dt, rawString);
            string errMsg = string.IsNullOrEmpty(transformErrMsg) ? Common.RunSP(procName, emailId, tableTypeName, dt) : transformErrMsg;
            return errMsg;
        }
        [FunctionName("fill_Innovation_Package_View2_new_copy")]
        public static async Task<IActionResult> Run([HttpTrigger(AuthorizationLevel.Function, "post", Route = null)] HttpRequest req,ILogger log)
        {
            log.LogInformation("fill_Innovation_Package_View2_new_copy triggered");
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
