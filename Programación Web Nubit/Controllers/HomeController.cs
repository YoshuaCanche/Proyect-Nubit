//using AspNetCore;
using Dapper;
using Microsoft.AspNetCore.Mvc;
using Microsoft.AspNetCore.Mvc.Rendering;
using Microsoft.Data.SqlClient;
using Microsoft.EntityFrameworkCore;
using Microsoft.Extensions.Logging;
using Programación_Web_Nubit.Context;
using Programación_Web_Nubit.Models;
using System;
using System.Collections.Generic;
using System.Diagnostics;
using System.Linq;
using System.Threading.Tasks;
using System.Data;

namespace Programación_Web_Nubit.Controllers
{
    public class HomeController : Controller
    {
        private readonly ILogger<HomeController> _logger;
        private readonly ApplicationDbContext _context;

        public HomeController(ILogger<HomeController> logger, ApplicationDbContext context)
        {
            _logger = logger;
            _context = context;
        }

        SqlConnection conn = new SqlConnection("Data Source=DESKTOP-LODQ1E6\\SQLEXPRESS;initial catalog=Bd_nubit_web;Integrated Security=True");
        public async Task<IActionResult> Index()
        {
            var response = await _context.Empleo.ToArrayAsync();

            return View(response);
        }

        public IActionResult solicitudempleo()
        {
            return View();
        }

        public IActionResult PerfilTrabajo()
        {
            return View();
        }

        [HttpGet]
        public IActionResult seleccion()
        {
            ViewBag.Empleo = _context.Empleo.Select(p => new SelectListItem()
            {
                Text = p.categorias,
                Value = p.Pk_empleo.ToString()
            });
            return View();
        }

        [HttpPost]
        public async Task<IActionResult> insertempxtraba(Empleo s)
        {
            try
            {
                await conn.QueryAsync<EmpleoXtrabajo>("addFK_empleo", new
                {
                    s.Pk_empleo
                }, commandType: CommandType.StoredProcedure);

                return RedirectToAction(nameof(seleccion));
            }catch(Exception ex)
            {
                throw new Exception("Surgio un Problema: " + ex.Message);
            }
        }

        public IActionResult dashboard()
        {
            return View();
        }

        public IActionResult Nosotros()
        {
            return View();
        }
      

        public IActionResult Felicidades()
        {
            return View();
        }

        public async Task<IActionResult> dashboard_serv()
        {
            var response = await _context.Empleo.ToArrayAsync();
            return View(response);
        }



        public async Task<IActionResult> dashboard_solic()
        {
            var response = await _context.datos_Personales.ToArrayAsync();
            return View(response);
        }

        [ResponseCache(Duration = 0, Location = ResponseCacheLocation.None, NoStore = true)]
        public IActionResult Error()
        {
            return View(new ErrorViewModel { RequestId = Activity.Current?.Id ?? HttpContext.TraceIdentifier });
        }
    }
}
