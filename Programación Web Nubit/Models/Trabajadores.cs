using System.ComponentModel.DataAnnotations;
using System.ComponentModel.DataAnnotations.Schema;
namespace Programación_Web_Nubit.Models
{
    public class Trabajadores
    {
        [Key]
        public int PkTrabajador { get; set; }

        [ForeignKey("datos_personales")]
        public int? Fkdatospersonales { get; set; }
        public Datos_personales datos_personales { get; set; }

        [ForeignKey("datos_domicilio")]
        public int? Fkdatosdomicilio { get; set; }
        public Datos_domicilio datos_domicilio { get; set; }

        [ForeignKey("datos_laborales")]
        public int? Fkdatoslaborales { get; set; }
        public Datos_laborales datos_laborales { get; set; }


        [ForeignKey("datos_academicos")]
        public int? FkDatosacademicos { get; set; }
        public Datos_academicos datos_academicos { get; set; }


        [ForeignKey("perfil_de_trabajo")]
        public int? FkPt { get; set; }
        public Perfil_de_trabajo perfil_de_trabajo { get; set; }
    }
}
