<%@ Page Title="" Language="C#" MasterPageFile="~/View/MasterPage.master" AutoEventWireup="true" CodeFile="~/Controller/registro.aspx.cs"
    Inherits="View_registro" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="Server">
    <div id="layoutAuthentication">
        <div id="layoutAuthentication_content">
            <main>
                <div class="container">
                    <div class="row justify-content-center">
                        <div class="col-lg-7">
                            <div class="card shadow-lg border-0 rounded-lg mt-5">
                                <div class="card-header">
                                    <h3 class="text-center font-weight-light my-4">Crear una Cuenta</h3>
                                </div>
                                <div class="card-body">
                                    <!-- nombre apellidos-->
                                    <div class="row">
                                        <div class="col-md-6">
                                            <div class="form-floating mb-md-0">
                                                <input class="form-control" id="nombre" type="text" placeholder="Enter your first name" runat="server" />
                                                <label for="inputFirstName">Nombre</label>
                                            </div>
                                            <div class="row my-1">
                                                <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ControlToValidate="nombre" ErrorMessage="*" ForeColor="Red" ValidationGroup="RF_Validar"></asp:RequiredFieldValidator>
                                            </div>
                                        </div>
                                        <div class="col-md-6">
                                            <div class="form-floating">
                                                <input class="form-control" id="apellido" type="text" placeholder="Enter your last name" runat="server" />
                                                <label for="inputLastName">Apellidos</label>
                                            </div>
                                            <div class="row my-1">
                                                <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" ErrorMessage="*" ControlToValidate="apellido" ForeColor="Red" ValidationGroup="RF_Validar" Display="Dynamic"></asp:RequiredFieldValidator>
                                            </div>
                                        </div>
                                    </div>
                                    <!-- cedula-->
                                    <div class="form-floating">
                                        <input class="form-control" id="Cedula" type="text" placeholder="name@example.com" runat="server" />
                                        <label for="inputEmail">Cedula de Ciudadania</label>
                                    </div>
                                    <div class="row">
                                        <asp:RequiredFieldValidator ID="RequiredFieldValidator3" runat="server" ErrorMessage="*" ControlToValidate="Cedula" ForeColor="Red" ValidationGroup="RF_Validar"></asp:RequiredFieldValidator>
                                    </div>
                                    <!-- telefono dirreccion-->
                                    <div class="row mb-3">
                                        <div class="col-md-6">
                                            <div class="form-floating mb-3 mb-md-0">
                                                <input class="form-control" id="Telefono" type="text" placeholder="Enter your first name" runat="server" />
                                                <label for="inputFirstName">Telefono</label>
                                            </div>
                                            <div>
                                                <div class="row mb-0">
                                                    <asp:RequiredFieldValidator ID="RequiredFieldValidator4" runat="server" ErrorMessage="*" ControlToValidate="Telefono" ForeColor="Red" ValidationGroup="RF_Validar"></asp:RequiredFieldValidator>
                                                </div>
                                            </div>
                                        </div>
                                        <div class="col-md-6">
                                            <div class="form-floating">
                                                <input class="form-control" id="Direccion" type="text" placeholder="Enter your last name" runat="server" />
                                                <label for="inputLastName">Direccion</label>
                                            </div>
                                            <div>
                                                <div class="row mb-0">
                                                    <asp:RequiredFieldValidator ID="RequiredFieldValidator5" runat="server" ErrorMessage="*" ControlToValidate="Direccion" ForeColor="Red" ValidationGroup="RF_Validar"></asp:RequiredFieldValidator>
                                                </div>
                                            </div>
                                        </div>
                                    </div>
                                    <!-- coreeo-->
                                    <div class="form-floating mb-3">
                                        <input class="form-control" id="correo" type="text" placeholder="name@example.com" runat="server" />
                                        <label for="inputEmail">Correo Electronico</label>
                                    </div>
                                    <div class="row mb-0">
                                        <asp:RequiredFieldValidator ID="RequiredFieldValidator6" runat="server" ErrorMessage="*" ControlToValidate="correo" ForeColor="Red" ValidationGroup="RF_Validar"></asp:RequiredFieldValidator>
                                        <asp:RegularExpressionValidator ID="RegularExpressionValidator1" runat="server" ErrorMessage="Verifique la estructura de su correo: ej nombre@organización.tipo" ControlToValidate="correo" ForeColor="Red" ValidationExpression="\w+([-+.']\w+)*@\w+([-.]\w+)*\.\w+([-.]\w+)*" ValidationGroup="RF_Validar"></asp:RegularExpressionValidator>
                                    </div>
                                    <!-- contraseña y confimacion-->
                                    <div class="row mb-3">
                                        <div class="col-md-6">
                                            <div class="form-floating mb-3 mb-md-0">
                                                <input class="form-control" id="clave" type="password" placeholder="Create a password" runat="server" />
                                                <label for="inputPassword">Clave</label>
                                            </div>
                                            <div class="row mb-0">
                                                <asp:RequiredFieldValidator ID="RequiredFieldValidator7" runat="server" ErrorMessage="*" ControlToValidate="clave" ForeColor="Red" ValidationGroup="RF_Validar"></asp:RequiredFieldValidator>
                                            </div>
                                        </div>
                                        <div class="col-md-6">
                                            <div class="form-floating mb-3 mb-md-0">
                                                <input class="form-control" id="confirmarClave" type="password" placeholder="Confirm password" runat="server" />
                                                <label for="inputPasswordConfirm">Confirmar Clave</label>
                                            </div>
                                            <div class="row mb-0">
                                                <asp:RequiredFieldValidator ID="RequiredFieldValidator8" runat="server" ErrorMessage="*" ControlToValidate="confirmarClave" ForeColor="Red" ValidationGroup="RF_Validar"></asp:RequiredFieldValidator>
                                            </div>
                                        </div>

                                    </div>
                                    <div class="mt-4 mb-0">
                                        <div class="d-grid">
                                            <asp:Button ID="Button1" runat="server" Text="Crear Cuenta" OnClick="BTN_Registrar_Click" class="btn btn-primary btn-block" ValidationGroup="RF_Validar" />
                                        </div>
                                    </div>
                                    <div class="card-footer text-center py-3">
                                        <div class="small"><a href="login.aspx">Tienes una cuenta? ir a inicio de sesion</a></div>
                                    </div>
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

