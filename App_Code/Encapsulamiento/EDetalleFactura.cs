using System;
using System.ComponentModel.DataAnnotations;
using System.ComponentModel.DataAnnotations.Schema;

[Serializable]
[Table("detalle_factura", Schema = "administrativo")]
public class EDetalleFactura
{
    private int id;
    private int facturaId;
    private int productoId;
    private double precioCompra;
    private int cantidad;
    private double total;


    private DateTime fechaFactura;
    private double subTotalFactura;
    private double ivaFactura;
    private double totalFactura;
    private string nombreProducto;
    private string imagenProducto;
    private string nombreCliente;


    [Key]
    [Column("id")]
    public int Id { get => id; set => id = value; }
    [Column("factura_id")]
    public int FacturaId { get => facturaId; set => facturaId = value; }
    [Column("producto_id")]
    public int ProductoId { get => productoId; set => productoId = value; }
    [Column("precio_compra")]
    public double PrecioCompra { get => precioCompra; set => precioCompra = value; }
    [Column("cantidad")]
    public int Cantidad { get => cantidad; set => cantidad = value; }
    [Column("total")]
    public double Total { get => total; set => total = value; }


    [NotMapped]
    public DateTime FechaFactura { get => fechaFactura; set => fechaFactura = value; }
    [NotMapped]
    public double SubTotalFactura { get => subTotalFactura; set => subTotalFactura = value; }
    [NotMapped]
    public double IvaFactura { get => ivaFactura; set => ivaFactura = value; }
    [NotMapped]
    public double TotalFactura { get => totalFactura; set => totalFactura = value; }
    [NotMapped]
    public string NombreProducto { get => nombreProducto; set => nombreProducto = value; }
    [NotMapped]
    public string ImagenProducto { get => imagenProducto; set => imagenProducto = value; }
    [NotMapped]
    public string NombreCliente { get => nombreCliente; set => nombreCliente = value; }
}