using System.ComponentModel.DataAnnotations;
using System.ComponentModel.DataAnnotations.Schema;
namespace Programación_Web_Nubit.Models
{
    public class Perfil_de_trabajo
    {
        [Key]
        public int id_PT { get; set; }
        public string Usuario { get; set; }

        public string Contraseña { get; set; }
    }
}
