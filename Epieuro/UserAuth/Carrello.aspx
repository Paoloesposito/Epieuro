<%@ Page Title="" EnableEventValidation="false" Language="C#" MasterPageFile="~/Site1.Master" AutoEventWireup="true" CodeBehind="Carrello.aspx.cs" Inherits="Epieuro.Carrello" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">

    <asp:GridView ID="carrelloGrid" CssClass="table table-bordered bg-light" AutoGenerateColumns="false" ItemType="Epieuro.Classi.Prodotto" runat="server">
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
                    <div>
                        <asp:Button ID="Elimina" runat="server" CssClass="btn btn-outline-danger" Text="Button" CommandArgument="<%# Item.IdProdotto %>" OnClick="Elimina_Click" />
                    </div>
                </ItemTemplate>
            </asp:TemplateField>
        </Columns>
    </asp:GridView>
    <div id="totaleTesto" runat="server" class="d-flex justify-content-between me-2">
        <asp:Button ID="ButtonSvuotaCarrello" CssClass="custom-btn" runat="server" Text="Svuota Carrello" OnClick="ButtonSvuotaCarrello_Click" />
        <asp:Label ID="totale" CssClass="fw-bold text-white" runat="server" Text="Label"></asp:Label>
    </div>
    <div class="d-flex align-items-center mt-5" id="carrelloBoxVuoto" runat="server">
        <img id="imgCarrelloVuoto" src="ImgCarrello/carrelloVuoto.png" />
        <h1 id="carrelloVuoto" class="textCarrelloVuoto" runat="server"></h1>
    </div>
    <h1 class="mt-5">⠀⠀⠀⠀⠀⠀⠀⠀⠀</h1>

    <div class="generale">

        <div class="d-flex justify-content-end pe-5">
            <h3 ">Potrebbe piacerti anche</h3>
        </div>

        <div class=" row row-cols-2 d-flex ">
            <div class="col">
                <p>CARRELLO</p>
            </div>
            <div class=" g-4 d-flex flex-column  align-items-end pe-5  ">
                <div class="col w-50   ">
                    <div class="card h-100">
                        <img src="https://photo.yeppon.it/msi-notebook-gaming-stealth/10-108957210_3818074107.jpg?tr=w-750,c-at_max:w-750,cm-pad_extract,bg-FFFFFF" class="card-img-top" alt="articoli consigliati">
                        <div class="card-body">
                            <h5 class="card-title">Card title</h5>
                            <p class="card-text">This is a wider card with supporting text below as a natural lead-in to additional content. This content is a little bit longer.</p>
                        </div>
                        <div class="card-footer">
                            <small class="text-body-secondary">Last updated 3 mins ago</small>
                        </div>
                    </div>
                </div>
              <div class="col w-50 ">
                    <div class="card h-100">
                        <img src="https://photo.yeppon.it/msi-notebook-gaming-stealth/10-108957210_3818074107.jpg?tr=w-750,c-at_max:w-750,cm-pad_extract,bg-FFFFFF" class="card-img-top" alt="...">
                        <div class="card-body">
                            <h5 class="card-title">Card title</h5>
                            <p class="card-text">This card has supporting text below as a natural lead-in to additional content.</p>
                        </div>
                        <div class="card-footer">
                            <small class="text-body-secondary">Last updated 3 mins ago</small>
                        </div>
                    </div>
                </div>
             <div class="col w-50 ">
                    <div class="card h-100">
                        <img src="https://photo.yeppon.it/msi-notebook-gaming-stealth/10-108957210_3818074107.jpg?tr=w-750,c-at_max:w-750,cm-pad_extract,bg-FFFFFF" class="card-img-top" alt="...">
                        <div class="card-body">
                            <h5 class="card-title">Card title</h5>
                            <p class="card-text">This is a wider card with supporting text below as a natural lead-in to additional content. This card has even longer content than the first to show that equal height action.</p>
                        </div>
                        <div class="card-footer">
                            <small class="text-body-secondary">Last updated 3 mins ago</small>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </div>
</asp:Content>
