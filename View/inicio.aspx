<%@ Page Title="BODEGA PLUS" Language="C#" MasterPageFile="~/View/MasterPage.master" AutoEventWireup="true" CodeFile="~/Controller/inicio.aspx.cs" Inherits="View_inicio" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
      <img src="/Imagenes/lp.png" />
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
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
        <h2><b>&nbsp;&nbsp; CATALOGO</b></h2>
        <p> &nbsp;&nbsp;&nbsp;&nbsp; <img src="/Imagenes/4.jpg" /></p>
        &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
        <a href="catalogo.aspx">mas</a>
        
    </div>
    <div class="col-md-4">
        <h2><b>&nbsp; PROVEDORES</b></h2>
        <p>
            &nbsp;&nbsp;&nbsp;&nbsp;
            <img src="/Imagenes/5.jpg" />
        </p>
    </div>
    <div class="col-md-4">
        <h2><b>&nbsp; ADMINISTRACION</b></h2>
        <p> &nbsp;&nbsp;&nbsp;&nbsp; <img src="/Imagenes/3.jpg" /></p>
    </div>
</div>

</asp:Content>

