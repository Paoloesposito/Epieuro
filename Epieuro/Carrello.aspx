<%@ Page Title="" Language="C#" MasterPageFile="~/Site1.Master" AutoEventWireup="true" CodeBehind="Carrello.aspx.cs" Inherits="Epieuro.Carrello" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <asp:GridView ID="carrello" CssClass="table table-bordered" AutoGenerateColumns="false" ItemType="Epieuro.Classi.Prodotto" runat="server">
        <Columns>
            <asp:TemplateField>
                <HeaderTemplate>
                    <strong>Prodotto</strong>
                </HeaderTemplate>
                <ItemTemplate>
                    <%# Item.Nome %>
                </ItemTemplate>
            </asp:TemplateField>
        </Columns>
        <Columns>
            <asp:TemplateField>
                <HeaderTemplate>
                    <strong>Descrizione Breve</strong>
                </HeaderTemplate>
                <ItemTemplate>
                    <%# Item.DescrizioneBreve %>
                </ItemTemplate>
            </asp:TemplateField>
        </Columns>
        <Columns>
            <asp:TemplateField>
                <HeaderTemplate>
                    <strong>Quantità</strong>
                </HeaderTemplate>
                <ItemTemplate>
                    <%# Item.quantita %>
                </ItemTemplate>
            </asp:TemplateField>
        </Columns>
         <Columns>
     <asp:TemplateField>
         <HeaderTemplate>
             <strong>Prezzo</strong>
         </HeaderTemplate>
         <ItemTemplate>
             <%# Item.Prezzo %>
         </ItemTemplate>
     </asp:TemplateField>
 </Columns>
    </asp:GridView>

</asp:Content>
