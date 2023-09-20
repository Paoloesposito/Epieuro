<%@ Page Title="" Language="C#" MasterPageFile="~/Site1.Master" AutoEventWireup="true" CodeBehind="Login.aspx.cs" Inherits="Epieuro.Login" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
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
</asp:Content>
