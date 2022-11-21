using Microsoft.AspNetCore.Mvc;
using Microsoft.Extensions.Logging;
using Programación_Web_Nubit.Context;
using Programación_Web_Nubit.Models;
using System.Threading.Tasks;

namespace Programación_Web_Nubit.Controllers
{
    public class Datos_laboralescontroller : Controller
    {

        private readonly ILogger<HomeController> _logger;
        private readonly ApplicationDbContext _context;

        public Datos_laboralescontroller(ILogger<HomeController> logger, ApplicationDbContext context)
        {
            _logger = logger;
            _context = context;
        }

        public IActionResult Index()
        {
            return View();
        }

        [HttpPost]
        public async Task<ActionResult> CrearDatos_laborales(Datos_laborales request)
        {
            if (request != null)
            {
                Datos_laborales datos_laborales = new Datos_laborales();

               datos_laborales.Nombrempresa = request.Nombrempresa;
                datos_laborales.lugartrabajo = request.lugartrabajo;
                datos_laborales.puestoempeñado = request.puestoempeñado;
                datos_laborales.tiempoprestado = request.tiempoprestado;

               _context.Datos_laborales.Add(datos_laborales);
                await _context.SaveChangesAsync();
                return RedirectToAction(nameof(Crear));
            }
            return View();
        }

        [HttpGet]
        public IActionResult Crear()
        {
            return View();
        }
        public IActionResult Privacy()
        {
            return View();
        }
        
    }
}
