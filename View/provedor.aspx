<%@ Page Title="BODEGA PLUS" Language="C#" MasterPageFile="~/View/MasterPage.master" AutoEventWireup="true" CodeFile="~/Controller/provedor.aspx.cs" Inherits="View_provedor" %>


<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
    <meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
    <title></title>
    <link href="../App_Themes/webSalud/bootstrap-icons.css" rel="stylesheet" type="text/css" />
    <link href="../App_Themes/webSalud/bootstrap.min.css" rel="stylesheet" type="text/css" />
    <link href="../App_Themes/webSalud/Estilosmaster.css" rel="stylesheet" type="text/css" />
    <link href="../App_Themes/webSalud/owl.carousel.min.css" rel="stylesheet" type="text/css" />
    <link href="../App_Themes/webSalud/owl.theme.default.min.css" rel="stylesheet" type="text/css" />
    <link href="../App_Themes/webSalud/owl.theme.default.min.css" rel="stylesheet" type="text/css" />
    <link href="../App_Themes/webSalud/templatemo-medic-care.css" rel="stylesheet" type="text/css" />
<style type="text/css">
    .auto-style1 {
        display: block;
        width: 100%;
        font-size: 1rem;
        font-weight: 400;
        line-height: 1.5;
        color: #212529;
        background-clip: padding-box;
        -webkit-appearance: none;
        -moz-appearance: none;
        appearance: none;
        border-radius: .25rem;
        transition: none;
        height: 55px;
        border: 1px solid #ced4da;
        background-color: #fff;
    }
    .auto-style5 {
        display: block;
        width: 100%;
        font-size: 1rem;
        font-weight: 400;
        line-height: 1.5;
        color: #212529;
        background-clip: padding-box;
        -webkit-appearance: none;
        -moz-appearance: none;
        appearance: none;
        border-radius: .25rem;
        transition: none;
        height: 40px;
        border: 1px solid #ced4da;
        background-color: #fff;
    }
    .auto-style6 {
        display: block;
        width: 100%;
        font-size: 1rem;
        font-weight: 400;
        line-height: 1.5;
        color: #212529;
        background-clip: padding-box;
        -webkit-appearance: none;
        -moz-appearance: none;
        appearance: none;
        border-radius: .25rem;
        transition: none;
        height: 44px;
        border: 1px solid #ced4da;
        background-color: #fff;
    }
</style>
</asp:Content>

<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
 <asp:ImageButton id="imagebutton" runat="server" ImageUrl="/Imagenes/EM.gif" OnClick="ImageButton1_Click" Height="116px" Width="150px"/>
  <section class="section-padding" id="booking">
   <div class="container">
    <div class="row">
     <div class="col-lg-8 col-12 mx-auto">
      <div class="booking-form">
       <h2 class="text-center mb-lg-3 mb-2">Registra los datos</h2>
        <div class="row">
         
         <div class="col-lg-6">
          <input class="auto-style6" id="nombre" type="text" placeholder="Enter your first name" runat="server" />
          <label for="inputFirstName">Nombre</label>
          <asp:RequiredFieldValidator ID="RequiredFieldValidator5" runat="server" ControlToValidate="nombre" ErrorMessage="*" ForeColor="Red" ValidationGroup="RF_Validar"></asp:RequiredFieldValidator>
          </div>
         <div class="col-lg-6">
          <input class="auto-style5" id="cedula" type="text" placeholder="Enter your first name" runat="server" />
          <label for="inputFirstName">Cedula</label>
          <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ControlToValidate="cedula" ErrorMessage="*" ForeColor="Red" ValidationGroup="RF_Validar"></asp:RequiredFieldValidator>                             
          </div>
         <div class="col-lg-6">       
          <input class="auto-style1" id="empresa" type="text" placeholder="Enter your first name" runat="server" />
          <label for="inputFirstName">Empresa</label>
          <asp:RequiredFieldValidator ID="RequiredFieldValidator3" runat="server" ControlToValidate="empresa" ErrorMessage="*" ForeColor="Red" ValidationGroup="RF_Validar"></asp:RequiredFieldValidator>
          </div>
         <div class="col-lg-6">
          <asp:Button ID="Button1" runat="server" Text="registar" OnClick="Registrarse" class="btn btn-primary btn-block" ValidationGroup="RF_Validar" />
          <p>
          </p>
          </div>  
          </div>
         <div class="row">
          <div class="col-lg-6">
           <asp:GridView ID="gvprovedor" runat="server">
           </asp:GridView>
       </div>
      </div>
     </div>
    </div>
   </div>
  </div>
 </section>
</asp:Content>