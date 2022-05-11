 <%@ Page Title="BODEGA PLUS" Language="C#" MasterPageFile="~/View/MasterPage.master" AutoEventWireup="true" CodeFile="~/Controller/inicio.aspx.cs" Inherits="View_inicio" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <center><img src="/Imagenes/lp.png" /></center>

<div class="row">
    <div class="col-md-4">
        <h2><b>&nbsp;&nbsp; CATALOGO</b></h2>
        <p> &nbsp;&nbsp;&nbsp;&nbsp;<asp:ImageButton id="imagebutton3" runat="server" ImageUrl="/Imagenes/4.jpg" OnClick="ImageButton3_Click"/>
        &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;

        
    </div>
    <div class="col-md-4">
        <h2><b>&nbsp; PROVEDORES</b></h2>
        <p>
            &nbsp;&nbsp;&nbsp;&nbsp;
            <asp:ImageButton id="imagebutton2" runat="server" ImageUrl="/Imagenes/5.jpg" OnClick="ImageButton2_Click"/>
        </p>
    </div>
    <div class="col-md-4">
        <h2><b>&nbsp; ADMINISTRACION</b></h2>
        <p> &nbsp;&nbsp;&nbsp;&nbsp;<asp:ImageButton id="imagebutton1" runat="server" ImageUrl="/Imagenes/3.jpg" OnClick="ImageButton1_Click"/>
        </p>
    </div>
</div>

</asp:Content>

