<%@ Page Title="" Language="C#" MasterPageFile="~/Site1.Master" AutoEventWireup="true" CodeBehind="TuttiGliArticoli.aspx.cs" Inherits="Epieuro.UserAuth.TuttiGliArticoli" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <table class="table mt-5">
  <thead>
    <tr>
      <th scope="col">ID</th>
      <th scope="col">Prodotto</th>
      <th scope="col">Quantità</th>
      <th scope="col">Brand</th>
      <th scope="col">Prezzo</th>
      <th scope="col">Categoria</th>
      <th scope="col"></th>
    </tr>
  </thead>
  <tbody id="tbody" runat="server">
    <%--<tr>
      <th scope="row">1</th>
      <td>Mark</td>
      <td>Otto</td>
      <td>@mdo</td>
      <td>@mdo</td>
      <td>@mdo</td>
      <td>@mdo</td>
    </tr>--%>
    
  </tbody>
</table>
</asp:Content>
