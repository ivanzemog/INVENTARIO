using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class View_provedor : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {

    }

    protected void Registrarse(object sender, EventArgs e)
    {
        EProvedor eprovedor = new EProvedor();
        eprovedor.Nombre = nombre.Value.Trim();
        eprovedor.Cedula = cedula.Value.Trim();
        eprovedor.Empresa = empresa.Value.Trim();
        

        new DAOprovedor().Nuevoprovedor(eprovedor);
    }
}