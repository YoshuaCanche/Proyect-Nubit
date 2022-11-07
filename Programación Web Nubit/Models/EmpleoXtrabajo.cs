using System.ComponentModel.DataAnnotations;
using System.ComponentModel.DataAnnotations.Schema;
namespace Programación_Web_Nubit.Models
{
    public class EmpleoXtrabajo
    {
        [Key]
        public int PkEmpxTra { get; set; }

        [ForeignKey("trabajador")]
        public int Fk_trabajador { get; set; }
        public Trabajadores trabajador { set; get; }

        [ForeignKey("empleo")]
        public int Fk_empleo { get; set; }
        public Empleo empleo { set; get; }
    }
}
