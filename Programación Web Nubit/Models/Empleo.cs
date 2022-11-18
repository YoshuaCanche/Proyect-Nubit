using System.ComponentModel.DataAnnotations.Schema;
using System.ComponentModel.DataAnnotations;

namespace Programación_Web_Nubit.Models
{
    public class Empleo
    {
        [Key]
        public int Pk_empleo { get; set; }      
        public string categorias { set; get; }
        public string Descripcion { set; get; }
        public string Foto_servicio { set; get; }
    }
}
