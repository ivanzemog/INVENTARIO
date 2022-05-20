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
        EProvedor provedor = new EProvedor();

        provedor.Id = TB_Cedula.Text;
        provedor.Nombre = TB_Nombre.Text;
        provedor.Empresa = TB_Empresa.Text;
        provedor.Telefono = TB_Telefono.Text;
    

        new DAOprovedor().insertarProvedor(provedor);
        GridView1.DataBind();

    }

    protected void GridView1_RowCommand(object sender, GridViewCommandEventArgs e)
    {
            EProvedor provedor = new DAOprovedor().ObtenerProvedor(e.CommandArgument.ToString());
            new DAOprovedor().actualizarprovedor(provedor);
            GridView1.DataBind();

    }
    protected void ImageButton1_Click(object sender, ImageClickEventArgs e)
    {
        Response.Redirect("inicio.aspx");
    }

  
}