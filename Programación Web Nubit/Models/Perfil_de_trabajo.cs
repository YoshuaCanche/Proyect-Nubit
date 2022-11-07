using System.ComponentModel.DataAnnotations;
using System.ComponentModel.DataAnnotations.Schema;

namespace Programación_Web_Nubit.Models
{
    public class Perfil_de_trabajo
    {
        [Key]
        public int PkPt { get; set; }
        public string Usuario { get; set; }
        public string Contraseña { get; set; }

        [ForeignKey("roles")]
        public int Fk_rol { set; get; }
        public Roles roles { set; get; }
    }
}
