<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Login.aspx.cs" Inherits="Epieuro.Login" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
    <link href="Content/bootstrap.min.css" rel="stylesheet" />
    <link href="Content/Site.css" rel="stylesheet" />
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
        <div class="container">
            <div class="row loginPage">
                <div class="col-12 d-flex flex-column align-items-center ">
                    <!--Inizio sezione Login username(email)-->
                    <asp:Label ID="Label1" runat="server" Text="Email"></asp:Label>
                    <asp:TextBox ID="EmailLogin" CssClass="form-control" runat="server"></asp:TextBox>
                    <asp:RequiredFieldValidator ID="RequiredFieldValidatorEmailLogin" ControlToValidate="EmailLogin" ForeColor="Red" runat="server" ErrorMessage="Campo Obbligatorio!"></asp:RequiredFieldValidator>
                    <!--Fine sezione Login username(email)-->
                </div>
                <div class="col-12 d-flex flex-column align-items-center">
                    <!-- Inizio sezione Login password -->
                    <asp:Label ID="Label2" runat="server" Text="Password"></asp:Label>
                    <asp:TextBox ID="PasswordLogin" CssClass="form-control" runat="server"></asp:TextBox>
                    <asp:RequiredFieldValidator ID="RequiredFieldValidatorPSWLogin" ControlToValidate="PasswordLogin" ForeColor="Red" runat="server" ErrorMessage="Campo Obbligatorio!"></asp:RequiredFieldValidator>
                    <asp:Button ID="Button1" runat="server" CssClass="btn btn-warning" Text="Login" />
                    <!-- Fine sezione Login password -->
                </div>
            </div>
        </div>
    </form>
</body>
</html>
