<%@ Page Title="" Language="C#" MasterPageFile="~/Site1.Master" AutoEventWireup="true" CodeBehind="Register.aspx.cs" Inherits="Epieuro.newregister" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
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
 
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <!-- Section: Design Block -->
    <section class="text-center text-lg-start flex-grow-1">


        <!-- Jumbotron -->
        <div class="container py-4 ">
            <div class="row g-0 align-items-center">
                <div class="col-lg-6 mb-5 mb-lg-0">
                    <div class="card cascading-right" style="background: hsla(0, 0%, 100%, 0.55); backdrop-filter: blur(30px);">
                        <div class="card-body p-5 shadow-5 text-center">
                            <h2 class="fw-bold mb-5">Sign up now</h2>
                            <div>
                                <!-- 2 column grid layout with text inputs for the first and last names -->
                                <div class="row">
                                    <div class="col-md-6 mb-4">
                                        <div class="form-outline">
                                            <asp:TextBox ID="Nome" CssClass="form-control" runat="server"></asp:TextBox>
                                            <label class="form-label" for="Nome">First name</label>
                                        </div>
                                            <asp:RequiredFieldValidator ID="RequiredFieldValidator1" ControlToValidate="Nome" runat="server"
                                                ForeColor="Red" ErrorMessage="Campo nome Obbligatorio!"></asp:RequiredFieldValidator>
                                    </div>
                                    <div class="col-md-6 mb-4">
                                        <div class="form-outline">
                                            <asp:TextBox ID="Cognome" CssClass="form-control" runat="server"></asp:TextBox>
                                            <label class="form-label" for="Cognome">Last name</label>
                                        </div>
                                            <asp:RequiredFieldValidator ID="RequiredFieldValidator2" ControlToValidate="Cognome" runat="server"
                                                ForeColor="Red" ErrorMessage="Campo cognome Obbligatorio"></asp:RequiredFieldValidator>
                                    </div>
                                </div>

                                <!-- Email input -->
                                <div class="form-outline mb-4">
                                    <asp:TextBox ID="Email" CssClass="form-control" runat="server"></asp:TextBox>
                                    <label class="form-label" for="Email">Email address</label>

                                </div>
                                    <asp:RequiredFieldValidator ID="RequiredFieldValidator3" ControlToValidate="Email"
                                        runat="server" ForeColor="Red" ErrorMessage="Campo email Obbligatorio!"></asp:RequiredFieldValidator>

                                <!-- Password input -->
                                <div class="form-outline mb-4">
                                    <asp:TextBox ID="Password" CssClass="form-control" runat="server"></asp:TextBox>
                                    <label class="form-label" for="Password">Password</label>

                                </div>
                                    <asp:RequiredFieldValidator ID="RequiredFieldValidator4" ControlToValidate="Password"
                                        runat="server" ForeColor="Red" ErrorMessage="Campo Password Obbligatorio!"></asp:RequiredFieldValidator>


                                <!-- Conferma Password -->
                                <div class="form-outline mb-4">
                                    <asp:TextBox ID="ConfPass" CssClass="form-control" runat="server"></asp:TextBox>
                                    <label class="form-label" for="ConfPass">Conferma password</label>


                                </div>
                                    <asp:RequiredFieldValidator ID="RequiredFieldValidator5" ControlToValidate="ConfPass" runat="server"
                                        ForeColor="Red" ErrorMessage="Campo Conferma Password Obbligatorio!"></asp:RequiredFieldValidator>




                                <!-- input file -->
                                <div class="form-outline mb-4 ps-2">
                                    <asp:FileUpload ID="Foto" runat="server" CssClass="form-control ms-5 ps-5" />
                                    <label class="form-label" for="Foto">
                                        Foto profilo
                                    </label>
                                </div>

                                <!-- Submit button -->
                                <asp:Button ID="Registrati" runat="server" CssClass="btn btn-primary btn-block mb-4" Text="Registrati" OnClick="Registrati_Click" />

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
                            </div>
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



</asp:Content>
