<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Register.aspx.cs" Inherits="Epieuro.Register" %>

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
            <div class="row justify-content-center mt-5">
                <div class="col-md-7 col-lg-8">
                    <h4 class="mb-3">Registrati</h4>

                    <div class="row g-3">
                        <div class="col-sm-6">
                            <asp:Label ID="Label1" runat="server" CssClass="align-items-center" Text="Nome"></asp:Label>
                            <asp:TextBox ID="TextBox1" CssClass="form-control" runat="server"></asp:TextBox>
                            <asp:RequiredFieldValidator ID="RequiredFieldValidator1" ControlToValidate="TextBox1" runat="server" ForeColor="Red" ErrorMessage="Campo nome Obbligatorio!"></asp:RequiredFieldValidator>
                        </div>

                        <div class="col-sm-6">
                            <!-- Text box cognome INIZIO -->

                            <asp:Label ID="Label2" runat="server" CssClass="align-items-center" Text="Cognome"></asp:Label>
                            <asp:TextBox ID="TextBox2" CssClass="form-control" runat="server"></asp:TextBox>
                            <asp:RequiredFieldValidator ID="RequiredFieldValidator2" ControlToValidate="TextBox2" runat="server" ForeColor="Red" ErrorMessage="Campo cognome Obbligatorio"></asp:RequiredFieldValidator>

                            <!-- Text box cognome FINE -->
                        </div>

                        <div class="col-12">
                            <!-- Text box email INIZIO -->
                            <asp:Label ID="Label3" runat="server" CssClass="align-items-center" Text="Email"></asp:Label>
                            <asp:TextBox ID="TextBox3" CssClass="form-control" runat="server"></asp:TextBox>
                            <asp:RequiredFieldValidator ID="RequiredFieldValidator3" ControlToValidate="TextBox3" runat="server" ForeColor="Red" ErrorMessage="Campo email Obbligatorio!"></asp:RequiredFieldValidator>
                            <!-- Text box email FINE -->
                        </div>
                    </div>

                    <div class="col-12">
                        <!-- Text box password INIZIO -->
                        <asp:Label ID="Label4" runat="server" CssClass="align-items-center" Text="Password"></asp:Label>
                        <asp:TextBox ID="TextBox4" CssClass="form-control" runat="server"></asp:TextBox>
                        <asp:RequiredFieldValidator ID="RequiredFieldValidator4" ControlToValidate="TextBox4" runat="server" ForeColor="Red" ErrorMessage="Campo Password Obbligatorio!"></asp:RequiredFieldValidator>
                        <!-- Text box password FINE -->
                    </div>

                    <div class="col-12">
                        <!-- Text box conferma-password INIZIO -->
                        <asp:Label ID="Label5" runat="server" CssClass="align-items-center" Text="Conferma Password"></asp:Label>
                        <asp:TextBox ID="TextBox5" CssClass="form-control" runat="server"></asp:TextBox>
                        <asp:RequiredFieldValidator ID="RequiredFieldValidator5" ControlToValidate="TextBox5" runat="server" ForeColor="Red" ErrorMessage="Campo Conferma Password Obbligatorio!"></asp:RequiredFieldValidator>
                        <!-- Text box conferma-password FINE -->
                    </div>

                    <div class="col-6">
                        <!-- Sezione inserisci FOTO INIZIO -->
                        <asp:FileUpload ID="FileUpload1" runat="server" />
                        <!-- Sezione inserisci FOTO FINE-->
                    </div>

                    <div class="col-md-5 mt-3">
                        <!-- DropDown INIZIO -->
                        <asp:DropDownList ID="DropDownList1" CssClass="form-control" runat="server">
                        </asp:DropDownList>
                        <!-- DropDown FINE -->
                    </div>
                    <hr />
                    <asp:Button ID="Button1" runat="server" CssClass="btn btn-warning" Text="Registrati" />
                </div>
            </div>
        </div>
        <div />
    </form>
</body>
</html>
<%-- <div id="sezioneLogin" class="col-12">

     <h1 class="text-center text-warning mb-5">Welcome!</h1>
     <h3 class="text-center text-warning mb-3">Registrati prima di effettuare l'accesso</h3>
     <!-- Text box nome INIZIO -->
     <div class="stileLabel">
         <asp:Label ID="Label1" runat="server" CssClass="align-items-center" Text="Nome"></asp:Label>
         <asp:TextBox ID="TextBox1" CssClass="form-control" runat="server"></asp:TextBox>
         <asp:RequiredFieldValidator ID="RequiredFieldValidator1" ControlToValidate="TextBox1" runat="server" ForeColor="Yellow" ErrorMessage="Campo nome Obbligatorio!"></asp:RequiredFieldValidator>
         <!-- Text box nome FINE -->

         <!-- Text box cognome INIZIO -->

         <asp:Label ID="Label2" runat="server" CssClass="align-items-center" Text="Cognome"></asp:Label>
         <asp:TextBox ID="TextBox2" CssClass="form-control" runat="server"></asp:TextBox>
         <asp:RequiredFieldValidator ID="RequiredFieldValidator2" ControlToValidate="TextBox2" runat="server" ForeColor="Yellow" ErrorMessage="Campo cognome Obbligatorio"></asp:RequiredFieldValidator>

         <!-- Text box cognome FINE -->

         <!-- Text box email INIZIO -->
         <asp:Label ID="Label3" runat="server" CssClass="align-items-center" Text="Email"></asp:Label>
         <asp:TextBox ID="TextBox3" CssClass="form-control" runat="server"></asp:TextBox>
         <asp:RequiredFieldValidator ID="RequiredFieldValidator3" ControlToValidate="TextBox3" runat="server" ForeColor="Yellow" ErrorMessage="Campo email Obbligatorio!"></asp:RequiredFieldValidator>
         <!-- Text box email FINE -->

         <!-- Text box password INIZIO -->
         <asp:Label ID="Label4" runat="server" CssClass="align-items-center" Text="Password"></asp:Label>
         <asp:TextBox ID="TextBox4" CssClass="form-control" runat="server"></asp:TextBox>
         <asp:RequiredFieldValidator ID="RequiredFieldValidator4" ControlToValidate="TextBox4" runat="server" ForeColor="Yellow" ErrorMessage="Campo Password Obbligatorio!"></asp:RequiredFieldValidator>
         <!-- Text box password FINE -->

           <!-- Text box conferma-password INIZIO -->
         <asp:Label ID="Label5" runat="server" CssClass="align-items-center" Text="Conferma Password"></asp:Label>
         <asp:TextBox ID="TextBox5" CssClass="form-control" runat="server"></asp:TextBox>
         <asp:RequiredFieldValidator ID="RequiredFieldValidator5" ControlToValidate="TextBox5" runat="server" ForeColor="Yellow" ErrorMessage="Campo Conferma Password Obbligatorio!"></asp:RequiredFieldValidator>
       <!-- Text box conferma-password FINE -->

           <!-- Sezione inserisci FOTO INIZIO -->
         <asp:FileUpload ID="FileUpload1" runat="server" />
           <!-- Sezione inserisci FOTO FINE-->

           <!-- DropDown INIZIO -->
         <asp:DropDownList ID="DropDownList1" runat="server">

         </asp:DropDownList>
          <!-- DropDown FINE -->

         <div>
             <asp:Button ID="Button1" CssClass= runat="server" Text="Registrati" /></div>
         </div>

 </div>--%>