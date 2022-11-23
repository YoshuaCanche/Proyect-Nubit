using Microsoft.AspNetCore.Mvc;
using Microsoft.Extensions.Logging;
using Programación_Web_Nubit.Context;
using Programación_Web_Nubit.Models;
using System.Threading.Tasks;


namespace Programación_Web_Nubit.Controllers
{
    public class DatosDomicilioController : Controller
    {


        private readonly ApplicationDbContext _context;
        private readonly ILogger<HomeController> _logger;
        public DatosDomicilioController(ILogger<HomeController> logger, ApplicationDbContext context)
        {
            _context = context;
            _logger = logger;
        }

        public IActionResult Crear()
        {
            return View();
        }

        [HttpPost]
        public async Task<IActionResult> CrearDato_domicilio(Datos_domicilio request)
        {
            if (request != null)
            {
                Datos_domicilio datos_domicilio = new Datos_domicilio();

                datos_domicilio.cp = request.cp;
                datos_domicilio.direccion = request.direccion;
                datos_domicilio.referencia = request.referencia;
                _context.Datos_Domicilios.Add(datos_domicilio);
                await _context.SaveChangesAsync();
                return RedirectToAction(nameof(Crear));
            }
            return View();
        }

    }
}
