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
    protected void GridView1_RowDataBound(object sender, GridViewRowEventArgs e)
    {
        EProducto producto = (EProducto)e.Row.DataItem;
        if (producto != null)
        {
            if (e.Row.FindControl("LinkButton1") != null)
            {
                ((Label)e.Row.FindControl("Label2")).Text = producto.Fecha_modificacion.ToString("G");
            }
        }
    }

    protected void Button1_Click(object sender, EventArgs e)
    {
        if (ViewState["eleccion"] != null)
        {
            EProducto producto = new EProducto();
            if (ViewState["eleccion"].ToString() == "nuevo")
            {
                producto.Nombre = TB_Nombre.Text;
                producto.Descripcion = TB_Descripcion.Text;
                producto.Precio_venta = int.Parse(TB_Precio_venta.Text);
                producto.Cantidad_inventario = int.Parse(TB_Cantidad.Text);
                producto.Id_proveedor = DropDownList1.SelectedValue;
                producto.precio_compra = double.Parse(TB_Precio_Compra.Text);
                producto.Fecha_modificacion = DateTime.Now;
                string extension = System.IO.Path.GetExtension(FU_Foto.PostedFile.FileName);
                if (extension.Equals(".jpg") || extension.Equals(".jpeg") || extension.Equals(".png"))
                {
                    var guid = Guid.NewGuid();//generar un nombre al azar.
                    producto.Imagen_uno = "~\\Imagenes\\productos\\" + guid + extension;
                    FU_Foto.PostedFile.SaveAs(Server.MapPath("~\\Imagenes\\productos\\") + guid + extension);
                }
                else
                {
                    this.ClientScript.RegisterClientScriptBlock(this.GetType(), "", "<script type='text/javascript'>alert('Imagen de perfil no valida: tipo de archivo erroneo');</script>");
                    return;
                }
                

                if (extension.Equals(".jpg") || extension.Equals(".jpeg") || extension.Equals(".png"))
                {
                    var guid = Guid.NewGuid();//generar un nombre al azar.
                    producto.Imagen_uno = "~\\Imagenes\\productos\\" + guid + extension;
                    FU_Foto.PostedFile.SaveAs(Server.MapPath("~\\Imagenes\\productos\\") + guid + extension);
                }
                else
                {
                    this.ClientScript.RegisterClientScriptBlock(this.GetType(), "", "<script type='text/javascript'>alert('Imagen de perfil no valida: tipo de archivo erroneo');</script>");
                    return;
                }
                
                new DAOProducto().insertarProducto(producto);
                TB_Nombre.Text = "";
                TB_Descripcion.Text = "";
                TB_Precio_venta.Text = "";
                TB_Precio_Compra.Text = "";
                TB_Cantidad.Text = "";
                Response.Redirect("catalogo.aspx");


            }
            else
            {
                producto = new DAOProducto().obtenerProducto(int.Parse(DropDownList2.SelectedValue));
                producto.Cantidad_inventario += int.Parse(TB_Cantidad2.Text);
                producto.Precio_venta = double.Parse(TB_PCmpra2.Text);
                producto.precio_compra = double.Parse(TB_Precio_venta2.Text);
                producto.Fecha_modificacion = DateTime.Now;
                new DAOProducto().actualizar(producto);
            }
            GV_Inventario.DataBind();
            MultiView1.ActiveViewIndex = 0;
        }
        else
        {
            this.ClientScript.RegisterClientScriptBlock(this.GetType(), "", "<script type='text/javascript'>alert('Seleccione si es un nuevo producto o existente');</script>");

        }
    }

    protected void GridView1_RowUpdating(object sender, GridViewUpdateEventArgs e)
    {
        TextBox TBCantidad = (TextBox)GV_Inventario.Rows[e.RowIndex].FindControl("TextBox5");
        e.NewValues[5] = TBCantidad.Text;
        for (int i = 0; i < 3; i++)
        {
            string fileupload = "FU_Imagen" + (i + 1);
            FileUpload FU_Aux = (FileUpload)GV_Inventario.Rows[e.RowIndex].FindControl(fileupload);
            if (FU_Aux.HasFile)
            {
                string extension = System.IO.Path.GetExtension(FU_Aux.PostedFile.FileName);
                if (extension.Equals(".jpg") || extension.Equals(".jpeg") || extension.Equals(".png"))
                {
                    var guid = Guid.NewGuid();
                    e.Keys[(9 + i)] = "~\\Imagenes\\productos\\" + guid + extension;
                    FU_Aux.PostedFile.SaveAs(Server.MapPath("~\\Imagenes\\productos\\") + guid + extension);
                }
                else
                {
                    this.ClientScript.RegisterClientScriptBlock(this.GetType(), "", "<script type='text/javascript'>alert('Imagen uno no valida');</script>");
                    return;
                }
            }
        }
    }
    protected void Button2_Click(object sender, EventArgs e)
    {
        MultiView1.ActiveViewIndex = 1;
        ViewState["eleccion"] = "nuevo";
    }

    protected void Button3_Click(object sender, EventArgs e)
    {
        MultiView1.ActiveViewIndex = 2;
        ViewState["eleccion"] = "existente";
    }

    protected void DropDownList1_SelectedIndexChanged(object sender, EventArgs e)
    {
        Session["id"] = DropDownList1.SelectedValue;
        DropDownList2.DataBind();

    }
}