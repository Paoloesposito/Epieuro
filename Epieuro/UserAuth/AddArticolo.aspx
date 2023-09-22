<%@ Page Title="" Language="C#" MasterPageFile="~/Site1.Master" AutoEventWireup="true" CodeBehind="AddArticolo.aspx.cs" Inherits="Epieuro.UserAuth.AddArticolo" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <section class="text-center text-lg-start flex-grow-1">


        <!-- Jumbotron -->
        <div class="container py-5 my-5 ">
            
                        <div class="card-body p-5 shadow-5 text-center">
                            <h2 class="fw-bold mb-5">Aggiungi Prodotto</h2>
                            <div>
                                <!-- 2 column grid layout with text inputs for the first and last names -->
                                <div class="row">
                                    <div class="col-md-6 mb-4">
                                        <div class="form-outline">
                                            <asp:TextBox ID="Nome" CssClass="form-control" runat="server"></asp:TextBox>
                                            <label class="form-label" for="Nome">nome articolo</label>
                                        </div>
                                            <asp:RequiredFieldValidator ID="RequiredFieldValidator1" ControlToValidate="Nome" runat="server"
                                                ForeColor="Red" ErrorMessage="Campo nome Obbligatorio!"></asp:RequiredFieldValidator>
                                    </div>
                                    <div class="col-md-6 mb-4">
                                        <div class="form-outline">
                                            <asp:TextBox ID="prezzo" CssClass="form-control" runat="server"></asp:TextBox>
                                            <label class="form-label" for="Prezzo">Prezzo</label>
                                        </div>
                                            
                                    </div>
                                </div>

                                <!-- Email input -->
                                <div class="form-outline mb-4">
                                    <asp:TextBox ID="DescBrev" CssClass="form-control" runat="server"></asp:TextBox>
                                    <label class="form-label" for="DescBrev">Descrizione Breve</label>

                                </div>
                                    

                                <!-- Password input -->
                                <div class="form-outline mb-4">
                                    <asp:TextBox ID="DescrizioneEstesa" CssClass="form-control" runat="server"></asp:TextBox>
                                    <label class="form-label" for="DescrizioneEstesa">Descrizione Estesa</label>

                                </div>
                                   


                                <!-- Conferma Password -->
                                <div class="form-outline mb-4">
                                    <asp:TextBox ID="Specifiche" CssClass="form-control" runat="server"></asp:TextBox>
                                    <label class="form-label" for="ConfPass">Specifiche</label>


                                </div>
                                   




                                <!-- input file -->
                                <div class="form-outline mb-4 ps-2">
                                    <asp:FileUpload ID="Foto" runat="server" CssClass="form-control ms-5 ps-5" />
                                    <label class="form-label" for="Foto">
                                        Foto Prodotto
                                    </label>
                                </div>

                                <!-- Submit button -->
                                <asp:Button ID="aggiungi" runat="server" CssClass="btn btn-primary btn-block mb-4" Text="Aggiungi" OnClick="aggiungi_Click" />

                               
                            </div>
                        </div>
                    </div>
           
        <!-- Jumbotron -->
    </section>
<!-- Section: Design Block -->






</asp:Content>
