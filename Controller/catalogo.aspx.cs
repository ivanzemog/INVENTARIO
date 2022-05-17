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

    protected void ImageButton1_Click(object sender, ImageClickEventArgs e)
    {
        Response.Redirect("inicio.aspx");
    }

    protected void Button1_Click(object sender, EventArgs e)
    {
        NpgsqlConnection conexion = new NpgsqlConnection(ConfigurationManager.ConnectionStrings["postgres"].ConnectionString);
        conexion.Open();
        NpgsqlCommand comand = new NpgsqlCommand("SELECT * FROM inventario.producto", conexion);
        NpgsqlDataAdapter ad = new NpgsqlDataAdapter(comand);
        DataTable dt = new DataTable();
        ad.Fill(dt);
        grilla.DataSource = dt;
        grilla.DataBind();
        conexion.Close();
    }
    protected void Button3_Click(object sender, EventArgs e)
    {
        NpgsqlConnection conexion = new NpgsqlConnection(ConfigurationManager.ConnectionStrings["postgres"].ConnectionString);
        conexion.Open();
        NpgsqlCommand comand = new NpgsqlCommand("INSERT INTO public.crudtb(objeto, descripcion) VALUES ('" + txt_objeto.Text + "','" + txt_decripcion.Text + "')", conexion);
        comand.ExecuteNonQuery();
        conexion.Close();
    }
    protected void Button2_Click(object sender, EventArgs e)
    {
        NpgsqlConnection conection = new NpgsqlConnection(ConfigurationManager.ConnectionStrings["postgres"].ConnectionString);
        conection.Open();
        NpgsqlCommand command = new NpgsqlCommand("UPDATE public.crudtb SET descripcion='" + txt_decripcion.Text + "' WHERE objeto='" + txt_objeto.Text + "'", conection);
        command.ExecuteNonQuery();
        conection.Close();
    }
    protected void Button4_Click(object sender, EventArgs e)
    {
        NpgsqlConnection conection = new NpgsqlConnection(ConfigurationManager.ConnectionStrings["postgres"].ConnectionString);
        conection.Open();
        NpgsqlCommand command = new NpgsqlCommand("DELETE FROM public.crudtb WHERE objeto='" + txt_objeto.Text + "'", conection);
        command.ExecuteNonQuery();
        conection.Close();
    }
}