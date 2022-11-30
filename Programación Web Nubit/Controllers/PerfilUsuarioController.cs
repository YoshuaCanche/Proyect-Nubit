using Microsoft.AspNetCore.Mvc;
using Microsoft.Data.SqlClient;
using Microsoft.EntityFrameworkCore;
using Microsoft.Extensions.Logging;
using Programación_Web_Nubit.Context;
using Programación_Web_Nubit.Models;
using System;
using System.Data;
using System.Threading.Tasks;
using Dapper;

namespace Programación_Web_Nubit.Controllers
{
    public class PerfilUsuarioController : Controller
    {
        private readonly ILogger<PerfilUsuarioController> _logger;
        private readonly ApplicationDbContext _context;

        public PerfilUsuarioController(ILogger<PerfilUsuarioController> logger, ApplicationDbContext context)
        {
            _logger = logger;
            _context = context;
        }
        SqlConnection connection = new SqlConnection("Data Source=LAPTOP-OH2KCBPB; Initial Catalog=Bd_nubit_web; Integrated Security=True;");
        [HttpGet]
        public async Task<IActionResult> Index()
        {
            var Perfil = await _context.Trabajadores.Include(z => z.datos_personales).Include(z => z.datos_laborales).Include(z => z.datos_academicos).Include(z => z.datos_domicilio).Include(z => z.perfil_de_trabajo).ToListAsync();

            return View(Perfil);
        }
        [HttpGet]
        public IActionResult EditarDatosPersonales(int? id)
        {
            if (id == null)
            {
                return NotFound();
            }
            var datos = _context.datos_Personales.Find(id);
            if (datos == null)
            {
                return NotFound();
            }

            return View(datos);
        }
        [HttpPost]
        public async Task<IActionResult> EditarDatosPersonales(Datos_personales response)
        {
            try
            {
                await connection.QueryAsync<Datos_personales>("spUpdateDatosPersonales",
                    new
                    {
                        response.Pkdatospersonales,
                        response.nombres,
                        response.apellidos,
                        response.nacionalidad,
                        response.fechadenacimiento,
                        response.telefono
                    },
                    commandType: CommandType.StoredProcedure);
                return RedirectToAction(nameof(Index));
            }
            catch (Exception ex)
            {
                throw new System.Exception("Surgio un error" + ex.Message);
            }
        }
        [HttpGet]
        public IActionResult EditarDatosDomicilio(int? id)
        {
            if (id == null)
            {
                return NotFound();
            }
            var datos = _context.Datos_Domicilios.Find(id);
            if (datos == null)
            {
                return NotFound();
            }

            return View(datos);
        }
        [HttpPost]
        public async Task<IActionResult> EditarDatosDomicilio(Datos_domicilio response)
        {
            try
            {
                await connection.QueryAsync<Datos_domicilio>("spUpdateDatosDomicilio",
                    new
                    {
                        response.Pkdatosdomicilio,
                        response.direccion,
                        response.cp,
                        response.referencia

                    },
                    commandType: CommandType.StoredProcedure);
                return RedirectToAction(nameof(Index));
            }
            catch (Exception ex)
            {
                throw new System.Exception("Surgio un error" + ex.Message);
            }
        }
        [HttpGet]
        public IActionResult EditarDatosAcademicos(int? id)
        {
            if (id == null)
            {
                return NotFound();
            }
            var datos = _context.Datos_academicos.Find(id);
            if (datos == null)
            {
                return NotFound();
            }

            return View(datos);
        }
        [HttpPost]
        public async Task<IActionResult> EditarDatosAcademicos(Datos_academicos response)
        {
            try
            {
                await connection.QueryAsync<Datos_academicos>("spUpdateDatosAcademicos",
                    new
                    {
                        response.PkDatosacademicos,
                        response.nombrescuela,
                        response.gradoegresado,
                        response.especialidad

                    },



                    commandType: CommandType.StoredProcedure);
                return RedirectToAction(nameof(Index));
            }
            catch (Exception ex)
            {
                throw new System.Exception("Surgio un error" + ex.Message);
            }
        }
        [HttpGet]
        public IActionResult EditarDatosLaborales(int? id)
        {
            if (id == null)
            {
                return NotFound();
            }
            var datos = _context.Datos_laborales.Find(id);
            if (datos == null)
            {
                return NotFound();
            }

            return View(datos);
        }

        [HttpPost]
        public async Task<IActionResult> EditarDatosLaborales(Datos_laborales response)
        {
            try
            {
                await connection.QueryAsync<Datos_laborales>("spUpdateDatosLaborales",
                    new
                    {
                        response.Pkdatoslaborales,
                        response.Nombrempresa,
                        response.lugartrabajo,
                        response.puestoempeñado,
                        response.tiempoprestado


                    },
                    commandType: CommandType.StoredProcedure);
                return RedirectToAction(nameof(Index));
            }
            catch (Exception ex)
            {
                throw new System.Exception("Surgio un error" + ex.Message);
            }
        }
    }




}
