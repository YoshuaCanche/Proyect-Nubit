using System.ComponentModel.DataAnnotations;
using System.ComponentModel.DataAnnotations.Schema;
namespace Programación_Web_Nubit.Models
{
    public class Datos_personales
    {
        [Key]
        public int Pkdatospersonales { get; set; }
        public string nombres { get; set; }
        public string apellidos { get; set; }
        public string nacionalidad { get; set; }
         
        public string fechadenacimiento { get; set; }

        public string telefono { get; set; }
    }
}
