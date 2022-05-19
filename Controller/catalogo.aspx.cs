using Npgsql;
using System;
using System.Collections.Generic;
using System.Configuration;
using System.Data;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class View_catalogo : Page
{
    protected void Page_Load(object sender, EventArgs e)
    {

    }

    protected void ImageButton1_Click(object sender, ImageClickEventArgs e)
    {
        Response.Redirect("inicio.aspx");
    }

    protected void Button1_Click(object sender, EventArgs e)
    {
;
        new DAOProducto().ObtenerProductos();        

    }
    protected void Button2_Click(object sender, EventArgs e)
    {
        EProducto producto = new EProducto();
        producto.Nombre = nombrep.Text;
        producto.Precio = preciop.Text;
        producto.Cantidad = cantidadp.Text;
        producto.Imagen = imagenp.Text;
        List<EProducto> catalogo = new List<EProducto>();
        catalogo.Add(producto);
        this.gvproducto.DataSource = catalogo;
        this.gvproducto.DataBind();
        new DAOProducto().InsertarProducto(producto);
    }

    protected void ObjectDataSource1_Selecting(object sender, ObjectDataSourceSelectingEventArgs e)
    {


    }
}