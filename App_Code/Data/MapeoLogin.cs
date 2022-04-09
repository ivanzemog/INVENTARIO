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
    public virtual DbSet<EUsuario> Usuarios { get; set; }
}
