using System.Linq;
using System.Security.Claims;
using Microsoft.AspNetCore.Mvc;
using Microsoft.AspNetCore.Authorization;
using System;
using Microsoft.AspNetCore.Authentication;
using Microsoft.Extensions.Configuration;
using Microsoft.Extensions.Logging;
using Newtonsoft.Json;
using Microsoft.AspNetCore.Authentication.AzureAD.UI;

namespace PapaUploadWebapp.Controllers
{
    public class AccountController : Controller
    {
        private readonly bool _IsSSO;
        private readonly string _returnURl;
        private readonly ILogger<AccountController> _logger;
        public AccountController(IConfiguration iConfig, ILogger<AccountController> logger)
        {
            _logger = logger;
            _IsSSO = Convert.ToBoolean(iConfig.GetSection("IsSSO").Value);
            _returnURl = iConfig.GetSection("SubApplicationPath").Value + "/";
        }
        [AllowAnonymous]
        public IActionResult ClearCookie()
        {
            foreach (var cookie in Request.Cookies.Keys)
            {
                Response.Cookies.Delete(cookie);
            }
            return RedirectToAction("SignIn", "Account");
        }
        [AllowAnonymous]
        public IActionResult LogOut()
        {
            var identity = User.Identity as ClaimsIdentity;
            var callbackUrl = Url.Action("ClearCookie", "Account", values: null, protocol: Request.Scheme);
            UserDetails userDetails = new UserDetails()
            {
                Name = identity.Claims.FirstOrDefault(c => c.Type == "name")?.Value,
                EmailId = identity.Claims.FirstOrDefault(c => c.Type == "preferred_username")?.Value
            };
            return SignOut(new AuthenticationProperties { RedirectUri = callbackUrl }, AzureADDefaults.OpenIdScheme);
        }
        [AllowAnonymous]
        public bool IsAuthenticated()
        {
            var identity = User.Identity as ClaimsIdentity;
            bool isAuthenticated = _IsSSO ? identity.IsAuthenticated : true;
            if (!isAuthenticated)
            {
                Response.StatusCode = 401;
            }
            return isAuthenticated;
        }
        [Authorize]
        public IActionResult SignIn()
        {
            var identity = User.Identity as ClaimsIdentity;
            UserDetails userDetails = new UserDetails()
            {
                Name = identity.Claims.FirstOrDefault(c => c.Type == "name")?.Value,
                EmailId = identity.Claims.FirstOrDefault(c => c.Type == "preferred_username")?.Value
            };
            _logger.LogInformation("{0} Logged In", userDetails.EmailId);
            return Redirect(_returnURl);
        }
        [Authorize]
        public UserDetails GetUserDetails()
        {
            var identity = User.Identity as ClaimsIdentity;
            UserDetails userDetails = new UserDetails()
            {
                Name = identity.Claims.FirstOrDefault(c => c.Type == "name")?.Value
            };
            return userDetails;
        }
    }
}
