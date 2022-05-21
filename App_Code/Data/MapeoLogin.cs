using System;
using System.Collections.Generic;
using System.Data.Entity;
using System.Linq;
using System.Web;


public class MapeoLogin : DbContext
{
    static MapeoLogin()
    {
        Database.SetInitializer<MapeoLogin>(null);
    }
    private readonly string schema;

   

    public MapeoLogin() 
        :base("name= BD_inventario")
    {
    }
    protected override void OnModelCreating(DbModelBuilder modelBuilder)
    {
        modelBuilder.HasDefaultSchema(this.schema);
        base.OnModelCreating(modelBuilder);
    }
    public virtual DbSet<EUsuario> usuario { get; set; }
    public virtual DbSet<EProducto> producto { get; set; }
    public virtual DbSet<EProveedor> proveedor { get; set; }
    public virtual DbSet<EFactura> factura { get; set; }
    public virtual DbSet<EDetalleFactura> detalleFactura { get; set; }
    public virtual DbSet<EEstadoFactura> estadoFactura { get; set; }

}
