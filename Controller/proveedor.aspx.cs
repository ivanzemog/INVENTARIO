using Npgsql;
using System;
using System.Collections.Generic;
using System.Configuration;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class View_provedor : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {

    }

    protected void Button1_Click(object sender, EventArgs e)
    {
        EProveedor proveedor = new EProveedor();

        proveedor.Id = TB_Cedula.Text;
        proveedor.Nombre = TB_Nombre.Text;
        proveedor.Empresa = TB_Empresa.Text;
        proveedor.Telefono = TB_Telefono.Text;


        new DAOProveedor().insertarProveedor(proveedor);
        GridView1.DataBind();

    }

    protected void GridView1_RowCommand(object sender, GridViewCommandEventArgs e)
    {
            EProveedor Proveedor = new DAOProveedor().ObtenerProveedor(e.CommandArgument.ToString());
           
            new DAOProveedor().actualizarproveedor(Proveedor);
            GridView1.DataBind();
        
    }
    protected void ImageButton1_Click(object sender, ImageClickEventArgs e)
    {
        Response.Redirect("inicio.aspx");
    }
}