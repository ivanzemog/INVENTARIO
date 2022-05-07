using System;
using System.ComponentModel.DataAnnotations;
using System.ComponentModel.DataAnnotations.Schema;

[Serializable]
[Table("factura", Schema = "administrativo")]
public class EFactura
{
    private int id;
    private int clienteId;
    private DateTime fecha;
    private Double subTotal;
    private double iva;
    private double total;
    private int estadoId;

    [Key]
    [Column("id")]
    public int Id { get => id; set => id = value; }
    [Column("cliente_id")]
    public int ClienteId { get => clienteId; set => clienteId = value; }
    [Column("fecha")]
    public DateTime Fecha { get => fecha; set => fecha = value; }
    [Column("sub_total")]
    public double SubTotal { get => subTotal; set => subTotal = value; }
    [Column("iva")]
    public double Iva { get => iva; set => iva = value; }
    [Column("total")]
    public double Total { get => total; set => total = value; }
    [Column("estado_id")]
    public int EstadoId { get => estadoId; set => estadoId = value; }
}