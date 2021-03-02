using System;
using AuthUserApp.Areas.Identity.Data;
using AuthUserApp.Data;
using Microsoft.AspNetCore.Hosting;
using Microsoft.AspNetCore.Identity;
using Microsoft.AspNetCore.Identity.UI;
using Microsoft.AspNetCore.Identity.UI.Services;
using Microsoft.EntityFrameworkCore;
using Microsoft.Extensions.Configuration;
using Microsoft.Extensions.DependencyInjection;

[assembly: HostingStartup(typeof(AuthUserApp.Areas.Identity.IdentityHostingStartup))]
namespace AuthUserApp.Areas.Identity
{
    public class IdentityHostingStartup : IHostingStartup
    {
        public void Configure(IWebHostBuilder builder)
        {
            builder.ConfigureServices((context, services) => {
                services.AddDbContext<AuthUserAppContext>(options =>
                    options.UseSqlServer(
                        context.Configuration.GetConnectionString("AuthUserAppContextConnection")));

                services.AddIdentity<AuthUserAppUser, IdentityRole>(options => options.SignIn.RequireConfirmedAccount = true)
                    .AddEntityFrameworkStores<AuthUserAppContext>()
                     .AddDefaultTokenProviders()
    .AddDefaultUI();

                services.AddAuthorization(options =>
                {
                    options.AddPolicy("readonlypolicy",
                        builder => builder.RequireRole("Admin", "Student"));
                    options.AddPolicy("writepolicy",
                        builder => builder.RequireRole("Admin"));

                });


                });

           
        }
    }
}