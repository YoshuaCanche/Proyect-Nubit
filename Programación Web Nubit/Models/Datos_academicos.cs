using System.ComponentModel.DataAnnotations;
using System.ComponentModel.DataAnnotations.Schema;
namespace Programación_Web_Nubit.Models
{
    public class Datos_academicos
    {
        [Key]
        public int PkDatosacademicos { get; set; }
        public string nombrescuela { get; set; }
        public string gradoegresado { get; set; }
        public string especialidad { get; set; }

    }
}
