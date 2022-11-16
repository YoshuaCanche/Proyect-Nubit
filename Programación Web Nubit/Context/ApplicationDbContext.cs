using Programación_Web_Nubit.Models;
using Microsoft.EntityFrameworkCore;

namespace Programación_Web_Nubit.Context
{
    public class ApplicationDbContext : DbContext
    {
        //sintaxis para heredar la cadena de conexion
        public ApplicationDbContext(DbContextOptions<ApplicationDbContext> options) : base(options)
        {

        }

        public DbSet<Categorias> categorias { set; get; }
        public DbSet<Datos_academicos> Datos_academicos { set; get; }
        public DbSet<Datos_domicilio> Datos_Domicilios { set; get; }
        public DbSet<Datos_laborales> Datos_laborales { set; get; }
        public DbSet<Datos_personales> datos_Personales { set; get; }
        public DbSet<Empleo> Empleo { set; get; }
        public DbSet<EmpleoXtrabajo> EmpleoXtrabajos { set; get; }
        public DbSet<Perfil_de_trabajo> Perfil_De_Trabajos { set; get; }
        public DbSet<Roles> Roles { set; get; }
        public DbSet<Trabajadores> Trabajadores { set; get; }
        public DbSet<Serviciosofrecidos> Serviciosofrecidos { set; get; }
    }
}
