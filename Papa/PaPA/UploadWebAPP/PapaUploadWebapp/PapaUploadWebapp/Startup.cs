using Microsoft.AspNetCore.Authentication;
using Microsoft.AspNetCore.Authentication.AzureAD.UI;
using Microsoft.AspNetCore.Authentication.OpenIdConnect;
using Microsoft.AspNetCore.Builder;
using Microsoft.AspNetCore.Hosting;
using Microsoft.AspNetCore.Http.Features;
using Microsoft.AspNetCore.HttpOverrides;
using Microsoft.AspNetCore.HttpsPolicy;
using Microsoft.AspNetCore.Server.Kestrel.Core;
using Microsoft.AspNetCore.SpaServices.AngularCli;
using Microsoft.Extensions.Configuration;
using Microsoft.Extensions.DependencyInjection;
using Microsoft.Extensions.Hosting;
using Microsoft.Extensions.Logging;
using System;
using System.Threading.Tasks;

namespace PapaUploadWebapp
{
    public class Startup
    {
        readonly string MyAllowSpecificOrigins = "_myAllowSpecificOrigins";
        public Startup(IConfiguration configuration)
        {
            Configuration = configuration;
        }

        public IConfiguration Configuration { get; }

        // This method gets called by the runtime. Use this method to add services to the container.
        public void ConfigureServices(IServiceCollection services)
        {
            const int maxRequestLimit = 209715200;
            // The following line enables Application Insights telemetry collection.
            services.AddApplicationInsightsTelemetry();
            services.Configure<ForwardedHeadersOptions>(options =>
            {
                options.ForwardedHeaders = ForwardedHeaders.XForwardedFor | ForwardedHeaders.XForwardedProto |
                ForwardedHeaders.XForwardedHost | ForwardedHeaders.XForwardedHost;

                options.ForwardedHostHeaderName = "X-Original-Host";

                options.KnownNetworks.Clear(); //its loopback by default
                options.KnownProxies.Clear();
            });
            // If using IIS
            services.Configure<IISServerOptions>(options =>
            {
                options.MaxRequestBodySize = maxRequestLimit;
            });
            // If using Kestrel
            services.Configure<KestrelServerOptions>(options =>
            {
                options.Limits.MaxRequestBodySize = maxRequestLimit;
            });
            services.Configure<FormOptions>(x =>
            {
                x.ValueLengthLimit = maxRequestLimit;
                x.MultipartBodyLengthLimit = maxRequestLimit;
                x.MultipartHeadersLengthLimit = maxRequestLimit;
            });
            services.AddCors(options =>
            {
                options.AddPolicy(name: MyAllowSpecificOrigins,
                                  builder =>
                                  {
                                      builder.WithOrigins("http://localhost:4200")
                                      .AllowAnyHeader()
                                      .AllowAnyMethod();
                                  });
            });
            services.AddControllersWithViews();
            services.AddAuthentication(AzureADDefaults.AuthenticationScheme)
                .AddAzureAD(options => {
                    Configuration.Bind("AzureAd", options);
                    if (Configuration.GetSection("ClientID").Exists())
                    {
                        options.ClientId = Configuration.GetSection("ClientID").Value;
                    }
                    if (Configuration.GetSection("TenantID").Exists())
                    {
                        options.TenantId = Configuration.GetSection("TenantID").Value;
                    }
                });
            
            services.Configure<OpenIdConnectOptions>(AzureADDefaults.OpenIdScheme, options =>
            {
                options.Authority = options.Authority + "/v2.0/";
                options.TokenValidationParameters.ValidateIssuer = false;
                options.Events = new OpenIdConnectEvents()
                {
                    OnMessageReceived = async context =>
                    {
                        if (!string.IsNullOrEmpty(context.ProtocolMessage.Error) &&
                            !string.IsNullOrEmpty(context.ProtocolMessage.ErrorDescription) &&
                            !string.IsNullOrEmpty(context.ProtocolMessage.ErrorUri))
                        {
                            context.Response.Redirect(context.ProtocolMessage.ErrorUri);
                            context.HandleResponse();
                        }
                        await Task.Yield();
                    }
                };
            });
            // In production, the Angular files will be served from this directory
            services.AddSpaStaticFiles(configuration =>
            {
                configuration.RootPath = "ClientApp/dist";
            });

        }

        // This method gets called by the runtime. Use this method to configure the HTTP request pipeline.
        public void Configure(IApplicationBuilder app, IWebHostEnvironment env, ILoggerFactory loggerFactory)
        {
            loggerFactory.AddFile("Logs/myapp-{Date}.txt");
            if (env.IsDevelopment())
            {
                app.UseDeveloperExceptionPage();
            }
            else
            {
                app.UsePathBase(Configuration.GetSection("SubApplicationPath").Value);
                app.Use((context, next) =>
                {
                    context.Request.PathBase = Configuration.GetSection("SubApplicationPath").Value;
                    return next();
                });
                app.UseExceptionHandler("/Error");
                app.UseForwardedHeaders();
                // The default HSTS value is 30 days. You may want to change this for production scenarios, see https://aka.ms/aspnetcore-hsts.
                // app.UseHsts();
            }

            app.UseHttpsRedirection();
            app.UseStaticFiles();
            if (!env.IsDevelopment())
            {
                app.UseSpaStaticFiles();
            }

            app.UseRouting();
            app.UseAuthentication();
            app.UseAuthorization();
            if (env.IsDevelopment())
            {
                app.UseCors(MyAllowSpecificOrigins);
            }
            app.UseEndpoints(endpoints =>
            {
                endpoints.MapControllerRoute(
                    name: "default",
                    pattern: "{controller}/{action=Index}/{id?}");
            });

            app.UseSpa(spa =>
            {
                // To learn more about options for serving an Angular SPA from ASP.NET Core,
                // see https://go.microsoft.com/fwlink/?linkid=864501

                spa.Options.SourcePath = "ClientApp";

                if (env.IsDevelopment())
                {
                    spa.Options.StartupTimeout = new TimeSpan(0, 5, 80);
                    spa.UseAngularCliServer(npmScript: "start");
                }
            });
        }
    }
}
