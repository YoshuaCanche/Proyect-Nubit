using Microsoft.EntityFrameworkCore.Migrations;

namespace Programación_Web_Nubit.Migrations
{
    public partial class Nubitpro : Migration
    {
        protected override void Up(MigrationBuilder migrationBuilder)
        {
            migrationBuilder.CreateTable(
                name: "Datos_academicos",
                columns: table => new
                {
                    PkDatosacademicos = table.Column<int>(type: "int", nullable: false)
                        .Annotation("SqlServer:Identity", "1, 1"),
                    nombrescuela = table.Column<string>(type: "nvarchar(max)", nullable: true),
                    gradoegresado = table.Column<string>(type: "nvarchar(max)", nullable: true),
                    especialidad = table.Column<string>(type: "nvarchar(max)", nullable: true)
                },
                constraints: table =>
                {
                    table.PrimaryKey("PK_Datos_academicos", x => x.PkDatosacademicos);
                });

            migrationBuilder.CreateTable(
                name: "Datos_Domicilios",
                columns: table => new
                {
                    Pkdatosdomicilio = table.Column<int>(type: "int", nullable: false)
                        .Annotation("SqlServer:Identity", "1, 1"),
                    direccion = table.Column<string>(type: "nvarchar(max)", nullable: true),
                    cp = table.Column<string>(type: "nvarchar(max)", nullable: true),
                    referencia = table.Column<string>(type: "nvarchar(max)", nullable: true)
                },
                constraints: table =>
                {
                    table.PrimaryKey("PK_Datos_Domicilios", x => x.Pkdatosdomicilio);
                });

            migrationBuilder.CreateTable(
                name: "Datos_laborales",
                columns: table => new
                {
                    Pkdatoslaborales = table.Column<int>(type: "int", nullable: false)
                        .Annotation("SqlServer:Identity", "1, 1"),
                    Nombrempresa = table.Column<string>(type: "nvarchar(max)", nullable: true),
                    lugartrabajo = table.Column<string>(type: "nvarchar(max)", nullable: true),
                    puestoempeñado = table.Column<string>(type: "nvarchar(max)", nullable: true),
                    tiempoprestado = table.Column<string>(type: "nvarchar(max)", nullable: true)
                },
                constraints: table =>
                {
                    table.PrimaryKey("PK_Datos_laborales", x => x.Pkdatoslaborales);
                });

            migrationBuilder.CreateTable(
                name: "datos_Personales",
                columns: table => new
                {
                    Pkdatospersonales = table.Column<int>(type: "int", nullable: false)
                        .Annotation("SqlServer:Identity", "1, 1"),
                    nombres = table.Column<string>(type: "nvarchar(max)", nullable: true),
                    apellidos = table.Column<string>(type: "nvarchar(max)", nullable: true),
                    nacionalidad = table.Column<string>(type: "nvarchar(max)", nullable: true),
                    fechadenacimiento = table.Column<string>(type: "nvarchar(max)", nullable: true),
                    telefono = table.Column<string>(type: "nvarchar(max)", nullable: true)
                },
                constraints: table =>
                {
                    table.PrimaryKey("PK_datos_Personales", x => x.Pkdatospersonales);
                });

            migrationBuilder.CreateTable(
                name: "Empleo",
                columns: table => new
                {
                    Pk_empleo = table.Column<int>(type: "int", nullable: false)
                        .Annotation("SqlServer:Identity", "1, 1"),
                    categorias = table.Column<string>(type: "nvarchar(max)", nullable: true),
                    Descripcion = table.Column<string>(type: "nvarchar(max)", nullable: true),
                    Foto_servicio = table.Column<string>(type: "nvarchar(max)", nullable: true)
                },
                constraints: table =>
                {
                    table.PrimaryKey("PK_Empleo", x => x.Pk_empleo);
                });

            migrationBuilder.CreateTable(
                name: "Roles",
                columns: table => new
                {
                    Pkrol = table.Column<int>(type: "int", nullable: false)
                        .Annotation("SqlServer:Identity", "1, 1"),
                    Asignacion = table.Column<string>(type: "nvarchar(max)", nullable: true)
                },
                constraints: table =>
                {
                    table.PrimaryKey("PK_Roles", x => x.Pkrol);
                });

            migrationBuilder.CreateTable(
                name: "Serviciosofrecidos",
                columns: table => new
                {
                    Pkserofre = table.Column<int>(type: "int", nullable: false)
                        .Annotation("SqlServer:Identity", "1, 1"),
                    Fk_empleo = table.Column<int>(type: "int", nullable: false),
                    Descripcion = table.Column<string>(type: "nvarchar(max)", nullable: true)
                },
                constraints: table =>
                {
                    table.PrimaryKey("PK_Serviciosofrecidos", x => x.Pkserofre);
                    table.ForeignKey(
                        name: "FK_Serviciosofrecidos_Empleo_Fk_empleo",
                        column: x => x.Fk_empleo,
                        principalTable: "Empleo",
                        principalColumn: "Pk_empleo",
                        onDelete: ReferentialAction.Cascade);
                });

            migrationBuilder.CreateTable(
                name: "Perfil_De_Trabajos",
                columns: table => new
                {
                    PkPt = table.Column<int>(type: "int", nullable: false)
                        .Annotation("SqlServer:Identity", "1, 1"),
                    Usuario = table.Column<string>(type: "nvarchar(max)", nullable: true),
                    Contraseña = table.Column<string>(type: "nvarchar(max)", nullable: true),
                    Fk_rol = table.Column<int>(type: "int", nullable: false)
                },
                constraints: table =>
                {
                    table.PrimaryKey("PK_Perfil_De_Trabajos", x => x.PkPt);
                    table.ForeignKey(
                        name: "FK_Perfil_De_Trabajos_Roles_Fk_rol",
                        column: x => x.Fk_rol,
                        principalTable: "Roles",
                        principalColumn: "Pkrol",
                        onDelete: ReferentialAction.Cascade);
                });

            migrationBuilder.CreateTable(
                name: "Trabajadores",
                columns: table => new
                {
                    PkTrabajador = table.Column<int>(type: "int", nullable: false)
                        .Annotation("SqlServer:Identity", "1, 1"),
                    Fkdatospersonales = table.Column<int>(type: "int", nullable: true),
                    Fkdatosdomicilio = table.Column<int>(type: "int", nullable: true),
                    Fkdatoslaborales = table.Column<int>(type: "int", nullable: true),
                    FkDatosacademicos = table.Column<int>(type: "int", nullable: true),
                    FkPt = table.Column<int>(type: "int", nullable: true)
                },
                constraints: table =>
                {
                    table.PrimaryKey("PK_Trabajadores", x => x.PkTrabajador);
                    table.ForeignKey(
                        name: "FK_Trabajadores_Datos_academicos_FkDatosacademicos",
                        column: x => x.FkDatosacademicos,
                        principalTable: "Datos_academicos",
                        principalColumn: "PkDatosacademicos",
                        onDelete: ReferentialAction.Restrict);
                    table.ForeignKey(
                        name: "FK_Trabajadores_Datos_Domicilios_Fkdatosdomicilio",
                        column: x => x.Fkdatosdomicilio,
                        principalTable: "Datos_Domicilios",
                        principalColumn: "Pkdatosdomicilio",
                        onDelete: ReferentialAction.Restrict);
                    table.ForeignKey(
                        name: "FK_Trabajadores_Datos_laborales_Fkdatoslaborales",
                        column: x => x.Fkdatoslaborales,
                        principalTable: "Datos_laborales",
                        principalColumn: "Pkdatoslaborales",
                        onDelete: ReferentialAction.Restrict);
                    table.ForeignKey(
                        name: "FK_Trabajadores_datos_Personales_Fkdatospersonales",
                        column: x => x.Fkdatospersonales,
                        principalTable: "datos_Personales",
                        principalColumn: "Pkdatospersonales",
                        onDelete: ReferentialAction.Restrict);
                    table.ForeignKey(
                        name: "FK_Trabajadores_Perfil_De_Trabajos_FkPt",
                        column: x => x.FkPt,
                        principalTable: "Perfil_De_Trabajos",
                        principalColumn: "PkPt",
                        onDelete: ReferentialAction.Restrict);
                });

            migrationBuilder.CreateTable(
                name: "EmpleoXtrabajos",
                columns: table => new
                {
                    PkEmpxTra = table.Column<int>(type: "int", nullable: false)
                        .Annotation("SqlServer:Identity", "1, 1"),
                    Fk_trabajador = table.Column<int>(type: "int", nullable: false),
                    Fk_empleo = table.Column<int>(type: "int", nullable: false)
                },
                constraints: table =>
                {
                    table.PrimaryKey("PK_EmpleoXtrabajos", x => x.PkEmpxTra);
                    table.ForeignKey(
                        name: "FK_EmpleoXtrabajos_Empleo_Fk_empleo",
                        column: x => x.Fk_empleo,
                        principalTable: "Empleo",
                        principalColumn: "Pk_empleo",
                        onDelete: ReferentialAction.Cascade);
                    table.ForeignKey(
                        name: "FK_EmpleoXtrabajos_Trabajadores_Fk_trabajador",
                        column: x => x.Fk_trabajador,
                        principalTable: "Trabajadores",
                        principalColumn: "PkTrabajador",
                        onDelete: ReferentialAction.Cascade);
                });

            migrationBuilder.CreateIndex(
                name: "IX_EmpleoXtrabajos_Fk_empleo",
                table: "EmpleoXtrabajos",
                column: "Fk_empleo");

            migrationBuilder.CreateIndex(
                name: "IX_EmpleoXtrabajos_Fk_trabajador",
                table: "EmpleoXtrabajos",
                column: "Fk_trabajador");

            migrationBuilder.CreateIndex(
                name: "IX_Perfil_De_Trabajos_Fk_rol",
                table: "Perfil_De_Trabajos",
                column: "Fk_rol");

            migrationBuilder.CreateIndex(
                name: "IX_Serviciosofrecidos_Fk_empleo",
                table: "Serviciosofrecidos",
                column: "Fk_empleo");

            migrationBuilder.CreateIndex(
                name: "IX_Trabajadores_FkDatosacademicos",
                table: "Trabajadores",
                column: "FkDatosacademicos");

            migrationBuilder.CreateIndex(
                name: "IX_Trabajadores_Fkdatosdomicilio",
                table: "Trabajadores",
                column: "Fkdatosdomicilio");

            migrationBuilder.CreateIndex(
                name: "IX_Trabajadores_Fkdatoslaborales",
                table: "Trabajadores",
                column: "Fkdatoslaborales");

            migrationBuilder.CreateIndex(
                name: "IX_Trabajadores_Fkdatospersonales",
                table: "Trabajadores",
                column: "Fkdatospersonales");

            migrationBuilder.CreateIndex(
                name: "IX_Trabajadores_FkPt",
                table: "Trabajadores",
                column: "FkPt");
        }

        protected override void Down(MigrationBuilder migrationBuilder)
        {
            migrationBuilder.DropTable(
                name: "EmpleoXtrabajos");

            migrationBuilder.DropTable(
                name: "Serviciosofrecidos");

            migrationBuilder.DropTable(
                name: "Trabajadores");

            migrationBuilder.DropTable(
                name: "Empleo");

            migrationBuilder.DropTable(
                name: "Datos_academicos");

            migrationBuilder.DropTable(
                name: "Datos_Domicilios");

            migrationBuilder.DropTable(
                name: "Datos_laborales");

            migrationBuilder.DropTable(
                name: "datos_Personales");

            migrationBuilder.DropTable(
                name: "Perfil_De_Trabajos");

            migrationBuilder.DropTable(
                name: "Roles");
        }
    }
}
