using System;
using System.Collections.Generic;
using System.Data.Entity;
using System.Linq;
using System.Web;

/// <summary>
/// Descripción breve de DAOprovedor
/// </summary>
public class DAOprovedor
{
    public void insertarProvedor(EProvedor provedor)
    {
        using (var db = new MapeoLogin())
        {
            db.provedor.Add(provedor);
            db.SaveChanges();
        }
    }
    public List<EProvedor> ObtenerProvedores()
    {
        using (var db = new MapeoLogin())
        {
            return db.provedor.ToList();
        }
    }
    public EProvedor ObtenerProvedor(string id)
    {
        using (var db = new MapeoLogin())
        {
            return db.provedor.Where(x => x.Id.Equals(id)).FirstOrDefault();
        }
    }
    public void actualizarprovedor(EProvedor provedor)
    {
        using (var db = new MapeoLogin())
        {
            db.provedor.Attach(provedor);
            var entry = db.Entry(provedor);
            entry.State = EntityState.Modified;

            db.SaveChanges();
        }
    }
    public void elimnarProvedor(EProvedor provedor)
    {
        using (var db = new MapeoLogin())
        {
            db.provedor.Attach(provedor);
            var entry = db.Entry(provedor);
            entry.State = EntityState.Deleted;
            db.SaveChanges();
        }
    }
}