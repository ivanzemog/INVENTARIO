<%@ Page Title="" Language="C#" MasterPageFile="~/View/MasterPage.master" AutoEventWireup="true" CodeFile="~/Controller/recuperarcontraseña.aspx.cs" Inherits="View_recuperarcontraseña" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
      <div id="layoutAuthentication">
            <div id="layoutAuthentication_content">
                <main>
                    <div class="container">
                        <div class="row justify-content-center">
                            <div class="col-lg-5">
                                <div class="card shadow-lg border-0 rounded-lg mt-5">
                                    <div class="card-header"><h3 class="text-center font-weight-light my-4">Recuperación de contraseña</h3></div>
                                    <div class="card-body">
                                        <div class="small mb-3 text-muted">Ingrese su dirección de correo electrónico y le enviaremos un enlace para restablecer su contraseña.</div>
                                        
                                            <div class="form-floating mb-3">
                                                <input class="form-control" id="inputEmail" type="email" placeholder="name@example.com" />
                                                <label for="inputEmail">Correo</label>
                                            </div>
                                            <div class="d-flex align-items-center justify-content-between mt-4 mb-0">
                                                <a class="small" href="Login.aspx">Volver a iniciar sesión</a>
                                                <a class="btn btn-primary" href="Login.aspx">Restablecer contraseña</a>
                                            </div>
                                        
                                    </div>
                                    <div class="card-footer text-center py-3">
                                        <div class="small"><a href="registro.aspx">¿Necesito una cuenta? ¡Regístrate!</a></div>
                                    </div>
                                </div>
                            </div>
                        </div>
                    </div>
                </main>
            </div>
            <div id="layoutAuthentication_footer">
                <footer class="py-4 bg-light mt-auto">
                
                </footer>
            </div>
        </div>
</asp:Content>

