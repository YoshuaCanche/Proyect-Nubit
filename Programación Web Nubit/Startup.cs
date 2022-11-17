using Microsoft.AspNetCore.Builder;
using Microsoft.AspNetCore.Hosting;
using Microsoft.AspNetCore.HttpsPolicy;
using Microsoft.Extensions.Configuration;
using Microsoft.Extensions.DependencyInjection;
using Microsoft.Extensions.Hosting;
using System;
using Programación_Web_Nubit.Context;
using System.Collections.Generic;
using System.Linq;
using Microsoft.EntityFrameworkCore;
using System.Threading.Tasks;

namespace Programación_Web_Nubit
{
    public class Startup
    {
        public Startup(IConfiguration configuration)
        {
            Configuration = configuration;
        }

        public IConfiguration Configuration { get; }

        // This method gets called by the runtime. Use this method to add services to the container.
        public void ConfigureServices(IServiceCollection services)
        {
            services.AddControllersWithViews();
        }
        //    services.AddDbContext<ApplicationDbContextt>(options => options.UseSqlServer
        //    (Configuration.GetConnectionString("DefaultConnection")));
            
        


        //services.AddControllers();
        //    services.AddDbContext<ApplicationDbContextt>(
        //        options => options.UseSqlServer(Configuration.GetConnectionString("DefaultConnection"),
        //    b => b.MigrationsAssembly("ApplicationDbContextt"))
        //        );
        //    services.AddScoped(typeof(ApplicationDbContextt<>),typeof(<ApplicationDbContextt>));
        //    services.AddSingleton<>();

        //    //services.AddIdentityCore<Empleo>().AddEntityFrameworkStores<ApplicationDbContextt>();
        //    //services.AddControllers();
        // This method gets called by the runtime. Use this method to configure the HTTP request pipeline.
            public void Configure(IApplicationBuilder app, IWebHostEnvironment env)
        {
            if (env.IsDevelopment())
            {
                app.UseDeveloperExceptionPage();
            }
            else
            {
                app.UseExceptionHandler("/Home/Error");
                // The default HSTS value is 30 days. You may want to change this for production scenarios, see https://aka.ms/aspnetcore-hsts.
                app.UseHsts();
            }
            app.UseHttpsRedirection();
            app.UseStaticFiles();

            app.UseRouting();

            app.UseAuthorization();

            app.UseEndpoints(endpoints =>
            {
                endpoints.MapControllerRoute(
                    name: "default",
                    pattern: "{controller=Home}/{action=Index}/{id?}");
            });
        }
    }
}
