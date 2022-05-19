using System;
using System.ComponentModel.DataAnnotations;
using System.ComponentModel.DataAnnotations.Schema;

[Serializable]
[Table("producto", Schema = "inventario")]
public class EProducto
{
    public int id;
    public string nombrep;
    public string cantidadp;
    public string preciop;
    public string imagenp;


    [Key]
    [Column("id")]
    public int Id { get => id; set => id = value; }
    [Column("nombre")]
    public string Nombre { get => nombrep; set => nombrep = value; }
    [Column("cantidad")]
    public string Cantidad { get => cantidadp; set => cantidadp = value; }
    [Column("precio")]
    public string Precio { get => preciop; set => preciop = value; }
    [Column("imagen")]
    public string Imagen { get => imagenp; set => imagenp = value; }
}
