using Dapper;
using Microsoft.AspNetCore.Mvc;
using Microsoft.AspNetCore.Mvc.Rendering;
using Microsoft.Data.SqlClient;
using Microsoft.Extensions.Logging;
using Programación_Web_Nubit.Context;
using Programación_Web_Nubit.Models;
using System;
using System.Data;
using System.Linq;
using System.Threading.Tasks;

namespace Programación_Web_Nubit.Controllers
{
    public class SolicitudController : Controller
    {
        private readonly ILogger<HomeController> _logger;
        private readonly ApplicationDbContext _context;

        public SolicitudController(ILogger<HomeController> logger, ApplicationDbContext context)
        {
            _logger = logger;
            _context = context;
        }

        SqlConnection conn = new SqlConnection("Data Source=LAPTOP-OH2KCBPB;initial catalog=Bd_nubit_web;Integrated Security=True");

        public IActionResult CrearPersonales()
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
                return RedirectToAction(nameof(CrearDomicilio));
            }
            return View();
        }

        public IActionResult CrearDomicilio()
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
                return RedirectToAction(nameof(CrearAcademicos));
            }
            return View();
        }

        public IActionResult CrearAcademicos()
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
                return RedirectToAction(nameof(CrearLabolares));
            }
            return View();
        }

        public IActionResult CrearLabolares()
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
                return RedirectToAction(nameof(seleccion));
            }
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
            }
            catch (Exception ex)
            {
                throw new Exception("Surgio un Problema: " + ex.Message);
            }
        }

        public IActionResult Felicidades()
        {
            return View();
        }
    }
}
