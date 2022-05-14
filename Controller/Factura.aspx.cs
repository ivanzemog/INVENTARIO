using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class View_Factura : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {

    }

    protected void B_Generar_Click(object sender, EventArgs e)
    {
        try
        {
            Reporte inf = llenarReporte();
            CRS_Factura.ReportDocument.SetDataSource(inf);
            CRV_Factura.ReportSource = CRS_Factura;

            CRV_Factura.Visible = true;
        }
        catch (Exception)
        {

            throw;
        }
    }
}

