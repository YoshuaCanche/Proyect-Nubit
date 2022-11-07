using System.ComponentModel.DataAnnotations.Schema;
using System.ComponentModel.DataAnnotations;

namespace Programación_Web_Nubit.Models
{
    public class Empleo
    {
        [Key]
        public int Pk_empleo { get; set; }

        [ForeignKey("categorias")]
        public int Fkcategoria { get; set; }
        public Categorias categorias { set; get; }

        public string Descripcion { set; get; }
        public string Tipos_de_servicio { set; get; }
        public string Foto_servicio { set; get; }
    }
}
