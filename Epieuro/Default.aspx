<%@ Page Title="" Language="C#" MasterPageFile="~/Site1.Master" AutoEventWireup="true" CodeBehind="Default.aspx.cs" Inherits="Epieuro.Default" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <div class="container">
        <div class="row row-cols-1 row-cols-md-2 g-4">
            <asp:Repeater ID="prodotti" runat="server" ItemType="Epieuro.Classi.Prodotto">
                <ItemTemplate>
                    <div class="col">
                        <div class="card mb-3" style="max-width: 540px;">
                            <div class="row g-0">
                                <div class="col-md-4">
                                    <asp:Image ID="Image1" ImageUrl="<%#Item.FotoPrincipale %>" runat="server" class="img-fluid rounded-start"/>
                                    
                                </div>
                                <div class="col-md-8">
                                    <div class="card-body">
                                        <h5 class="card-title"><%#Item.Nome %></h5>
                                        <p class="card-text"><%#Item.DescrizioneBreve %></p>
                                        <p class="card-text"><small class="text-body-secondary">Prezzo: € <%# Item.Prezzo %></small></p>
                                    </div>
                                </div>
                            </div>
                        </div>
                    </div>
                </ItemTemplate>
            </asp:Repeater>
        </div>
    </div>
</asp:Content>
