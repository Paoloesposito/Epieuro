<%@ Page Title="" Language="C#" MasterPageFile="~/Site1.Master" AutoEventWireup="true" CodeBehind="Carrello.aspx.cs" Inherits="Epieuro.Carrello" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <asp:GridView ID="carrelloGrid" CssClass="table table-bordered" AutoGenerateColumns="false" ItemType="Epieuro.Classi.Prodotto" runat="server">
        <Columns>
            <asp:TemplateField>
                <HeaderTemplate>
                    <strong id="tabellaHeader">Prodotto</strong>
                </HeaderTemplate>
                <ItemTemplate>
                    <%# Item.Nome %>
                </ItemTemplate>
            </asp:TemplateField>
        </Columns>
        <Columns>
            <asp:TemplateField>
                <HeaderTemplate>
                    <strong id="tabellaHeader">Descrizione Breve</strong>
                </HeaderTemplate>
                <ItemTemplate>
                    <%# Item.DescrizioneBreve %>
                </ItemTemplate>
            </asp:TemplateField>
        </Columns>
        <Columns>
            <asp:TemplateField>
                <HeaderTemplate>
                    <strong id="tabellaHeader">Quantità</strong>
                </HeaderTemplate>
                <ItemTemplate>
                    <%# Item.quantitaAcquistata %>
                </ItemTemplate>
            </asp:TemplateField>
        </Columns>
        <Columns>
            <asp:TemplateField>
                <HeaderTemplate>
                    <strong id="tabellaHeader">Prezzo</strong>
                </HeaderTemplate>
                <ItemTemplate>
                    <%# Item.Prezzo %>
                </ItemTemplate>
            </asp:TemplateField>
        </Columns>
    </asp:GridView>
    <div id="totaleTesto" runat="server" class="d-flex justify-content-between me-2">
        <asp:Button ID="ButtonSvuotaCarrello" runat="server" Text="Svuota Carrello" OnClick="ButtonSvuotaCarrello_Click" />
        <asp:Label ID="totale" CssClass="fw-bold" runat="server" Text="Label"></asp:Label>
    </div>
    <div class="d-flex align-items-center mt-5" id="carrelloBoxVuoto" runat="server">
        <img id="imgCarrelloVuoto" src="ImgCarrello/carrelloVuoto.png" />
        <h1 id="carrelloVuoto" class="textCarrelloVuoto" runat="server"></h1>
    </div>
</asp:Content>
