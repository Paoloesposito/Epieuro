<%@ Page Title="" EnableEventValidation="false" Language="C#" MasterPageFile="~/Site1.Master" AutoEventWireup="true" CodeBehind="Default.aspx.cs" Inherits="Epieuro.Default" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <link href="Style%20Default.css" rel="stylesheet" />
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <div class="container">

        <!-- Sezione delle etichette delle categorie -->
<div class="row mb-4">

    <asp:Repeater ID="Categorie" runat="server" ItemType="Epieuro.Classi.Categorie">
        <ItemTemplate>
            <div class="col-sm-4 col-md-2">
                <asp:Button ID="btnCat1" CssClass="custom-btn w-100" runat="server" Text=<%#Item.Nome %> CommandArgument="<%#Item.IdCategoria %>" OnClick="btnCat1_Click" />
            </div>
        </ItemTemplate>
    </asp:Repeater>                                                                                                                                                             
        
        
    </div>

 <!-- Sezione dei prodotti -->
        <div class="row row-cols-1 row-cols-md-2 g-4">
            <asp:Repeater ID="prodotti" runat="server" ItemType="Epieuro.Classi.Prodotto">
                <ItemTemplate>
                    <div class="col">
                        <div class="card mb-3 boxSCard" style="max-width: 540px;">
                            <div class="row g-0">
                                <div class="col-md-4">
                                    <img src="Prodotti/Telefonia/Immagini/<%#Item.FotoPrincipale %>" class="img-fluid rounded-start" />
                                </div>
                                <div class="col-md-8 h-50">
                                    <div class="card-body">
                                        <h5 class="card-title"><%#Item.Nome %></h5>
                                        <p class="card-text"><%#Item.DescrizioneBreve %></p>
                                        <p class="card-text "><small class="text-body-secondary fw-bold">Prezzo: € <%# Item.Prezzo %></small></p>
                                        
                                            <div class="row row-cols-1 row-cols-sm-2 g-3">
                                                <div class="col">
                                                    <a href="Dettaglio.aspx?idProdotto=<%#Item.IdProdotto %>" class="custom-btn2 w-100">Dettaglio</a>
                                                </div>
                                                <div class="col">
                                                    <asp:Button ID="AddCart" CommandArgument="<%#Item.IdProdotto %>" CssClass="custom-btn w-100" runat="server" Text="Add Cart" OnClick="AddCart_Click" />
                                                </div>
                                            
                                        </div>

                                    </div>
                                </div>
                            </div>
                        </div>
                    </div>
                </ItemTemplate>
            </asp:Repeater>
        </div>
    </div>
  <%--  <div>
        <span><i class="fas fa-arrow-circle-up"></i></span>
    </div>--%>
</asp:Content>
