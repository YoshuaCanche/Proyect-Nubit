using System.ComponentModel.DataAnnotations;
using System.ComponentModel.DataAnnotations.Schema;
namespace Programación_Web_Nubit.Models
{
    public class Datos_laborales
    {
        [Key]
        public int Pkdatoslaborales { get; set; }
        public string Nombrempresa { get; set; }
        public string lugartrabajo { get; set; }

        public string puestoempeñado { get; set; }
        public string tiempoprestado { get; set; }
    }
}
