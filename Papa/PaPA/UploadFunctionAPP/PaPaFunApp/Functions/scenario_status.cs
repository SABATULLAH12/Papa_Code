using System;
using System.IO;
using System.Threading.Tasks;
using Microsoft.AspNetCore.Mvc;
using Microsoft.Azure.WebJobs;
using Microsoft.Azure.WebJobs.Extensions.Http;
using Microsoft.AspNetCore.Http;
using Microsoft.Extensions.Logging;
using Newtonsoft.Json;
using System.Data.SqlClient;
using System.Data;

namespace PaPaFunApp.Functions
{
    public static class Scenario_status
    {
        [FunctionName("scenario_status")]
        public static async Task<IActionResult> Run(
            [HttpTrigger(AuthorizationLevel.Function, "post", Route = null)] HttpRequest req,
            ILogger log)
        {
            log.LogInformation("scenario_status triggered");
            string scenario = "";
            string errorMessage = "";
            string successMessage = "";
            string procName = "[papafuncapp_get_scenario_info]";
            string emailId = req.Headers["EmailID"];
            string requestBody = await new StreamReader(req.Body).ReadToEndAsync();
            DataSet ds = new DataSet();
            try
            {
                string data = requestBody.Replace("\n", "").Replace("\r", "").Trim();
                if (string.IsNullOrEmpty(data))
                {
                    throw new Exception("Please Pass Scenario Name");
                }
                scenario = data;
                ds = Common.RunSP(procName, emailId, "Scenario", scenario);
                successMessage = Common.TransformTableToString(ds.Tables[0]);
            }
            catch(Exception ex)
            {
                errorMessage = ex.Message;
            }
            string responseMessage = Common.GenerateResponseMessage(errorMessage, successMessage);
            if (!string.IsNullOrEmpty(errorMessage))
            {
                log.LogError(errorMessage, scenario);
                return new BadRequestObjectResult(responseMessage);
            }
            return new OkObjectResult(responseMessage);
        }
    }
}
