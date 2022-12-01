using Microsoft.AspNetCore.Http;
using Microsoft.AspNetCore.Mvc;
using Microsoft.EntityFrameworkCore;
using Programación_Web_Nubit.Context;
using System;
using System.Linq;
namespace Programación_Web_Nubit.Controllers
{
    public class LoginController : Controller
    {
        private readonly ApplicationDbContext _context;
        public LoginController(ApplicationDbContext context)
        {
            _context = context;
        }
        public IActionResult Index()
        {
            return View();
        }


        [HttpPost]
        public JsonResult LoginUser(string user, string password)
        {
            try
            {
                var response = _context.Perfil_De_Trabajos.Include(z => z.roles).FirstOrDefault(x => x.Usuario == user && x.Contraseña == password);
                //var userrol = _context.roles.FirstOrDefault( => x.PkRol == response.FkRol);
                if (response != null)
                {
                    HttpContext.Session.SetString("PerfilPkPt", response.PkPt.ToString());
                    //["sessionString"] = response.PkPt;
                    if (response.roles.Asignacion == "Admin")
                    {
                        return Json(new { Success = true, admin = true, Perfil_De_Trabajos = response.PkPt });
                    }
                    return Json(new { Success = true, admin = false, Perfil_De_Trabajos = response.PkPt });
                }
                else
                {
                    HttpContext.Session.SetString("PerfilPkPt", "");
                    return Json(new { Succes = false, admin = false, Perfil_De_Trabajos = 0 });

                }

            }
            catch (Exception ex)
            {
                throw new Exception("surgio un error" + ex.Message);
            }
        }
    }
}
