using System;
using System.ComponentModel.DataAnnotations;
using System.ComponentModel.DataAnnotations.Schema;

[Serializable]
[Table("inventario", Schema = "inventario")]
public class EInventario
{
    
    private int id;
    private int id_producto;
    private double precio_compra;
    private int cantidad;
    private DateTime fecha_modificacion;
    [Key, Column("id")]
    public int Id { get; set; }
    [Column("id_producto")]
    public int Id_producto { get; set; }
    [NotMapped]
    public EProducto Producto { get { return new DAOProducto().obtenerProducto(Id_producto); } set { } }
    [Column("precio_compra")]
    public double Precio_compra { get; set; }
    [Column("cantidad")]
    public int Cantidad { get; set; }
    [Column("fecha_modificacion")]
    public DateTime Fecha_modificacion { get; set; }

}

    
