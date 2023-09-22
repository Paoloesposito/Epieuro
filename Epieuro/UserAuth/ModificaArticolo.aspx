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
                <div id="ImmagineProdotto" runat="server" class="text-center">
                    <div style="height: 300px">
                        <asp:Image ID="Image1" Height="300" runat="server" />

                    </div>
                    <h6>Upload a different photo...</h6>



                    <asp:FileUpload ID="UploadImage" CssClass="form-control mb-4" runat="server" />
                </div>
            </div>

            <!-- edit form column -->
            <div class="col-md-9 personal-info">

                <h3 class="offset-md-3">Modifica Prodotto</h3>

                <div class="form-horizontal" role="form">
                    <div class="form-group">
                        <label class="col-lg-3 offset-md-3 control-label">Nome prodotto:</label>
                        <div class="col-lg-8 offset-md-3">
                            <asp:TextBox ID="NomeProdotto" CssClass="w-100" runat="server"></asp:TextBox>
                            <%--<input class="form-control" type="text" value="dey-dey">--%>
                        </div>
                    </div>
                    <div class="form-group">
                        <label class="col-lg-3 offset-md-3 control-label">Descrizione breve:</label>
                        <div class="col-lg-8 offset-md-3">
                            <asp:TextBox ID="DescrizioneBreve" CssClass="w-100" runat="server"></asp:TextBox>
                            <%--<input class="form-control" type="text" value="bootdey">--%>
                        </div>
                    </div>
                    <div class="form-group">
                        <label class="col-lg-3 offset-md-3 control-label">Descrizione lunga:</label>
                        <div class="col-lg-8 offset-md-3">
                            <asp:TextBox ID="DescrizioneLunga" CssClass="w-100" runat="server"></asp:TextBox>
                            <%--<input class="form-control" type="text" value="">--%>
                        </div>
                    </div>
                    <div class="form-group">
                        <label class="col-lg-3 offset-md-3 control-label">Specifiche prodotto:</label>
                        <div class="col-lg-8 offset-md-3">
                            <asp:TextBox ID="SpecificheProdotto" CssClass="w-100" runat="server"></asp:TextBox>
                            <%--<input class="form-control" type="text" value="">--%>
                        </div>
                    </div>



                    <div class="form-group">
                        <label class="col-lg-3 offset-md-3 control-label">Quantità:</label>
                        <div class="col-lg-8 offset-md-3">
                            <asp:TextBox ID="Quantita" runat="server"></asp:TextBox>

                        </div>
                    </div>
                    <div class="w-100 d-flex gap-4 offset-md-3">

                        <div class="form-group">
                            <label class="col-lg-3 offset-md-3 control-label">Categoria:</label>
                            <div class="col-lg-8 offset-md-3">
                                <div class="ui-select">
                                    <asp:DropDownList ID="Cate" runat="server">
                                    </asp:DropDownList>

                                </div>
                            </div>
                        </div>


                        <div class="form-group">
                            <label class="col-lg-3 offset-md-3 control-label">Marchio:</label>
                            <div class="col-lg-8 offset-md-3">
                                <div class="ui-select">

                        <%-- Dropdown brand------------ --%>
                                    <asp:DropDownList ID="BrandList" runat="server">

                                       
                                    </asp:DropDownList>
                                </div>
                            </div>
                        </div>

                        <div class="form-group">

                            <div class="col-lg-8 offset-md-3">
                                <asp:Button ID="SaveButton" CssClass="btn-success" runat="server" Text="Salva" OnClick="SaveButton_Click" />

                            </div>
                        </div>
                        <div class="w-100 d-flex gap-4 offset-md-3">
                        </div>
                    </div>
                </div>
            </div>
        </div>
</asp:Content>
