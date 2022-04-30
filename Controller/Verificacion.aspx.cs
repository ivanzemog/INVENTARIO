using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class View_Verificacion : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {

    }

    protected void confirmar_ServerClick(object sender, EventArgs e)
    {
        if (I_Codigo.Value.Trim().Equals(Session["numero"].ToString())){
            Session["numero"] = 0;
            Response.Redirect("inicio.aspx");
        }
        else
        {
            this.ClientScript.RegisterClientScriptBlock(this.GetType(), "", "<script type='text/javascript'>alert('codigo erroneo');</script>");
        }
    }

    protected void nuevoCod_ServerClick(object sender, EventArgs e)
    {
        Session["numero"] = new Random().Next(1000, 9999);
        new Correos().enviarCorreoValidacion(((EUsuario)Session["user"]).Correo, int.Parse(Session["numero"].ToString()));
        this.ClientScript.RegisterClientScriptBlock(this.GetType(), "", "<script type='text/javascript'>alert('Su codigo ha sido generado nuevamente\\nRevise su correo');</script>");
    }
}