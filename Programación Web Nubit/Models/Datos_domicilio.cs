using System.ComponentModel.DataAnnotations;
using System.ComponentModel.DataAnnotations.Schema;
namespace Programación_Web_Nubit.Models
{
    public class Datos_domicilio
    {
        [Key]
        public int Pkdatosdomicilio { get; set; }
        public string direccion { get; set; }
        public string cp { get; set; }
        public string referencia { get; set; }
    }
}
