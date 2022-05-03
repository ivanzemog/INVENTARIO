<%@ Page Title="" Language="C#" MasterPageFile="~/View/MasterPage.master" AutoEventWireup="true" CodeFile="~/Controller/Login.aspx.cs" Inherits="View_Login" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
    <style type="text/css">
        .auto-style1 {
            width: 254px;
            height: 143px;
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <div id="layoutAuthentication">
            <div id="layoutAuthentication_content">
                <main>
                    <div class="container">
                        <div class="row justify-content-center">
                            <div class="col-lg-5">
                                <div class="card shadow-lg border-0 rounded-lg mt-5">
                                    <div class="card-header"><h3 class="text-center font-weight-light my-4">
                                        <img alt="" class="auto-style1" src="../Imagenes/lp.png" /></h3>
                                        <h3 class="text-center font-weight-light my-4">Inicio Sesión</h3></div>
                                    <div class="card-body">
                                        
                                            <div class ="d-none" runat="server" id="error" role="alert">
                                                error
                                            </div>
                                            <div class="form-floating mb-3">
                                                <input class="form-control" id="Username" type="email" placeholder="name@example.com" runat ="server" />
                                                <label for="inputEmail">Correo</label>
                                            </div>
                                            <div class="form-floating mb-3">
                                                <input class="form-control" id="Password" type="password" placeholder="Password" runat ="server" />
                                                <label for="inputPassword">Clave</label>
                                            </div>
                                            <div class="form-check mb-3">
                                                
                                            </div>
                                            <div class="d-flex align-items-center justify-content-between mt-4 mb-0">
                                                <a class="small" href="recuperarcontraseña.aspx">olvidaste tu clave?</a>
                                                <a class="btn btn-primary" runat="server" id="login" onserverclick ="login_ServerClick"> Inicio sesión</a>
                                            </div>
                                        
                                    </div>
                                    <div class="card-footer text-center py-3">
                                        <div class="small"><a href="registro.aspx">Nesecitas una cuenta? Registrate!</a></div>
                                    </div>
                                </div>
                            </div>
                        </div>
                    </div>
                </main>
            </div>
            <div id="layoutAuthentication_footer">
                <footer class="py-4 bg-light mt-auto">
                    <div class="container-fluid px-4">
                    </div>
                </footer>
            </div>
        </div>
</asp:Content>

