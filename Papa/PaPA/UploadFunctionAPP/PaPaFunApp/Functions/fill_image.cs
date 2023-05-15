using System.IO;
using System.Threading.Tasks;
using Microsoft.AspNetCore.Mvc;
using Microsoft.Azure.WebJobs;
using Microsoft.Azure.WebJobs.Extensions.Http;
using Microsoft.AspNetCore.Http;
using Microsoft.Extensions.Logging;
using System.Data;

namespace PaPaFunApp.Fill_Image_Functions
{
    public static class Fill_Image
    {
        /// <summary>
        /// Specific to each function. Fills the correct table related information and passes to stored proc.
        /// </summary>
        /// <param name="rawString"> string passed in body</param>
        /// <returns>Error Message if any</returns>
        private static string FillCustomTable(string rawString, string emailId)
        {
            DataTable dt = new DataTable();
            string procName = "[papafuncapp_addRows_Image]";
            string tableTypeName = "[dbo].[Image_type]";
			dt.Columns.Add(new DataColumn("Scenario", typeof(string)));
			dt.Columns.Add(new DataColumn("Group", typeof(string)));
			dt.Columns.Add(new DataColumn("Image Name", typeof(string)));
			dt.Columns.Add(new DataColumn("Scenario-Group", typeof(string)));
            string transformErrMsg = Common.TransformStringFillTable(dt, rawString);
            string errMsg = string.IsNullOrEmpty(transformErrMsg) ? Common.RunSP(procName, emailId, tableTypeName, dt) : transformErrMsg;
            return errMsg;
        }
        [FunctionName("fill_Image")]
        public static async Task<IActionResult> Run([HttpTrigger(AuthorizationLevel.Function, "post", Route = null)] HttpRequest req,ILogger log)
        {
            log.LogInformation("fill_Image triggered");
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
