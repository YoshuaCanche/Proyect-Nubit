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
                    if (response.roles.Asignacion == "Admin")
                    {
                        return Json(new { Success = true, admin = true });
                    }
                    return Json(new { Success = true, admin = false });
                }
                else
                {
                    return Json(new { Succes = false, admin = false });
                }

            }
            catch (Exception ex)
            {
                throw new Exception("surgio un error" + ex.Message);
            }
        }
    }
}
