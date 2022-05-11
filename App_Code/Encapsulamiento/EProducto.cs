using System;
using System.ComponentModel.DataAnnotations;
using System.ComponentModel.DataAnnotations.Schema;

[Serializable]
[Table("producto", Schema = "inventario")]
public class EProducto
{
    public int id;
    public string nombre;
    public int cantidad;
    public string precio;
    public string imagen;


    [Key]
    [Column("id")]
    public int Id { get => id; set => id = value; }
    [Column("nombre")]
    public string Nombre { get => nombre; set => nombre = value; }
    [Column("cantidad")]
    public int Cantidad { get => cantidad; set => cantidad = value; }
    [Column("precio")]
    public string Precio { get => precio; set => precio = value; }
    [Column("imagen")]
    public string Imagen { get => imagen; set => imagen = value; }
}
