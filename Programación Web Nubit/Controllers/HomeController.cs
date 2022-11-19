using Microsoft.AspNetCore.Mvc;
using Microsoft.Extensions.Logging;
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

        public HomeController(ILogger<HomeController> logger)
        {
            _logger = logger;
        }

        public IActionResult Index()
        {
            return View();
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
