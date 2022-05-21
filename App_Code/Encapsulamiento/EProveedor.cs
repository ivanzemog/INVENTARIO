using System;
using System.Collections.Generic;
using System.ComponentModel.DataAnnotations;
using System.ComponentModel.DataAnnotations.Schema;
using System.Linq;
using System.Web;

/// <summary>
/// Descripción breve de EProvedor
/// </summary>
[Serializable]
[Table("proveedor", Schema = "inventario")]
public class EProveedor
{
   
        [Key, Column("id")]
        public string Id { get; set; }
        [Column("nombre")]
        public string Nombre { get; set; }
        [Column("cedula")]
        public string Cedula { get; set; }
        [Column("empresa")]
        public string Empresa { get; set; }
        [Column("telefono")]
        public string Telefono { get; set; }


}