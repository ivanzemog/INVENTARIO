using System;
using System.ComponentModel.DataAnnotations;
using System.ComponentModel.DataAnnotations.Schema;

[Serializable]
[Table("producto", Schema = "inventario")]
public class EProducto
{
    private int id;
    private string nombre;
    private string descripcion;
    private string imagen;
    private double precio_venta;
    private string id_proveedor;
    private DateTime fecha_modificacion;
    private int cantidad_inventario;
    [Key, Column("id")]
    public int Id { get; set; }
    [Column("nombre")]
    public string Nombre { get; set; }
    [Column("descripcion")]
    public string Descripcion { get; set; }
    [Column("precio_venta")]
    public double Precio_venta { get; set; }
    [Column("id_proveedor")]
    public string Id_proveedor { get; set; }
    [NotMapped]
    public EProveedor proveedor { get { return new DAOProveedor().ObtenerProveedor(Id_proveedor); } set { } }
    [Column("fecha_modificacion")]
    public DateTime Fecha_modificacion { get; set; }
    [Column("imagen")]
    public string Imagen_uno { get; set; }
    [NotMapped]
    public int Cantidad_inventario { get; set; }
    [NotMapped]
    public int Id_inventario { get; set; }
    [NotMapped]
    public string nombre_proveedor { get; set; }
    [NotMapped]
    public double precio_compra { get; set; }
}
