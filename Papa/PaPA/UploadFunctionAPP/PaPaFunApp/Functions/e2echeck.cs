using System;
using System.Threading.Tasks;
using Microsoft.AspNetCore.Mvc;
using Microsoft.Azure.WebJobs;
using Microsoft.Azure.WebJobs.Extensions.Http;
using Microsoft.AspNetCore.Http;
using Microsoft.Extensions.Logging;
namespace PaPaFunApp.e2eCheckFunctions
{
    public static class E2ECheck
    {
        [FunctionName("e2e_check")]
        public static async Task<IActionResult> Run(
            [HttpTrigger(AuthorizationLevel.Function, "post", Route = null)] HttpRequest req,
            ILogger log)
        {
            log.LogInformation("e2e_check triggered");
            string errorMessage = "";
            string emailId = req.Headers["EmailID"];
            try
            {
                Common.RunSP("[papafuncapp_e2e_check]", emailId);
            }
            catch (Exception ex)
            {
                errorMessage = "SQL Error\n" + ex.Message;
            }
            string responseMessage = Common.GenerateResponseMessage(errorMessage);
            if (!string.IsNullOrEmpty(errorMessage))
            {
                log.LogError(errorMessage);
                return new BadRequestObjectResult(responseMessage);
            }
            return new OkObjectResult(responseMessage);
        }
    }
}
