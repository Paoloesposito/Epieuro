<%@ Page Title="" Language="C#" MasterPageFile="~/Site1.Master" AutoEventWireup="true" CodeBehind="ModificaArticolo.aspx.cs" Inherits="Epieuro.UserAuth.ModificaArticolo" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">

    <div class="container bootstrap snippets bootdey">
    <h1 class="text-primary">Edit Profile</h1>
      <hr>
	<div class="row">
      <!-- left column -->
      <div class="col-md-3">
        <div class="text-center">
            <div style="background-image: url(https://clipart-library.com/images_k/smartphone-png-transparent/smartphone-png-transparent-22.png);max-width: 700px; height: 400px; background-repeat:no-repeat; background-size:contain; background-position:center">
          <%--<img src="https://clipart-library.com/images_k/smartphone-png-transparent/smartphone-png-transparent-22.png" class="w-100" alt="avatar">--%>
             </div>
          <h6 >Upload a different photo...</h6>
          
          <input  type="file" class="form-control mb-4">
        </div>
      </div>
      
      <!-- edit form column -->
      <div class="col-md-9 personal-info">
        
        <h3 class="offset-md-3">Modifica Prodotto</h3>
        
        <div class="form-horizontal" role="form">
          <div class="form-group">
            <label class="col-lg-3 offset-md-3 control-label">Nome prodotto:</label>
            <div class="col-lg-8 offset-md-3">
                <asp:TextBox ID="TextBox1" CssClass="w-100" runat="server" ></asp:TextBox>
              <%--<input class="form-control" type="text" value="dey-dey">--%>
            </div>
          </div>
          <div class="form-group">
            <label class="col-lg-3 offset-md-3 control-label">Descrizione breve:</label>
            <div class="col-lg-8 offset-md-3">
                <asp:TextBox ID="TextBox2" CssClass="w-100" runat="server"></asp:TextBox>
              <%--<input class="form-control" type="text" value="bootdey">--%>
            </div>
          </div>
          <div class="form-group">
            <label class="col-lg-3 offset-md-3 control-label">Descrizione lunga:</label>
            <div class="col-lg-8 offset-md-3">
                <asp:TextBox ID="TextBox3" CssClass="w-100" runat="server"></asp:TextBox>
              <%--<input class="form-control" type="text" value="">--%>
            </div>
          </div>
        <div class="form-group">
            <label class="col-lg-3 offset-md-3 control-label">Specifiche prodotto:</label>
            <div class="col-lg-8 offset-md-3">
                <asp:TextBox ID="TextBox4" CssClass="w-100" runat="server"></asp:TextBox>
                <%--<input class="form-control" type="text" value="">--%>
            </div>
        </div>



            <div class="form-group">
                <label class="col-lg-3 offset-md-3 control-label">Quantità:</label>
                <div class="col-lg-8 offset-md-3">
                    <input type="number" class="form-control">
                </div>
            </div>
            <div class="w-100 d-flex gap-4 offset-md-3">

                <div class="form-group">
    <label class="col-lg-3 offset-md-3 control-label">Categoria:</label>
    <div class="col-lg-8 offset-md-3">
        <div class="ui-select">
            <asp:DropDownList ID="Categorie" runat="server">
                <asp:ListItem>Tutte le categorie...</asp:ListItem>
                <asp:ListItem></asp:ListItem>

                <asp:ListItem></asp:ListItem>

                <asp:ListItem></asp:ListItem>

                <asp:ListItem></asp:ListItem>

            </asp:DropDownList>

        </div>
    </div>
</div>

<div class="form-group">
    <label class="col-lg-3 offset-md-3 control-label">Marchio:</label>
    <div class="col-lg-8 offset-md-3">
        <div class="ui-select">
            <asp:DropDownList ID="BrandList" runat="server">
                <asp:ListItem>tutti i brand...</asp:ListItem>
                <asp:ListItem></asp:ListItem>
                <asp:ListItem></asp:ListItem>
                <asp:ListItem></asp:ListItem>
                <asp:ListItem></asp:ListItem>
            </asp:DropDownList>
        </div>
    </div>
</div>

            </div>
        </div>
      </div>
  </div>
</div>

</asp:Content>
