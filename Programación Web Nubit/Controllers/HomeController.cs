using Microsoft.AspNetCore.Mvc;
using Microsoft.EntityFrameworkCore;
using Microsoft.Extensions.Logging;
using Programación_Web_Nubit.Context;
using Programación_Web_Nubit.Models;
using System;
using System.Collections.Generic;
using System.Diagnostics;
using System.Linq;
using System.Threading.Tasks;

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

        public IActionResult seleccion()
        {
            return View();
        }

        public IActionResult dashboard()
        {
            return View();
        }

        public IActionResult Nosotros()
        {
            return View();
        }

        public IActionResult D_personales()
        {
            return View();
        }

        public IActionResult D_domicilio()
        {
            return View();
        }

        public IActionResult D_escolares()
        {
            return View();
        }

        public IActionResult D_laborales()
        {
            return View();
        }

        public IActionResult Felicidades()
        {
            return View();
        }

        public IActionResult dashboard_serv()
        {
            return View();
        }

        public IActionResult dashboard_solic()
        {
            return View();
        }

        [ResponseCache(Duration = 0, Location = ResponseCacheLocation.None, NoStore = true)]
        public IActionResult Error()
        {
            return View(new ErrorViewModel { RequestId = Activity.Current?.Id ?? HttpContext.TraceIdentifier });
        }
    }
}
