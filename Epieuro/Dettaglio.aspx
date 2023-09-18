<%@ Page Title="" Language="C#" MasterPageFile="~/Site1.Master" AutoEventWireup="true" CodeBehind="Dettaglio.aspx.cs" Inherits="Epieuro.Dettaglio" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <link href="stile-dettagli.css" rel="stylesheet" />
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <div class="container mt-4">
        <div id="dettaglio" class="card mb-3" style="width: 100%">
            <div class="row g-0">
                <div class="col-md-4">
                    <img src="https://purepng.com/public/uploads/large/purepng.com-laptop-notebooklaptopsnotebooknotebook-computerclamshell-1701528354774hnzsp.png" class="img-fluid rounded-start" alt="...">
                </div>
                <div class="col-md-8">
                    <div class="card-body">
                        <div class="d-flex align-items-center ">
                            <h5 class="card-title m-0">Prodotto</h5>
                            <span class="prezzo ms-2">0,00$</span>
                        </div>
                        <p class="card-text">Descrizione lunga dell'articolo in vendita ma lunga eh non due righe in croce come le descrizioni che fanno certe persone di cui non voglio fare i nomi, ma chi ha orecchie per intendere intenda, mi raccomando</p>
                        <p class="card-text"><small class="text-body-secondary">Last updated 3 mins ago</small></p>
                        <asp:Button CssClass="btn btn-secondary" ID="Button1" runat="server" Text="Acquista" />
                    </div>
                </div>
            </div>
        </div>
    </div>
</asp:Content>
