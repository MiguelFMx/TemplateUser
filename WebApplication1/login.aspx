﻿<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="login.aspx.cs" Inherits="WebApplication1.login" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
    <title>Login</title>


    <!-- Favicons -->

    <link href="Usuarios/template/assets/img/favicon.png" rel="icon" />
    <link href="Usuarios/template/assets/img/apple-touch-icon.png" rel="apple-touch-icon" />

    <!-- Google Fonts -->
    <link href="https://fonts.googleapis.com/css?family=Open+Sans:300,300i,400,400i,600,600i,700,700i|Nunito:300,300i,400,400i,600,600i,700,700i|Poppins:300,300i,400,400i,500,500i,600,600i,700,700i" rel="stylesheet" />

    <!-- Vendor CSS Files -->
    <link href="template/assets/css/style.css" rel="stylesheet" />

    <!-- Bootstrap -->
    <link href="Content/bootstrap.min.css" rel="stylesheet" />
    <link href="Usuarios/template/assets/vendor/bootstrap-icons/bootstrap-icons.css" rel="stylesheet" />


    <!-- Font Awesome -->

    <link href="Usuarios/template/assets/css/login/style.css" rel="stylesheet" />



</head>
<body>
    <form id="form1" runat="server">
        <section>
            <div class="container">
                <div class="row justify-content-center">
                    <div class="col-md-6 text-center mb-5">
                        <h3 class="heading-section">
                            <asp:Label Text="Bienvenido a Hungaro's Transportistas" runat="server" ID="lblHeading" />
                            </h3>
                    </div>
                </div>
                <div class="row justify-content-center">
                    <div class="col-md-12 col-lg-10">
                        <div class="wrap d-md-flex">
                            <div class="img" style="background-image: url(Usuarios/template/assets/img/logo/Tractor.jpg);">
                            </div>
                            <div class="login-wrap p-4 p-md-5">
                                <div class="d-flex">
                                    <div class="w-100">
                                        <div style="display: flex; justify-content: center">
                                            <img src="Usuarios/template/assets/img/logo/Hungaros.png" width="60%" height="100%" />
                                        </div>
                                    </div>
                                </div>
                                <div class="form-group mb-3">
                                    <asp:Label ID="lbluser" runat="server" Text="Usuario" CssClass="label"></asp:Label>
                                    <asp:TextBox ID="txtUser" runat="server" CssClass="form-control" placeholder="Usuario"></asp:TextBox>
                                    <asp:RequiredFieldValidator runat="server" ControlToValidate="txtUser" ErrorMessage="El nombre de usuario es obligatorio." ValidationGroup="Login1" ToolTip="El nombre de usuario es obligatorio." ID="UserNameRequired">*</asp:RequiredFieldValidator>


                                </div>
                                <div class="form-group mb-3">
                                    <asp:Label ID="lblPass" runat="server" Text="Contraseña" CssClass="label"></asp:Label>
                                    <asp:TextBox ID="txtPass" runat="server" TextMode="Password" CssClass="form-control" placeholder="Contraseña"></asp:TextBox>
                                    <asp:RequiredFieldValidator runat="server" ControlToValidate="txtPass" ErrorMessage="La contrase&#241;a es obligatoria." ValidationGroup="Login1" ToolTip="La contrase&#241;a es obligatoria." ID="PasswordRequired">*</asp:RequiredFieldValidator>


                                    <asp:Label ID="lbltest" runat="server" Text="" ForeColor="#ff0000"></asp:Label>
                                </div>
                                <div class="form-group" style="color: red;">
                                    <asp:Literal runat="server" ID="FailureText" EnableViewState="False"></asp:Literal>
                                </div>

                                <div class="form-group">
                                    <asp:Button ID="btnLogin" runat="server" Text="Iniciar sesion" CssClass="form-control btn btn-primary rounded submit px-3" OnClick="btnLogin_Click" />
                                </div>
                                <div class="form-group d-md-flex">
                                    <div class="w-50 text-left">
                                        <asp:CheckBox runat="server" Text="&nbsp;Recuerdame" ID="RememberMe" CssClass="checkbox-primary mb-0"></asp:CheckBox>

                                    </div>
                                    <div class="w-50 text-md-right">
                                        <asp:LinkButton ID="btnPasswordOlvidado" runat="server">Olvidé la contraseña</asp:LinkButton>
                                    </div>
                                </div>
                                

                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </section>
    </form>
    <script src="Scripts/jquery-3.6.0.min.js"></script>
    <script src="Scripts/bootstrap.min.js"></script>

</body>
</html>
