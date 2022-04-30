using System;


public partial class View_Login : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {

    }
    protected void login_ServerClick(object sender, EventArgs e)
    {
        EUsuario eAdmin = new EUsuario();

        eAdmin.Correo= Username.Value.Trim();
        eAdmin.Clave = Password.Value.Trim();

        eAdmin = new DAOUsuario().inicioSesion(eAdmin);

        if (eAdmin == null)
        {
            error.Attributes.Add("class", "alert alert-danger d-block");
            return;
        }
        else
        {
            error.Attributes.Add("class", "d-none");
            Session["user"] = eAdmin;
            Session["numero"] = new Random().Next(1000, 9999);
            new Correos().enviarCorreoValidacion(eAdmin.Correo, int.Parse(Session["numero"].ToString()));
            Response.Redirect("Verificacion.aspx");


        }
    }

}