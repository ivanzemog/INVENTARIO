using System;
using System.Collections.Generic;
using System.Data;
using System.IO;
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

    protected Reporte llenarReporte()
    {

        Reporte reporte = new Reporte();

        DataRow fila;
        DataTable informacion = reporte.Factura;

        List<EDetalleFactura> detalle = new DAOAdministrativo().obtenerFactura(int.Parse(TB_Factura.Text));

        foreach (var item in detalle)
        {
            fila = informacion.NewRow();

            fila["No"] = item.FacturaId;
            fila["NombreCliente"] = item.NombreCliente;
            fila["Fecha"] = item.FechaFactura;
            fila["SubTotal"] = item.SubTotalFactura;
            fila["Total"] = item.TotalFactura;
            fila["Iva"] = item.IvaFactura;
            fila["NombreProducto"] = item.NombreProducto;
            fila["ImagenProducto"] = streamFile(item.ImagenProducto);
            fila["Cantidad"] = item.Cantidad;
            fila["PrecioCompra"] = item.PrecioCompra;
            fila["TotalProducto"] = item.Total;

            informacion.Rows.Add(fila);
        }
        return reporte; nameof
    }

    private byte[] streamFile(string filename)
    {
        FileStream fs;
        if (!filename.Equals(""))
        {
            fs = new FileStream(Server.MapPath(filename), FileMode.Open, FileAccess.Read);
        }
        else
        {
            fs = new FileStream(Server.MapPath("~/Imagenes/Proyetcos.jpg"), FileMode.Open, FileAccess.Read);
        }

        // Create a byte array of file stream length
        byte[] ImageData = new byte[fs.Length];

        //Read block of bytes from stream into the byte array
        fs.Read(ImageData, 0, System.Convert.ToInt32(fs.Length));

        //Close the File Stream
        fs.Close();
        return ImageData; //return the byte data
    }


}
