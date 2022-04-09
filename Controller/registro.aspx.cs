using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class View_registro : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {

    }

    protected void BTN_Registrar_Click(object sender, EventArgs e)
    {

        EUsuario eUsuario = new EUsuario();

        eUsuario.Cedula = Cedula.Value.Trim();
        eUsuario.Correo = correo.Value.Trim();
        if ((new DAOUsuario().cedulaRegistrada(eUsuario)) || new DAOUsuario().correoRegistrado(eUsuario))
        {
            this.ClientScript.RegisterClientScriptBlock(this.GetType(), "", "<script type='text/javascript'>alert('Los datos ya existe');</script>");

        }
        else
        {
            eUsuario.Nombre = nombre.Value.Trim();
            eUsuario.Apellido = apellido.Value.Trim();
            eUsuario.Direccion = Direccion.Value.Trim();
            eUsuario.Telefono = Telefono.Value.Trim();
            eUsuario.Clave = clave.Value.Trim();

            new DAOUsuario().nuevoUsuario(eUsuario);
            this.ClientScript.RegisterClientScriptBlock(this.GetType(), "", "<script type='text/javascript'>alert('Usuario registrado con exito.');window.location.href=\"Login.aspx\";</script>");

        }
    }
}