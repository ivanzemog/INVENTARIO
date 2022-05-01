<%@ Page Title="BODEGA PLUS" Language="C#" MasterPageFile="~/View/MasterPage.master" AutoEventWireup="true" CodeFile="~/Controller/catalogo.aspx.cs" Inherits="View_catalogo" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
    
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <div>

    <h1><center><b>BODEGA PLUS </b> </center></h1>
    <p>
        <center>
            este aplicativo es para el control del inventario y la organizacion de los
            productos de un setablecemiento
        </center>
    </p>
    <p>
        <center>
            <img src="/Imagenes/2.png" />
        </center>
    </p>
</div>
<div class="row">
    <div class="col-md-4">
        <h2><b>CATALOGO</b></h2>
        <p> <img src="/Imagenes/4.jpg" /></p>
        <siteMapNode url="~/ShowRandomProduct.aspx" title="Master Pages and ASP.NET AJAX" />
    </div>
    <div class="col-md-4">
        <h2><b>PROVEDORES</b></h2>
        <p>
            <img src="/Imagenes/5.jpg" />
        </p>
    </div>
    <div class="col-md-4">
        <h2><b>ADMINISTRACION</b></h2>
        <p> <img src="~/imagenes/3.jpg" /></p>
    </div>
</div>

</asp:Content>


