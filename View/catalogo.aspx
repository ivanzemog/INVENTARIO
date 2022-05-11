﻿<%@ Page Title="BODEGA PLUS" Language="C#" MasterPageFile="~/View/MasterPage.master" AutoEventWireup="true" CodeFile="~/Controller/catalogo.aspx.cs" Inherits="View_catalogo" %>



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
</asp:Content>


<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
           <section class="section-padding" id="booking">
                <div class="container">
                    <div class="row">
                    
                        <div class="col-lg-8 col-12 mx-auto">
                            <div class="booking-form">
                                 <p></p>
                                 <p></p>
                                <h2 class="text-center mb-lg-3 mb-2">Registra los datos</h2>
                                    <div class="row">

                                         <div class="col-lg-6 col-12">
                                            <asp:TextBox  class="form-control" ID="id" runat="server" placeholder="CODIGO"  ></asp:TextBox>
                                            
                                        </div>

                                        <div class="col-lg-6 col-12">
                                            <input class="form-control" id="nombre" type="text" placeholder="Enter your first name" runat="server" />
                                             <label for="inputFirstName">Nombre</label>
                                            <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ControlToValidate="nombre" ErrorMessage="*" ForeColor="Red" ValidationGroup="RF_Validar"></asp:RequiredFieldValidator>
                                       
                                        </div>

                                        <div class="col-lg-6 col-12">
                                            <asp:TextBox  class="form-control" ID="cantidad" runat="server" placeholder="Cantidad"  ></asp:TextBox>
                                        </div>
                                        <div class="col-lg-6 col-12">
                                            <input class="form-control" id="precio" type="text" placeholder="Enter your first name" runat="server" />
                                             <label for="inputFirstName">Precio</label>
                                            <asp:RequiredFieldValidator ID="RequiredFieldValidator3" runat="server" ControlToValidate="precio" ErrorMessage="*" ForeColor="Red" ValidationGroup="RF_Validar"></asp:RequiredFieldValidator>
                                       
                                        </div>


                                       
                                        <div class="col-lg-6 col-12">
                                             <div class="col-lg-3 col-md-4 col-6 mx-auto">
                                          <div class="d-grid">
                                            <asp:Button ID="Button1" runat="server" Text="registar" OnClick="Registrarproducto" class="btn btn-primary btn-block" ValidationGroup="RF_Validar" />
                                        </div>  
                                      </div>
                                            
                                        </div>
   
                                    </div>

                            </div>
                        </div>

                    </div>
                </div>
            </section>
</asp:Content>


