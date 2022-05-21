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
    public int Id { get => id; set => id = value; }
    [Column("nombre")]
    public string Nombre { get => nombre; set => nombre = value; }
    [Column("descripcion")]
    public string Descripcion { get => descripcion; set => descripcion = value; }
    [Column("precio_venta")]
    public double Precio_venta { get => precio_venta; set => precio_venta = value; }
    [Column("id_proveedor")]
    public string Id_proveedor { get => id_proveedor; set => id_proveedor = value; }
    [NotMapped]
    public EProveedor proveedor { get { return new DAOProveedor().ObtenerProveedor(Id_proveedor); } set { } }
    [Column("fecha_modificacion")]
    public DateTime Fecha_modificacion { get => fecha_modificacion; set => fecha_modificacion = value; }
    [Column("imagen")]
    public string Imagen_uno { get => imagen; set => imagen = value; }
    [NotMapped]
    public int Cantidad_inventario { get => cantidad_inventario; set => cantidad_inventario = value; }
    [NotMapped]
    public int Id_inventario { get; set; }
    [NotMapped]
    public string nombre_proveedor { get; set; }
    [NotMapped]
    public double precio_compra { get; set; }
}
