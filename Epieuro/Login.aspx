<%@ Page Title="" Language="C#" MasterPageFile="~/Site1.Master" AutoEventWireup="true" CodeBehind="Login.aspx.cs" Inherits="Epieuro.Login" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <style>
  .rounded-t-5 {
    border-top-left-radius: 0.5rem;
    border-top-right-radius: 0.5rem;
  }

  @media (min-width: 992px) {
    .rounded-tr-lg-0 {
      border-top-right-radius: 0;
    }

    .rounded-bl-lg-5 {
      border-bottom-left-radius: 0.5rem;
    }
  }
  #loginSection{
      height:80vh;

  }

</style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">


    <section class=" text-center text-lg-start " id="loginSection">
        <div class="container h-100 d-flex align-content-center">

        
        <div class="row">
            <div class="col col-12 col-md-8 col-lg-6 flex-grow-1 d-flex align-items-center">

            
        
        <div class="card mb-3">
            <div class="row g-0 d-flex align-items-center">
                <div class="col-lg-4 d-none d-lg-flex">
                    <img src="https://mdbootstrap.com/img/new/ecommerce/vertical/004.jpg" alt="Trendy Pants and Shoes"
                        class="w-100 rounded-t-5 rounded-tr-lg-0 rounded-bl-lg-5" />
                </div>
                <div class="col-lg-8">
                    <div class="card-body py-5 px-md-5">

                        <div>
                            <!-- Email input -->
                            <div class="form-outline mb-4">
                                <asp:TextBox ID="EmailLogin" CssClass="form-control" runat="server"></asp:TextBox>

                                <label class="form-label" for="EmailLogin">Email address</label>
                            </div>
                            <asp:RequiredFieldValidator ID="RequiredFieldValidatorEmailLogin" ControlToValidate="EmailLogin" ForeColor="Red" runat="server" ErrorMessage="Campo Obbligatorio!"></asp:RequiredFieldValidator>

                            <!-- Password input -->
                            <div class="form-outline mb-4">
                                <asp:TextBox ID="PasswordLogin" CssClass="form-control" runat="server"></asp:TextBox>
                                <label class="form-label" for="PasswordLogin">Password</label>
                            </div>
                            <asp:RequiredFieldValidator ID="RequiredFieldValidatorPSWLogin" ControlToValidate="PasswordLogin" ForeColor="Red" runat="server" ErrorMessage="Campo Obbligatorio!"></asp:RequiredFieldValidator>

                            <!-- 2 column grid layout for inline styling -->
                            <div class="row mb-4">
                                <div class="col d-flex justify-content-center">
                                    <!-- Checkbox -->
                                    <div class="form-check">
                                        <input class="form-check-input" type="checkbox" value="" id="form2Example31" />
                                        <label class="form-check-label" for="form2Example31">Remember me </label>
                                    </div>
                                </div>

                                <div class="col">
                                    <!-- Simple link -->
                                    <a href="/newregister.aspx">non sei ancora registrato? registrati!</a>
                                </div>
                            </div>

                            <!-- Submit button -->

                            <asp:Button ID="Button1" runat="server" CssClass="btn btn-primary btn-block mb-4" Text="Login" OnClick="Button1_Click" />
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
