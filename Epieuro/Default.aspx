﻿<%@ Page Title="" EnableEventValidation="false" Language="C#" MasterPageFile="~/Site1.Master" AutoEventWireup="true" CodeBehind="Default.aspx.cs" Inherits="Epieuro.Default" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <link href="Style%20Default.css" rel="stylesheet" />
     <script src="Scripts/bootstrap.min.js"></script>
    <script src="Scripts/bootstrap.bundle.js"></script>
    <script src="Scripts/bootstrap.min.js"></script>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">

    <!-- carousel -->
    <div id="carouselExampleCaptions" class="carousel slide carousel-fade" data-mdb-ride="carousel">
        <div class="carousel-indicators">
            <button
                type="button"
                data-mdb-target="#carouselExampleCaptions"
                data-mdb-slide-to="0"
                class="active"
                aria-current="true"
                aria-label="Slide 1">
            </button>
            <button
                type="button"
                data-mdb-target="#carouselExampleCaptions"
                data-mdb-slide-to="1"
                aria-label="Slide 2">
            </button>
            <button
                type="button"
                data-mdb-target="#carouselExampleCaptions"
                data-mdb-slide-to="2"
                aria-label="Slide 3">
            </button>
        </div>
        <div class="carousel-inner">
            <div class="carousel-item active">
                <img src="https://mdbootstrap.com/img/Photos/Horizontal/E-commerce/8-col/img%282%29.jpg" class="d-block w-100" alt="Wild Landscape" />
                <div class="mask" style="background-color: rgba(0, 0, 0, 0.4)"></div>
                <div class="carousel-caption d-none d-sm-block mb-5">
                    <h1 class="mb-4">
                        <strong>Learn Bootstrap 5 with MDB</strong>
                    </h1>

                    <p>
                        <strong>Best & free guide of responsive web design</strong>
                    </p>

                    <p class="mb-4 d-none d-md-block">
                        <strong>The most comprehensive tutorial for the Bootstrap 5. Loved by over 3 000 000 users. Video and written versions
         available. Create your own, stunning website.</strong>
                    </p>

                    <a target="_blank" href="https://mdbootstrap.com/education/bootstrap/" class="btn btn-outline-white btn-lg">Start free tutorial
       <i class="fas fa-graduation-cap ms-2"></i>
                    </a>
                </div>
            </div>
            <div class="carousel-item">
                <img src="https://mdbootstrap.com/img/Photos/Horizontal/E-commerce/8-col/img%283%29.jpg" class="d-block w-100" alt="Camera" />
                <div class="mask" style="background-color: rgba(0, 0, 0, 0.4)"></div>
                <div class="carousel-caption d-none d-md-block mb-5">
                    <h1 class="mb-4">
                        <strong>Learn Bootstrap 5 with MDB</strong>
                    </h1>

                    <p>
                        <strong>Best & free guide of responsive web design</strong>
                    </p>

                    <p class="mb-4 d-none d-md-block">
                        <strong>The most comprehensive tutorial for the Bootstrap 5. Loved by over 3 000 000 users. Video and written versions
         available. Create your own, stunning website.</strong>
                    </p>

                    <a target="_blank" href="https://mdbootstrap.com/education/bootstrap/" class="btn btn-outline-white btn-lg">Start free tutorial
       <i class="fas fa-graduation-cap ms-2"></i>
                    </a>
                </div>
            </div>
            <div class="carousel-item">
                <img src="https://mdbootstrap.com/img/Photos/Horizontal/E-commerce/8-col/img%285%29.jpg" class="d-block w-100" alt="Exotic Fruits" />
                <div class="mask" style="background-color: rgba(0, 0, 0, 0.4)"></div>
                <div class="carousel-caption d-none d-md-block mb-5">
                    <h1 class="mb-4">
                        <strong>Learn Bootstrap 5 with MDB</strong>
                    </h1>

                    <p>
                        <strong>Best & free guide of responsive web design</strong>
                    </p>

                    <p class="mb-4 d-none d-md-block">
                        <strong>The most comprehensive tutorial for the Bootstrap 5. Loved by over 3 000 000 users. Video and written versions
         available. Create your own, stunning website.</strong>
                    </p>

                    <a target="_blank" href="https://mdbootstrap.com/education/bootstrap/" class="btn btn-outline-white btn-lg">Start free tutorial
       <i class="fas fa-graduation-cap ms-2"></i>
                    </a>
                </div>
            </div>
        </div>
        <button class="carousel-control-prev" type="button" data-mdb-target="#carouselExampleCaptions" data-mdb-slide="prev">
            <span class="carousel-control-prev-icon" aria-hidden="true"></span>
            <span class="visually-hidden">Previous</span>
        </button>
        <button class="carousel-control-next" type="button" data-mdb-target="#carouselExampleCaptions" data-mdb-slide="next">
            <span class="carousel-control-next-icon" aria-hidden="true"></span>
            <span class="visually-hidden">Next</span>
        </button>
    </div>
    <!-- carousel -->

    <!--Main layout-->
    <div class="container-fluid">
    <!-- Navbar -->
    <nav class="navbar navbar-expand-lg navbar-dark mt-3 mb-5 shadow p-2" style="background-color: #607D8B;">
        <!-- Container wrapper -->
            <div class="container">

            <!-- Navbar brand -->
            <a class="navbar-brand" href="#">Categories:</a>

            <!-- Toggle button -->
            <button
                class="navbar-toggler"
                type="button"
                data-mdb-toggle="collapse"
                data-mdb-target="#navbarSupportedContent2"
                aria-controls="navbarSupportedContent2"
                aria-expanded="false"
                aria-label="Toggle navigation">
                <i class="fas fa-bars"></i>
            </button>
            <!-- Collapsible wrapper -->
            <div class="collapse navbar-collapse" id="navbarSupportedContent2">
                <ul class="navbar-nav me-auto mb-2 mb-lg-0">
                <asp:Repeater ID="Categorie" runat="server" ItemType="Epieuro.Classi.Categorie">
                    <ItemTemplate>
                        
                            <li class="nav-item acitve">
                             <asp:Button ID="btnCat1" CssClass="custom-btn w-100" runat="server" Text="<%#Item.Nome %>" CommandArgument="<%#Item.IdCategoria %>" OnClick="btnCat1_Click1" />
                            </li>
                       
                    </ItemTemplate>
                </asp:Repeater>
                     </ul>
                <!-- Search -->
                <%-- <form class="w-auto py-1" style="max-width: 12rem">
                           <input type="search" class="form-control rounded-0" placeholder="Search" aria-label="Search"/>
                       </form>--%>
            </div>
        </div>
        <!-- Container wrapper -->
    </nav>
    <!-- Navbar -->

    <!-- Products -->

    <div class="text-center">
        <div class="row">
            <asp:Repeater ID="prodotti" runat="server" ItemType="Epieuro.Classi.Prodotto">
                <ItemTemplate>
                    <div class="col-lg-3 col-md-6 mb-4">
                        <div class="card">
                            <div class="bg-image hover-zoom ripple ripple-surface ripple-surface-light"
                                data-mdb-ripple-color="light">
                                <img src="Prodotti/Telefonia/Immagini/<%# Item.FotoPrincipale%>"
                                    class="w-100" />
                                <a href="#!">
                                    <div class="mask">
                                        <div class="d-flex justify-content-start align-items-end h-100">
                                            <h5><span class="badge bg-dark ms-2">NEW</span></h5>
                                        </div>
                                    </div>
                                    <div class="hover-overlay">
                                        <div class="mask" style="background-color: rgba(251, 251, 251, 0.15);"></div>
                                    </div>
                                </a>
                            </div>
                            <div class="card-body">
                                <a href="#" class="text-reset">
                                    <h5 class="card-title mb-2"><%#Item.Nome %></h5>
                                </a>
                                </a>
                                    <h6 class="mb-3 price"><%# Item.Prezzo %></h6>
                            </div>
                        </div>
                    </div>
                </ItemTemplate>
            </asp:Repeater>
            <!-- Pagination -->
            <nav aria-label="Page navigation example" class="d-flex justify-content-center mt-3">
                <ul class="pagination">
                    <li class="page-item disabled">
                        <a class="page-link" href="#" aria-label="Previous">
                            <span aria-hidden="true">&laquo;</span>
                        </a>
                    </li>
                    <li class="page-item active"><a class="page-link" href="#">1</a></li>
                    <li class="page-item"><a class="page-link" href="#">2</a></li>
                    <li class="page-item"><a class="page-link" href="#">3</a></li>
                    <li class="page-item"><a class="page-link" href="#">4</a></li>
                    <li class="page-item"><a class="page-link" href="#">5</a></li>
                    <li class="page-item">
                        <a class="page-link" href="#" aria-label="Next">
                            <span aria-hidden="true">&raquo;</span>
                        </a>
                    </li>
                </ul>
            </nav>
            <!-- Pagination -->
        </div>
        <div/>
        </div>
        </div>
        <!--Main layout-->
</asp:Content>
