using System;
using System.Collections.Generic;
using System.Data.Entity;
using System.Linq;
using System.Web;

/// <summary>
/// Descripción breve de DAOProducto
/// </summary>
public class DAOProducto
{
    public void InsertarProducto(EProducto producto)
    {
        using (var db = new MapeoLogin())
        {
            db.producto.Add(producto);
            db.SaveChanges();
        }
    }


    public List<EProducto> ObtenerProductos()
    {
        using (var db = new MapeoLogin())
        {
            return db.producto.OrderBy(x => x.Nombre).ToList();

        }

    }

   /*public void ModificarCantidad(int productoid, int cantidad)
    {
        using (var db = new MapeoLogin())
        {
            EProducto producto = db.producto.First(x => x.id == productoid);

            producto.Cantidad = producto.Cantidad - cantidad;

            db.producto.Attach(producto);
            var entry = db.Entry(producto);
            entry.State = EntityState.Modified;
            db.SaveChanges();

        }

    }*/
}