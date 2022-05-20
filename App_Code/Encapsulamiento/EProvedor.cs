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
[Table("provedor", Schema = "inventario")]
public class EProvedor
{

    private string id;
    private string nombre;
    private string empresa;
    private string telefono;
  
    [Key, Column("id")]
    public string Id { get => id; set => id = value; }
    [Column("nombre")]
    public string Nombre { get => nombre; set => nombre = value; }
    [Column("empresa")]
    public string Empresa { get => empresa; set => empresa = value; }
   
    [Column("telefono")]
    public string Telefono { get => telefono; set => telefono = value; }


}