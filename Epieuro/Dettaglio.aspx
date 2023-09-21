<%@ Page Title="" Language="C#" EnableEventValidation="false" MasterPageFile="~/Site1.Master" AutoEventWireup="true" CodeBehind="Dettaglio.aspx.cs" Inherits="Epieuro.Dettaglio" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <link href="stile-dettagli.css" rel="stylesheet" />
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
   <main class="mt-5 pt-4">
    <div class="container mt-5">
        <!--Grid row-->
        <div class="row">
            <!--Grid column-->
            <div class="col-md-6 mb-4">
                 
                  <asp:Image ID="Image1" runat="server" CssClass="img-fluid"/>
            </div>
            <!--Grid column-->

            <!--Grid column-->
            <div class="col-md-6 mb-4">
                <!--Content-->
                <div class="p-4">
                    <div class="mb-3">
                        
                            <span class="badge bg-dark me-1">Category 2</span>
                       
                            <span class="badge bg-info me-1">New</span>
                        
                            <span class="badge bg-danger me-1">Bestseller</span>
                        
                    </div>

                    <p class="lead">
                        <span id="PrezzoProdotto" runat="server"></span>
                    </p>

                    <p style="font-size: 20px;">
                        <strong>Description</strong>
                    </p>


                    <p id="Descrizione" runat="server"></p>

                    <div class="d-flex justify-content-left">
                        <!-- Default input -->
                        <div class="form-outline me-1" style="width: 100px;">
                            <input type="number" runat="server" id="quantita" value="1" class="form-control" />
                        </div>
                        
                       
                        <asp:Button ID="Button1" runat="server" Text="Button" OnClick="Button1_Click" />
                             
                       
                       <%-- <button class="btn btn-primary ms-1" type="submit" runat="server" id="addCart" onclick="addCart_Click">
                            Add to cart
                            <i class="fas fa-shopping-cart ms-1"></i>
                        </button>--%>
                    </div>
                </div>
                <!--Content-->
            </div>
            <!--Grid column-->
        </div>
        <!--Grid row-->

        <hr />

        <!--Grid row-->
        <div class="row d-flex justify-content-center">
            <!--Grid column-->
            <div class="col-md-10 text-center">
                <h4 class="my-4 h4">Additional information</h4>

                <p runat="server" id="specifiche"></p>
            </div>
            <!--Grid column-->
        </div>
        <!--Grid row-->

        <!--Grid row-->
        <div class="row">
            <!--Grid column-->
            <div class="col-lg-4 col-md-12 mb-4">
                <img src="https://mdbootstrap.com/img/Photos/Horizontal/E-commerce/Products/11.jpg" class="img-fluid" alt="" />
            </div>
            <!--Grid column-->

            <!--Grid column-->
            <div class="col-lg-4 col-md-6 mb-4">
                <img src="https://mdbootstrap.com/img/Photos/Horizontal/E-commerce/Products/12.jpg" class="img-fluid" alt="" />
            </div>
            <!--Grid column-->

            <!--Grid column-->
            <div class="col-lg-4 col-md-6 mb-4">
                <img src="https://mdbootstrap.com/img/Photos/Horizontal/E-commerce/Products/13.jpg" class="img-fluid" alt="" />
            </div>
            <!--Grid column-->
        </div>
        <!--Grid row-->
    </div>
</main>
 
</asp:Content>



                <%--<div class="d-flex ms-3 align-items-center">
                    <asp:Label ID="Label1" runat="server" Text="Quantità" CssClass="me-2"></asp:Label>
                    <asp:TextBox ID="Quantita" CssClass=" quantita form-control" Width="50px" runat="server"></asp:TextBox>
                    <span>
                        <asp:Button ID="ButtonPiu" CssClass="custom-btn2 fw-bold ms-2 me-2" runat="server" Text=" + " OnClick="ButtonPiu_Click" /></span>
                    <span>
                        <asp:Button ID="ButtonMeno" CssClass="custom-btn2 fw-bold" runat="server" Text=" - " OnClick="ButtonMeno_Click" /></span>
                </div>--%>
           