using System;
using System.Collections.Generic;
using System.Data;
using System.Linq;
using System.Web;

/// <summary>
/// Descripción breve de DAOprovedor
/// </summary>
public class DAOProveedor
{
    public List<EProveedor> ObtenerProveedores()
    {
        using (var db = new MapeoLogin())
        {
            return db.proveedor.ToList();
        }
    }
    public EProveedor ObtenerProveedor(string id)
    {
        using (var db = new MapeoLogin())
        {
            return db.proveedor.Where(x => x.Id.Equals(id)).FirstOrDefault();
        }
    }
    public void actualizarproveedor(EProveedor proveedor)
    {
        using (var db = new MapeoLogin())
        {
            db.proveedor.Attach(proveedor);
            var entry = db.Entry(proveedor);
            entry.State = (System.Data.Entity.EntityState)EntityState.Modified;

            db.SaveChanges();
        }
    }
    public void elimnarProveedor(EProveedor proveedor)
    {
        using (var db = new MapeoLogin())
        {
            db.proveedor.Attach(proveedor);
            var entry = db.Entry(proveedor);
            entry.State = (System.Data.Entity.EntityState)EntityState.Deleted;
            db.SaveChanges();
        }
    }
    public void insertarProveedor(EProveedor proveedor)
    {
        using (var db = new MapeoLogin())
        {
            db.proveedor.Add(proveedor);
            db.SaveChanges();
        }
    }
    public List<EProveedor> obtenerProvedoresDDL()
    {
        using (var db = new MapeoLogin())
        {
            List<EProveedor> lista = db.proveedor.ToList();
            EProveedor cat_cero = new EProveedor();
            cat_cero.Id = "0";
            cat_cero.Nombre = "--> Seleccione una categoria <--";
            lista.Add(cat_cero);
            return lista.OrderBy(x => x.Nombre).ToList();
        }
    }
}