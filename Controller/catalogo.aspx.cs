using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class View_catalogo : Page
{
    protected void Page_Load(object sender, EventArgs e)
    {

    }

    protected void Registrarproducto(object sender, EventArgs e)
    {
        EProducto producto = new EProducto();
        producto.Nombre = nombre.Value.Trim();
        producto.Precio = precio.Value.Trim();


         new DAOProducto().InsertarProducto(producto);
    }

    protected void ImageButton1_Click(object sender, ImageClickEventArgs e)
    {
        Response.Redirect("inicio.aspx");
    }
}