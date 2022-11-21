using Microsoft.AspNetCore.Mvc;
using Microsoft.Extensions.Logging;
using Programación_Web_Nubit.Context;
using Programación_Web_Nubit.Models;
using System.Threading.Tasks;

namespace Programación_Web_Nubit.Controllers
{
    public class DatosPersonalesController : Controller
    {
        private readonly ILogger<HomeController> _logger;
        private readonly ApplicationDbContext _context;

        public DatosPersonalesController(ILogger<HomeController> logger, ApplicationDbContext context)
        {
            _logger = logger;
            _context = context;
        }

        public IActionResult Index()
        {
            return View();
        }

        [HttpPost]
        public async Task<ActionResult> CrearDatos_Personales(Datos_personales request)
        {
            if (request != null)
            {
                Datos_personales datos_personales = new Datos_personales();

                datos_personales.nombres = request.nombres;
                datos_personales.apellidos = request.apellidos;
                datos_personales.nacionalidad = request.nacionalidad;
                datos_personales.fechadenacimiento = request.fechadenacimiento;
                datos_personales.telefono = request.telefono;

                _context.datos_Personales.Add(datos_personales);
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
