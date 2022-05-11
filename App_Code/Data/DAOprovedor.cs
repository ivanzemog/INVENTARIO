using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;

/// <summary>
/// Descripción breve de DAOprovedor
/// </summary>
public class DAOprovedor
{
    public void Nuevoprovedor(EProvedor eprovedor)
    {
        using (var db = new MapeoLogin())
        {
            db.provedor.Add(eprovedor);
            db.SaveChanges();
        }
    }
}