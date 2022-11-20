using Microsoft.AspNetCore.Mvc;
using Microsoft.Data.SqlClient;
using Microsoft.EntityFrameworkCore;
using Microsoft.Extensions.Logging;
using Programación_Web_Nubit.Context;
using Programación_Web_Nubit.Models;
using System;
using System.Linq;
using System.Threading.Tasks;

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

        public IActionResult crearservicio()
        {
            return View();
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
