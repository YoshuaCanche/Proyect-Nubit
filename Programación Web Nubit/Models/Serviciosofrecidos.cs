using System.ComponentModel.DataAnnotations;
using System.ComponentModel.DataAnnotations.Schema;
namespace Programación_Web_Nubit.Models
{
    public class Serviciosofrecidos
    {
        [Key]
        public int Pkserofre { get; set; }
       


        [ForeignKey("serviciosofrecidos")]
        public int Fk_empleo { set; get; }
        public Empleo serviciosofrecidos { set; get; }
        public string Descripcion { get; set; }
    }
}
