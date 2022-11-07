using System.ComponentModel.DataAnnotations;

namespace Programación_Web_Nubit.Models
{
    public class Roles
    {
        [Key]
        public int Pkrol { set; get; }
        public string Asignacion { set; get; }
    }
}
