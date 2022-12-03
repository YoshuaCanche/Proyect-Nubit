using Microsoft.AspNetCore.Mvc;
using Microsoft.Data.SqlClient;
using Microsoft.EntityFrameworkCore;
using Microsoft.Extensions.Logging;
using Programación_Web_Nubit.Context;
using Programación_Web_Nubit.Models;
using System;
using System.Linq;
using System.Threading.Tasks;
using Dapper;
using System.Data;

namespace Programación_Web_Nubit.Controllers
{
    public class InsertServicioController : Controller
    {
        //public IActionResult Index()
        //{
        //    return View();
        //}


        private readonly ILogger<InsertServicioController> _logger;
        private readonly ApplicationDbContext _context;

        public InsertServicioController(ILogger<InsertServicioController> logger, ApplicationDbContext context)
        {
            _logger = logger;
            _context = context;
        }

        SqlConnection conn = new SqlConnection("Data Source=DESKTOP-K8DLS1G;initial catalog=Bd_nubit_web;Integrated Security=True");
        public IActionResult crearservicio()
        {
            return View();
        }

        public IActionResult Spam()
        {
            return View();
        }

        [HttpGet]
        public IActionResult Editar(int? id)
        {
            if (id == null)
            {
                return NotFound();
            }

            var servicio = _context.Empleo.Find(id);
            if (servicio == null)
            {
                return NotFound();
            }

            return View(servicio);
        }
        public IActionResult Eliminar(int? id)
        {
            if (id == null)
            {
                return NotFound();
            }

            var Servicio = _context.Empleo.Find(id);
            if (Servicio == null)
            {
                return NotFound();
            }

            return View(Servicio);
        }

        [HttpPost]
        public async Task<IActionResult> Insertar( Empleo empleo)
        {

            SqlConnection conn = (SqlConnection)_context.Database.GetDbConnection();
            try
            {

                if (ModelState.IsValid)
                {

                    string comando = "select categorias from Empleo where categorias='" + empleo.categorias + "'";
                    SqlCommand busqueda = new SqlCommand(comando, conn);
                    conn.Open();
                    SqlDataReader hacer = busqueda.ExecuteReader();

                    if (hacer.HasRows)
                    {

                        conn.Close();
                        return RedirectToAction(nameof(crearservicio));
                    }
                    else
                    {
                        conn.Close();
                        SqlCommand cmd = conn.CreateCommand();
                        conn.Open();
                        cmd.CommandType = System.Data.CommandType.StoredProcedure;
                        cmd.CommandText = "sp_insert_empleo";
                        cmd.Parameters.Add("@Categoria", System.Data.SqlDbType.VarChar, 100).Value = empleo.categorias;
                        cmd.Parameters.Add("@Descripcion", System.Data.SqlDbType.VarChar, 200).Value = empleo.Descripcion;
                        cmd.Parameters.Add("@rutaimg", System.Data.SqlDbType.VarChar, 300).Value = empleo.Foto_servicio;
                        cmd.ExecuteNonQuery();
                        conn.Close();

                        return RedirectToAction(nameof(crearOfrecimientos));
                    }
                }

                return RedirectToAction(nameof(crearservicio));
            }
            catch (Exception ex)
            {
                throw new Exception(ex.Message);
            }
        }

        [HttpPost]
        public async Task<IActionResult> EditarServicio(Empleo emp)
        {
            try
            {
                await conn.QueryAsync<Empleo>("sp_update_empleo", new
                {
                    emp.categorias,
                    emp.Descripcion,
                    emp.Foto_servicio,
                    emp.Pk_empleo

                }, commandType: CommandType.StoredProcedure);

                return RedirectToAction(nameof(Spam));

            }
            catch (Exception ex)
            {
                throw new Exception("surgio un Problema " + ex.Message);
            }
        }



        public async Task<IActionResult> EliminarServicio(Empleo emp)
        {
            try
            {
                await conn.QueryAsync<Empleo>("sp_delete_empleo", new
                {
                    emp.Pk_empleo

                }, commandType: CommandType.StoredProcedure);

                return RedirectToAction(nameof(Spam));
            }
            catch (Exception ex)
            {
                throw new Exception("surgio un Problema " + ex.Message);
            }
        }

        public IActionResult crearOfrecimientos()
        {
            return View();
        }

        [HttpPost]
        public async Task<IActionResult> AddEjemplos(Serviciosofrecidos svo)
        {
            SqlConnection conn = (SqlConnection)_context.Database.GetDbConnection();
            try
            {
                SqlCommand cmd = conn.CreateCommand();
                conn.Open();
                cmd.CommandType = System.Data.CommandType.StoredProcedure;
                cmd.CommandText = "sp_insertEjemplos";
                cmd.Parameters.Add("@descripcion_ejemplo", System.Data.SqlDbType.VarChar, 100).Value = svo.Descripcion;            
               await cmd.ExecuteNonQueryAsync();
                conn.Close();

                return RedirectToAction(nameof(crearOfrecimientos));
            }
            catch (Exception ex)
            {
                throw new Exception("surgio un error" + ex.Message);
            }
        }
    }
}
