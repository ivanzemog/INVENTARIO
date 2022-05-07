using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class View_Productos : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {

    }

    protected void B_Guardar_Click(object sender, EventArgs e)
    {

        ClientScriptManager cm = this.ClientScript;

        EProducto producto = new EProducto();
        producto.Nombre = TB_Nombre.Text;
        producto.Precio = double.Parse(TB_Precio.Text);
        producto.Cantidad = int.Parse(TB_Cantidad.Text);
        object FU_Producto = null;
        producto.Imagen = "~\\Imagenes\\" + System.IO.Path.GetFileName(FU_Producto.PostedFile.FileName);

        try
        {
            FU_Producto.PostedFile.SaveAs(Server.MapPath("~\\Imagenes\\") + System.IO.Path.GetFileName(FU_Producto.PostedFile.FileName));
            cm.RegisterClientScriptBlock(this.GetType(), "", "<script type='text/javascript'>alert('El archivo ha sido cargado');</script>");
        }
        catch (Exception exc)
        {
            cm.RegisterClientScriptBlock(this.GetType(), "", "<script type='text/javascript'>alert('Error: ');</script>");
            return;
        }

        new DAOProducto().InsertarProducto(producto);
        Response.Redirect("ingresoProducto.aspx");
    }

    protected void B_Catalogo_Click(object sender, EventArgs e)
    {
        Response.Redirect("Catalogo.aspx");
    }
}