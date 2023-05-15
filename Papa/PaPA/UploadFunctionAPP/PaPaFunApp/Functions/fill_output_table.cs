using System.IO;
using System.Threading.Tasks;
using Microsoft.AspNetCore.Mvc;
using Microsoft.Azure.WebJobs;
using Microsoft.Azure.WebJobs.Extensions.Http;
using Microsoft.AspNetCore.Http;
using Microsoft.Extensions.Logging;
using System.Data;

namespace PaPaFunApp.Fill_Output_Table_Functions
{
    public static class Fill_Output_Table
    {
        /// <summary>
        /// Specific to each function. Fills the correct table related information and passes to stored proc.
        /// </summary>
        /// <param name="rawString"> string passed in body</param>
        /// <returns>Error Message if any</returns>
        private static string FillCustomTable(string rawString, string emailId)
        {
            DataTable dt = new DataTable();
            string procName = "[papafuncapp_addRows_Output_Table]";
            string tableTypeName = "[dbo].[Output_Table]";
			dt.Columns.Add(new DataColumn("Scenario", typeof(string)));
			dt.Columns.Add(new DataColumn("Scenario Description", typeof(string)));
			dt.Columns.Add(new DataColumn("Time Period", typeof(string)));
			dt.Columns.Add(new DataColumn("Bottler", typeof(string)));
			dt.Columns.Add(new DataColumn("Channel", typeof(string)));
			dt.Columns.Add(new DataColumn("Concat_Sce_TP_Bott_Chan", typeof(string)));
			dt.Columns.Add(new DataColumn("Price Type(OZ,EQ,Unit,SPC)", typeof(string)));
			dt.Columns.Add(new DataColumn("Packages", typeof(string)));
			dt.Columns.Add(new DataColumn("Premium-ness", typeof(decimal)));
			dt.Columns.Add(new DataColumn("Current Price ($) - White Tag", typeof(decimal)));
			dt.Columns.Add(new DataColumn("Current Price ($) - Promo", typeof(decimal)));
			dt.Columns.Add(new DataColumn("Current Price ($) - AWR", typeof(decimal)));
			dt.Columns.Add(new DataColumn("Optimized Price ($) - White Tag", typeof(decimal)));
			dt.Columns.Add(new DataColumn("Optimized Price ($) - Promo", typeof(decimal)));
			dt.Columns.Add(new DataColumn("Optimized Price ($) - AWR", typeof(decimal)));
			dt.Columns.Add(new DataColumn("Destination Price ($) - White Tag", typeof(decimal)));
			dt.Columns.Add(new DataColumn("Destination Price ($) - Promo", typeof(decimal)));
			dt.Columns.Add(new DataColumn("Destination Price ($) - AWR", typeof(decimal)));
			dt.Columns.Add(new DataColumn("Price Gap (Optimized) - White Tag", typeof(decimal)));
			dt.Columns.Add(new DataColumn("Price Gap (Optimized) - Promo", typeof(decimal)));
			dt.Columns.Add(new DataColumn("Price Gap (Optimized) - AWR", typeof(decimal)));
			dt.Columns.Add(new DataColumn("Price Gap (Destination) - White Tag", typeof(decimal)));
			dt.Columns.Add(new DataColumn("Price Gap (Destination) - Promo", typeof(decimal)));
			dt.Columns.Add(new DataColumn("Price Gap (Destination) - AWR", typeof(decimal)));
			dt.Columns.Add(new DataColumn("Optimized Price Indexed - White Tag", typeof(decimal)));
			dt.Columns.Add(new DataColumn("Optimized Price Indexed - Promo", typeof(decimal)));
			dt.Columns.Add(new DataColumn("Optimized Price Indexed - AWR", typeof(decimal)));
			dt.Columns.Add(new DataColumn("Current Dead Net Price ($) - White Tag", typeof(decimal)));
			dt.Columns.Add(new DataColumn("Current Dead Net Price ($) - Promo", typeof(decimal)));
			dt.Columns.Add(new DataColumn("Current Dead Net Price ($) - AWR", typeof(decimal)));
			dt.Columns.Add(new DataColumn("Optimized Dead Net Price ($) - White Tag", typeof(decimal)));
			dt.Columns.Add(new DataColumn("Optimized Dead Net Price ($) - Promo", typeof(decimal)));
			dt.Columns.Add(new DataColumn("Optimized Dead Net Price ($) - AWR", typeof(decimal)));
			dt.Columns.Add(new DataColumn("Destination Dead Net Price ($) - White Tag", typeof(decimal)));
			dt.Columns.Add(new DataColumn("Destination Dead Net Price ($) - Promo", typeof(decimal)));
			dt.Columns.Add(new DataColumn("Destination Dead Net Price ($) - AWR", typeof(decimal)));
			dt.Columns.Add(new DataColumn("Dead Net Price Gap (Optimized) - White Tag", typeof(decimal)));
			dt.Columns.Add(new DataColumn("Dead Net Price Gap (Optimized) - Promo", typeof(decimal)));
			dt.Columns.Add(new DataColumn("Dead Net Price Gap (Optimized) - AWR", typeof(decimal)));
			dt.Columns.Add(new DataColumn("Dead Net Price Gap (Destination) - White Tag", typeof(decimal)));
			dt.Columns.Add(new DataColumn("Dead Net Price Gap (Destination) - Promo", typeof(decimal)));
			dt.Columns.Add(new DataColumn("Dead Net Price Gap (Destination) - AWR", typeof(decimal)));
			dt.Columns.Add(new DataColumn("Optimized Dead Net Price Indexed - White Tag", typeof(decimal)));
			dt.Columns.Add(new DataColumn("Optimized Dead Net Price Indexed - Promo", typeof(decimal)));
			dt.Columns.Add(new DataColumn("Optimized Dead Net Price Indexed - AWR", typeof(decimal)));
			dt.Columns.Add(new DataColumn("Timestamp", typeof(string)));
            string transformErrMsg = Common.TransformStringFillTable(dt, rawString);
            string errMsg = string.IsNullOrEmpty(transformErrMsg) ? Common.RunSP(procName, emailId, tableTypeName, dt) : transformErrMsg;
            return errMsg;
        }
        [FunctionName("fill_Output_Table")]
        public static async Task<IActionResult> Run([HttpTrigger(AuthorizationLevel.Function, "post", Route = null)] HttpRequest req,ILogger log)
        {
            log.LogInformation("fill_Output_Table triggered");
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
