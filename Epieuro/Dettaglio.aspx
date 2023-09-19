<%@ Page Title="" Language="C#" MasterPageFile="~/Site1.Master" AutoEventWireup="true" CodeBehind="Dettaglio.aspx.cs" Inherits="Epieuro.Dettaglio" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <link href="stile-dettagli.css" rel="stylesheet" />
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <div class="container mt-4">
        <div id="dettaglio" class="card mb-3" style="width: 100%">
            <div class="row g-0">
                <div class="col-md-4">
                    <div style="width: 100%">
                        <asp:Image style="max-width: 100%" ID="ImgPrd" runat="server" />
                    </div>
                </div>
                <div class="col-md-8">
                    <div class="card-body">
                        <h5 id="NomeProdotto" style="font-size: 4rem !important;" runat="server" class="card-title m-0">prodotto</h5>
                        <div class="d-flex align-items-center ">
                            <span><b>Prezzo:</b></span>
                            <span id="PrezzoProdotto" runat="server" class="prezzo ms-2">0,00$</span> <span></span>
                        </div>
                        <p id="DescrizioneLunga" runat="server" class="card-text">Descrizione lunga dell'articolo in vendita ma lunga eh non due righe in croce come le descrizioni che fanno certe persone di cui non voglio fare i nomi, ma chi ha orecchie per intendere intenda, mi raccomando</p>
                        <p class="card-text"><small class="text-body-secondary">Last updated 3 mins ago</small></p>
                        <asp:Button CssClass="btn btn-success me-3" ID="Button1" runat="server" Text="Acquista" />

                    </div>
                    <div class="d-flex ms-3 align-items-center">
                        <asp:Label ID="Label1" runat="server" Text="Quantità" CssClass="me-2"></asp:Label>
                        <asp:TextBox ID="Quantita" CssClass=" quantita form-control" Width="50px" runat="server"></asp:TextBox>
                        <span>
                            <asp:Button ID="ButtonPiu" CssClass="btn btn-success ms-2 me-2" runat="server" Text=" + " OnClick="ButtonPiu_Click" /></span>
                        <span>
                            <asp:Button ID="ButtonMeno" CssClass="btn btn-success" runat="server" Text=" - " OnClick="ButtonMeno_Click" /></span>
                    </div>
                    <div>
                    </div>
                </div>
            </div>
        </div>
    </div>
</asp:Content>
