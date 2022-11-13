using System.ComponentModel.DataAnnotations;

namespace Programación_Web_Nubit.Models
{
    public class Categorias
    {
        [Key]
        public int PkCategoria { get; set; }
        public string Nombre { get; set; }
    }
}
