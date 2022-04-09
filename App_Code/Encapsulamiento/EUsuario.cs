using System;
using System.Collections.Generic;
using System.ComponentModel.DataAnnotations;
using System.ComponentModel.DataAnnotations.Schema;
using System.Linq;
using System.Web;

[Serializable]
[Table("usuario", Schema = "inventario")]
public class EUsuario

{
    [Key,Column("id")]
    public int Id { get; set; }
    [Column("nombre")]
    public string Nombre { get; set; }
    [Column("apellido")]
    public string Apellido { get; set; }
    [Column("cedula")]
    public string Cedula { get; set; }
    [Column("telefono")]
    public string Telefono { get; set; }
    [Column("direccion")]
    public string Direccion { get; set; }
    [Column("clave")]
    public string Clave { get; set; }
    [Column("correo")]
    public string Correo { get; set; }





}