using System.ComponentModel.DataAnnotations;
using System.ComponentModel.DataAnnotations.Schema;
namespace Programación_Web_Nubit.Models
{
    public class Serviciosofrecidos
    {
        [Key]
        public int Pkserofre { get; set; }
        public string Descripcion { get; set; }


        [ForeignKey("serviciosofrecidos")]
        public int Fk_empleado { set; get; }
        public Empleo serviciosofrecidos { set; get; }
    }
}
