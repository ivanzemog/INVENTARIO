using System;
using System.ComponentModel.DataAnnotations;
using System.ComponentModel.DataAnnotations.Schema;

[Serializable]
[Table("producto", Schema = "productos")]
public class EProducto
{
    private int id;
    private string nombre;
    private int cantidad;
    private double precio;
    private string imagen;


    [Key]
    [Column("id")]
    public int Id { get => id; set => id = value; }
    [Column("nombre")]
    public string Nombre { get => nombre; set => nombre = value; }
    [Column("cantidad")]
    public int Cantidad { get => cantidad; set => cantidad = value; }
    [Column("precio")]
    public double Precio { get => precio; set => precio = value; }
    [Column("imagen")]
    public string Imagen { get => imagen; set => imagen = value; }
}
