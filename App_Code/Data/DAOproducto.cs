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
        using (var db = new Mapeo())
        {
            db.producto.Add(producto);
            db.SaveChanges();
        }
    }


    public List<EProducto> ObtenerProductos()
    {
        using (var db = new Mapeo())
        {
            return db.producto.OrderBy(x => x.Nombre).ToList();

        }

    }

    public void ModificarCantidad(int productoId, int cantidad)
    {
        using (var db = new Mapeo())
        {
            EProducto producto = db.producto.First(x => x.Id == productoId);

            producto.Cantidad = producto.Cantidad - cantidad;

            db.producto.Attach(producto);
            var entry = db.Entry(producto);
            entry.State = EntityState.Modified;
            db.SaveChanges();

        }

    }
}