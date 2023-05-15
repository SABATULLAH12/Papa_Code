using Microsoft.AspNetCore.Authorization;
using Microsoft.AspNetCore.Mvc;
using Microsoft.Extensions.Logging;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Threading.Tasks;
using Newtonsoft.Json;
using System.Net.Http;
using System.Net.Http.Headers;
using System.Net.Http.Formatting;
using System.Security.Cryptography.Xml;
using Microsoft.Extensions.Configuration;
using System.Security.Claims;
using System.Text;
using System.Net;
using System.Text.RegularExpressions;

namespace PapaUploadWebapp.Controllers
{
    [Authorize]
    [ApiController]
    [Route("[controller]")]
    public class UploadController : ControllerBase
    {

        private readonly ILogger<UploadController> _logger;
        private readonly string _apiURL;
        private readonly string _apiKey;
        public UploadController(ILogger<UploadController> logger, IConfiguration iConfig)
        {

            _logger = logger;
            _apiURL = iConfig.GetSection("ApiHostName").Value+"/"+ iConfig.GetSection("FunctionAppName").Value + "/";
            _apiKey = iConfig.GetSection("ApiKey").Value;
        }

        [HttpPost]
        public async Task<UploadResponse> PostAsync(UploadRequest uploadReq)
        {
            UploadResponse uploadResponse = new UploadResponse();
            HttpResponseMessage apiResponse = new HttpResponseMessage();
            HttpClient client = new HttpClient();
            try
            {
                var identity = User.Identity as ClaimsIdentity;
                UserDetails userDetails = new UserDetails()
                {
                    Name = identity.Claims.FirstOrDefault(c => c.Type == "name")?.Value,
                    EmailId = identity.Claims.FirstOrDefault(c => c.Type == "preferred_username")?.Value
                };
                _logger.LogInformation($"operation {uploadReq.command} requested by {userDetails.EmailId}");
                client.DefaultRequestHeaders.Accept.Add(new MediaTypeWithQualityHeaderValue("plain/text"));

                string operation = Regex.Replace(uploadReq.command, @"[^0-9a-zA-Z_]+", "");
                if (string.IsNullOrEmpty(operation)) {
                    uploadResponse.Summary = "Operation is invalid";
                    uploadResponse.IsSuccess = false;
                }
                else if (string.IsNullOrEmpty(uploadReq.data))
                {
                    uploadResponse.Summary = "Data cannot be Empty";
                    uploadResponse.IsSuccess = false;
                }
                else
                {
                    byte[] data = Convert.FromBase64String(uploadReq.data);
                    string decodedString = Encoding.UTF8.GetString(data);
                    var httpContent = new StringContent(decodedString, Encoding.UTF8, "plain/text");
                    httpContent.Headers.Add("Ocp-Apim-Subscription-Key", _apiKey);
                    httpContent.Headers.Add("Ocp-Apim-Trace", "true");
                    httpContent.Headers.Add("EmailID", userDetails.EmailId);
                    apiResponse = await client.PostAsync(_apiURL + operation, httpContent);
                    uploadResponse.Summary = apiResponse.Content.ReadAsStringAsync().Result;
                    uploadResponse.IsSuccess = apiResponse.IsSuccessStatusCode;
                }
            }
            catch(Exception ex)
            {
                uploadResponse.Summary = "failed, unable to complete this operation.please retry, Contact support if issue persist.";
                uploadResponse.IsSuccess = false;
                _logger.LogError(ex.Message,ex);
            }
            finally
            {
                // Dispose once all HttpClient calls are complete.
                client.Dispose();
                _logger.LogInformation("request completed", apiResponse, uploadResponse);
            }
            return uploadResponse;
        }
    }
}
