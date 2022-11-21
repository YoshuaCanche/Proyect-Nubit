using Microsoft.AspNetCore.Mvc;
using Microsoft.Extensions.Logging;
using Programación_Web_Nubit.Context;
using Programación_Web_Nubit.Models;
using System.Threading.Tasks;

namespace Programación_Web_Nubit.Controllers
{
	public class DatosLaboralesController : Controller
	{
        
        private readonly ApplicationDbContext _context;
        private readonly ILogger<HomeController> _logger;
        public DatosLaboralesController(ILogger<HomeController> logger, ApplicationDbContext context)
        {           
            _context = context;
            _logger = logger;
        }

        public IActionResult Crear()
        {
            return View();
        }

        [HttpPost]
        public async Task<IActionResult> CrearDato_laboral(Datos_laborales request)
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

    }
}
