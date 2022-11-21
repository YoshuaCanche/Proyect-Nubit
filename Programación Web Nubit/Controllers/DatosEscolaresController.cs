using Microsoft.AspNetCore.Mvc;
using Microsoft.Extensions.Logging;
using Programación_Web_Nubit.Context;
using Programación_Web_Nubit.Models;
using System.Threading.Tasks;

namespace Programación_Web_Nubit.Controllers
{
    public class DatosEscolaresController : Controller
    {
        private readonly ILogger<HomeController> _logger;
        private readonly ApplicationDbContext _context;

        public DatosEscolaresController(ILogger<HomeController> logger, ApplicationDbContext context)
        {
            _logger = logger;
            _context = context;
        }

        public IActionResult D_escolares()
        {
            return View();
        }

        [HttpPost]
        public async Task<ActionResult> CrearDatos_Academicos(Datos_academicos request)
        {
            if (request != null)
            {
                Datos_academicos datos_academicos = new Datos_academicos();

                datos_academicos.nombrescuela = request.nombrescuela;
                datos_academicos.gradoegresado = request.gradoegresado;
                datos_academicos.especialidad = request.especialidad;

                _context.Datos_academicos.Add(datos_academicos);
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