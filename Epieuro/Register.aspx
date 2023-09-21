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
                            <asp:TextBox ID="Nome" CssClass="form-control" runat="server"></asp:TextBox>
                            <asp:RequiredFieldValidator ID="RequiredFieldValidator1" ControlToValidate="Nome" runat="server" ForeColor="Red" ErrorMessage="Campo nome Obbligatorio!"></asp:RequiredFieldValidator>
                        </div>

                        <div class="col-sm-6">
                            <!-- Text box cognome INIZIO -->

                            <asp:Label ID="Label2" runat="server" CssClass="align-items-center" Text="Cognome"></asp:Label>
                            <asp:TextBox ID="Cognome" CssClass="form-control" runat="server"></asp:TextBox>
                            <asp:RequiredFieldValidator ID="RequiredFieldValidator2" ControlToValidate="Cognome" runat="server" ForeColor="Red" ErrorMessage="Campo cognome Obbligatorio"></asp:RequiredFieldValidator>

                            <!-- Text box cognome FINE -->
                        </div>

                        <div class="col-12">
                            <!-- Text box email INIZIO -->
                            <asp:Label ID="Label3" runat="server" CssClass="align-items-center" Text="Email"></asp:Label>
                            <asp:TextBox ID="Email" CssClass="form-control" runat="server"></asp:TextBox>
                            <asp:RequiredFieldValidator ID="RequiredFieldValidator3" ControlToValidate="Email" runat="server" ForeColor="Red" ErrorMessage="Campo email Obbligatorio!"></asp:RequiredFieldValidator>
                            <!-- Text box email FINE -->
                        </div>
                    </div>

                    <div class="col-12">
                        <!-- Text box password INIZIO -->
                        <asp:Label ID="Label4" runat="server" CssClass="align-items-center" Text="Password"></asp:Label>
                        <asp:TextBox ID="Password" CssClass="form-control" runat="server"></asp:TextBox>
                        <asp:RequiredFieldValidator ID="RequiredFieldValidator4" ControlToValidate="Password" runat="server" ForeColor="Red" ErrorMessage="Campo Password Obbligatorio!"></asp:RequiredFieldValidator>
                        <!-- Text box password FINE -->
                    </div>

                    <div class="col-12">
                        <!-- Text box conferma-password INIZIO -->
                        <asp:Label ID="Label5" runat="server" CssClass="align-items-center" Text="Conferma Password"></asp:Label>
                        <asp:TextBox ID="ConfPass" CssClass="form-control" runat="server"></asp:TextBox>
                        <asp:RequiredFieldValidator ID="RequiredFieldValidator5" ControlToValidate="ConfPass" runat="server" ForeColor="Red" ErrorMessage="Campo Conferma Password Obbligatorio!"></asp:RequiredFieldValidator>
                        <!-- Text box conferma-password FINE -->
                    </div>

                    <div class="col-6">
                        <!-- Sezione inserisci FOTO INIZIO -->
                        <asp:FileUpload ID="Foto" runat="server" CssClass="form-control" />
                        <!-- Sezione inserisci FOTO FINE-->
                    </div>

                    <div class="col-md-5 mt-3 bg">
                        <!-- DropDown INIZIO -->
                        <asp:DropDownList ID="DropDownList1" CssClass="form-control" runat="server">
                        </asp:DropDownList>
                        <!-- DropDown FINE -->
                    </div>
                    <hr />
                    <asp:Button ID="Button1" runat="server" CssClass="btn btn-warning" Text="Registrati" OnClick="Button1_Click" />
                </div>
            </div>
        </div>
        <div />
    </form>
</body>
</html>
















<!-- Section: Design Block -->
<section class="text-center text-lg-start">
  <style>
    .cascading-right {
      margin-right: -50px;
    }

    @media (max-width: 991.98px) {
      .cascading-right {
        margin-right: 0;
      }
    }
  </style>

  <!-- Jumbotron -->
  <div class="container py-4">
    <div class="row g-0 align-items-center">
      <div class="col-lg-6 mb-5 mb-lg-0">
        <div class="card cascading-right" style="
            background: hsla(0, 0%, 100%, 0.55);
            backdrop-filter: blur(30px);
            ">
          <div class="card-body p-5 shadow-5 text-center">
            <h2 class="fw-bold mb-5">Sign up now</h2>
            <form>
              <!-- 2 column grid layout with text inputs for the first and last names -->
              <div class="row">
                <div class="col-md-6 mb-4">
                  <div class="form-outline">
                    <input type="text" id="form3Example1" class="form-control" />
                    <label class="form-label" for="form3Example1">First name</label>
                  </div>
                </div>
                <div class="col-md-6 mb-4">
                  <div class="form-outline">
                    <input type="text" id="form3Example2" class="form-control" />
                    <label class="form-label" for="form3Example2">Last name</label>
                  </div>
                </div>
              </div>

              <!-- Email input -->
              <div class="form-outline mb-4">
                <input type="email" id="form3Example3" class="form-control" />
                <label class="form-label" for="form3Example3">Email address</label>
              </div>

              <!-- Password input -->
              <div class="form-outline mb-4">
                <input type="password" id="form3Example4" class="form-control" />
                <label class="form-label" for="form3Example4">Password</label>
              </div>

              <!-- Checkbox -->
              <div class="form-check d-flex justify-content-center mb-4">
                <input class="form-check-input me-2" type="checkbox" value="" id="form2Example33" checked />
                <label class="form-check-label" for="form2Example33">
                  Subscribe to our newsletter
                </label>
              </div>

              <!-- Submit button -->
              <button type="submit" class="btn btn-primary btn-block mb-4">
                Sign up
              </button>

              <!-- Register buttons -->
              <div class="text-center">
                <p>or sign up with:</p>
                <button type="button" class="btn btn-link btn-floating mx-1">
                  <i class="fab fa-facebook-f"></i>
                </button>

                <button type="button" class="btn btn-link btn-floating mx-1">
                  <i class="fab fa-google"></i>
                </button>

                <button type="button" class="btn btn-link btn-floating mx-1">
                  <i class="fab fa-twitter"></i>
                </button>

                <button type="button" class="btn btn-link btn-floating mx-1">
                  <i class="fab fa-github"></i>
                </button>
              </div>
            </form>
          </div>
        </div>
      </div>

      <div class="col-lg-6 mb-5 mb-lg-0">
        <img src="https://mdbootstrap.com/img/new/ecommerce/vertical/004.jpg" class="w-100 rounded-4 shadow-4"
          alt="" />
      </div>
    </div>
  </div>
  <!-- Jumbotron -->
</section>
<!-- Section: Design Block -->