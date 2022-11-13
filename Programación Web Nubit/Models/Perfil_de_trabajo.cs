using System.ComponentModel.DataAnnotations;

namespace Programación_Web_Nubit.Models
{
    public class Perfil_de_trabajo
    {
        [Key]
        public int PkPt { get; set; }
        public string Usuario { get; set; }
        public string Contraseña { get; set; }
    }
}
