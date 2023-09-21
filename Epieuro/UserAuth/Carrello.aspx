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
                       
                    </div>
                </ItemTemplate>
            </asp:TemplateField>
        </Columns>
    </asp:GridView>
    <div id="totaleTesto" runat="server" class="d-flex justify-content-between me-2">
        
       
    </div>
    <%--<div class="d-flex align-items-center mt-5" id="carrelloBoxVuoto" runat="server">
        <img id="imgCarrelloVuoto" src="ImgCarrello/carrelloVuoto.png" />
        <h1 id="carrelloVuoto" class="textCarrelloVuoto" runat="server"></h1>
    </div>--%>

    <%-- CIAO*************************************************************************** --%>
    <%--<div class="d-flex justify-content-between">
        <div id="checkout" class="w-lg-100  ">
            <main class="mt-5 pt-4">
    <div class="container-fluid">
        <!-- Heading -->
        <h2 class="my-5 text-center">Checkout form</h2>

        <!--Grid row-->
        <div class="row">
            <!--Grid column-->
            <div class="col col-12 col-md-8 mb-4">
                <!--Card-->
                <div class="card p-4">
                    <!--Grid row-->
                    <div class="row mb-3">
                        <!--Grid column-->
                        <div class="col-md-6 mb-2">
                            <!--firstName-->
                            <div class="form-outline">
                                <input type="text" id="typeText" class="form-control" />
                                <label class="form-label" for="typeText">First name</label>
                            </div>
                        </div>
                        <!--Grid column-->

                        <!--Grid column-->
                        <div class="col-md-6 mb-2">
                            <!--lastName-->
                            <div class="form-outline">
                                <input type="text" id="typeText" class="form-control" />
                                <label class="form-label" for="typeText">Last name</label>
                            </div>
                        </div>
                        <!--Grid column-->
                    </div>
                    <!--Grid row-->

                    <!--Username-->
                    <div class="input-group mb-4">
                        <span class="input-group-text" id="basic-addon1">@</span>
                        <input type="text" class="form-control" placeholder="Username" aria-label="Username" aria-describedby="basic-addon1" />
                    </div>

                    <!--email-->
                    <p class="mb-0">
                        Email (optional)
                    </p>
                    <div class="form-outline mb-4">
                         <input type="email" class="form-control" placeholder="youremail@example.com" aria-label="youremail@example.com" aria-describedby="basic-addon1" />
                    </div>

                    <!--address-->
                    <p class="mb-0">
                        Address
                    </p>
                    <div class="form-outline mb-4">
                        <input type="email" class="form-control" placeholder="1234 Main St" aria-label="1234 Main St" aria-describedby="basic-addon1" />
                    </div>

                    <!--address-2-->
                    <p class="mb-0">
                        Address 2 (optional)
                    </p>
                    <div class="form-outline mb-4">
                        <input type="email" class="form-control" placeholder="Apartment or suite" aria-label="Apartment or suite" aria-describedby="basic-addon1" />
                    </div>

                    <!--Grid row-->
                    <div class="row">
                        <!--Grid column-->
                        <div class="col-lg-4 col-md-12 mb-4">
                            <p class="mb-0">
                                Country
                            </p>
                            <div class="form-outline mb-4">
                        <input type="email" class="form-control" placeholder="United States" aria-label="United States" aria-describedby="basic-addon1" />
                    </div>
                        </div>
                        <!--Grid column-->

                        <!--Grid column-->
                        <div class="col-lg-4 col-md-12 mb-4">
                            <p class="mb-0">
                                State
                            </p>
                            <div class="form-outline mb-4">
                        <input type="email" class="form-control" placeholder="California" aria-label="California" aria-describedby="basic-addon1" />
                    </div>
                        </div>
                        <!--Grid column-->

                        <!--Grid column-->
                        <div class="col-lg-4 col-md-12 mb-4">
                            <p class="mb-0">
                                Zip
                            </p>
                            <div class="form-outline">
                                <input type="text" class="form-control"/>
                            </div>
                        </div>
                        <!--Grid column-->
                    </div>
                    <!--Grid row-->

                    <hr />
                    <div class="form-check">
                        <input class="form-check-input" type="checkbox" value="" id="flexCheckDefault" />
                        <label class="form-check-label" for="flexCheckDefault">Shipping address is the same as my billing address</label>
                    </div>

                    <div class="form-check">
                        <input class="form-check-input" type="checkbox" value="" id="flexCheckDefault" />
                        <label class="form-check-label" for="flexCheckDefault">Save this information for next time</label>
                    </div>

                    <hr />

                    <div class="my-3">
                        <div class="form-check">
                            <input class="form-check-input" type="radio" name="flexRadioDefault" id="flexRadioDefault1" checked />
                            <label class="form-check-label" for="flexRadioDefault1"> Credit card </label>
                        </div>

                        <div class="form-check">
                            <input class="form-check-input" type="radio" name="flexRadioDefault" id="flexRadioDefault2" />
                            <label class="form-check-label" for="flexRadioDefault2"> Debit card </label>
                        </div>
                        <div class="form-check">
                            <input class="form-check-input" type="radio" name="flexRadioDefault" id="flexRadioDefault3" />
                            <label class="form-check-label" for="flexRadioDefault3"> Paypal </label>
                        </div>
                    </div>
                    <div class="row mb-3">
                        <div class="col-md-6 mb-3">
                            <p class="mb-0">
                                Name on card
                            </p>
                            <div class="form-outline">
                                <input type="text" class="form-control"/>
                                <div class="form-helper">Full name as displayed on card</div>
                            </div>
                        </div>
                        <div class="col-md-6 mb-3">
                            <p class="mb-0">
                                Credit card number
                            </p>
                            <div class="form-outline">
                                <input type="text" class="form-control" />                                
                            </div>
                        </div>
                    </div>
                    <div class="row">
                        <div class="col-md-3 mb-3">
                            <p class="mb-0">
                                Expiration
                            </p>
                            <div class="form-outline">
                                <input type="text" class="form-control" />
                                
                            </div>
                        </div>
                        <div class="col-md-3 mb-3">
                            <p class="mb-0">
                                CVV
                            </p>
                            <div class="form-outline">
                                <input type="text" class="form-control" />
                                
                            </div>
                        </div>
                    </div>
                    <hr class="mb-4" />                    
                  <button class="btn btn-primary" type="button">Continue to checkout</button>
                </div>
                <!--/.Card-->
            </div>
            <!--Grid column-->

            <!--Grid column-->
            <div class="col col-12 col-md-4 mb-4">
                <!-- Heading -->
                <h4 class="d-flex justify-content-between align-items-center mb-3">
                    <span class="text-muted">Your cart</span>
                    <span class="badge rounded-pill badge-primary">3</span>
                </h4>

                <!-- Cart -->
                <ul class="list-group mb-3">
                    <li class="list-group-item d-flex justify-content-between">
                        <div>
                            <h6 class="my-0">Product name</h6>
                            <small class="text-muted">Brief description</small>
                        </div>
                        <span class="text-muted">$12</span>
                    </li>
                    <li class="list-group-item d-flex justify-content-between">
                        <div>
                            <h6 class="my-0">Second product</h6>
                            <small class="text-muted">Brief description</small>
                        </div>
                        <span class="text-muted">$8</span>
                    </li>
                    <li class="list-group-item d-flex justify-content-between">
                        <div>
                            <h6 class="my-0">Third item</h6>
                            <small class="text-muted">Brief description</small>
                        </div>
                        <span class="text-muted">$5</span>
                    </li>
                    <li class="list-group-item d-flex justify-content-between bg-light">
                        <div class="text-success">
                            <h6 class="my-0">Promo code</h6>
                            <small>EXAMPLECODE</small>
                        </div>
                        <span class="text-success">-$5</span>
                    </li>
                    <li class="list-group-item d-flex justify-content-between">
                        <span>Total (USD)</span>
                        <strong>$20</strong>
                    </li>
                </ul>
                <!-- Cart -->

                <!-- Promo code -->
                <form class="card p-2">
                    <div class="input-group mb-3">
  <input
    type="text"
    class="form-control"
    placeholder="Promo code"
    aria-label="Promo code"
    aria-describedby="button-addon2"
  />
  <button class="btn btn-primary" type="button" id="button-addon2" data-mdb-ripple-color="dark">
    redeem
  </button>
</div>
                </form>
                <!-- Promo code -->
            </div>
            <!--Grid column-->
        </div>
        <!--Grid row-->
    </div>
</main>
        </div>
        <div id="articoli"  style="width:300px" class="d-none d-lg-block">
                     <div class=" g-4 d-flex flex-column md-3 align-items-center  pt-5   ">
                <div class="pe-5 pt-5 mt-5 text-center">
    <h3>Potrebbe piacerti anche</h3>
</div>
             <div class="col w-100 me-5 ">
                 <div class="card h-100 ">
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
           <div class="col w-100 me-5 ">
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
          <div class="col w-100 me-5 ">
                 <div class="card h-100">
                     <img src="https://photo.yeppon.it/msi-notebook-gaming-stealth/10-108957210_3818074107.jpg?tr=w-750,c-at_max:w-750,cm-pad_extract,bg-FFFFFF" class="card-img-top" alt="...">
                     <div class="card-body">
                         <h5 class="card-title">Card title</h5>
                         <p class="card-text">This is a wider card with supporting text below as a natural lead-in to additional content. This card has even longer content than the first to show that equal height action.</p>
                     </div>
                     </div>
                     </div>
                     <div class="card-footer">
                         <small class="text-body-secondary">Last updated 3 mins ago</small>
                     </div>
                 </div>
        </div>
    </div>--%>
    <link href="https://maxcdn.bootstrapcdn.com/font-awesome/4.3.0/css/font-awesome.min.css" rel="stylesheet">
    <div class="container">
        <div class="wrapper wrapper-content animated fadeInRight">
            <div class="row">
                <asp:Repeater ID="Repeater1" runat="server" ItemType="Epieuro.Classi.Prodotto">
                    <ItemTemplate>
                <div class="col-md-9">
                    <div class="ibox">
                        <div class="ibox-title">
                            <span class="pull-right">(<strong>5</strong>) items</span>
                            <h5>Items in your cart</h5>
                        </div>
                        <div class="ibox-content">
                            <div class="table-responsive">
                                <table class="table shoping-cart-table">
                                    <tbody>
                                        <tr>
                                            <td width="90">
                                                <div class="cart-product-imitation">
                                                </div>
                                            </td>
                                            <td class="desc">
                                                <h3>
                                                    <a href="#" class="text-navy"><%# Item.Nome %>
                                                    </a>
                                                </h3>
                                                <p class="small">
                                                <%# Item.DescrizioneBreve %>
                                                </p>
                                                <dl class="small m-b-none">
                                                    <dt>Description lists</dt>
                                                    <dd>A description list is perfect for defining terms.</dd>
                                                </dl>

                                                <div class="m-t-sm">
                                                    <a href="Dettaglio.aspx" class="text-muted"><i class="fa fa-gift"></i>Details</a>
                                                    |
                                                     <asp:Button ID="Elimina" runat="server" CssClass="btn btn-outline-danger" Text="Button" CommandArgument="<%# Item.IdProdotto %>" OnClick="Elimina_Click" />
                                      <i class="fa fa-trash"></i>Remove item
                                                </div>
                                            </td>

                                            <td><%# Item.Prezzo %>
                                    <s class="small text-muted">$230,00</s>
                                            </td>
                                            <td width="65">
                                                <input type="text" class="form-control" placeholder="<%# Item.quantitaAcquistata %>">
                                            </td>
                                            <td>
                                                <h4><%# Item.Prezzo %>
                                                </h4>
                                            </td>
                                        </tr>
                                    </tbody>
                                </table>
                            </div>
                            </ItemTemplate>
                            </asp:Repeater>
                        </div>
                        <div class="ibox-content">
                            <button class="btn btn-primary pull-right"><i class="fa fa fa-shopping-cart"></i>Checkout</button>
                            <button class="btn btn-white"><i class="fa fa-arrow-left"></i>Continue shopping</button>

                        </div>
                    </div>

                </div>
                <div class="col-md-3">
                    <div class="ibox">
                        <div class="ibox-title">
                            <h5>Cart Summary</h5>
                        </div>
                        <div class="ibox-content">
                            <span>Total
                            </span>
                             <asp:Label ID="totale" CssClass="fw-bold text-white" runat="server" Text="Label"></asp:Label>

                            <hr>
                            <span class="text-muted small">*For United States, France and Germany applicable sales tax will be applied
                            </span>
                            <div class="m-t-sm">
                                <div class="btn-group">
                                    <a href="#" class="btn btn-primary btn-sm"><i class="fa fa-shopping-cart"></i>Checkout</a>
                                    <asp:Button ID="ButtonSvuotaCarrello" CssClass="custom-btn" runat="server" Text="Svuota Carrello" OnClick="ButtonSvuotaCarrello_Click" />
                                </div>
                            </div>
                        </div>
                    </div>

                    <div class="ibox">
                        <div class="ibox-title">
                            <h5>Support</h5>
                        </div>
                        <div class="ibox-content text-center">
                            <h3><i class="fa fa-phone"></i>+43 100 783 001</h3>
                            <span class="small">Please contact with us if you have any questions. We are avalible 24h.
                            </span>
                        </div>
                    </div>

                    <div class="ibox">
                        <div class="ibox-content">

                            <p class="font-bold">
                                Other products you may be interested
                            </p>
                            <hr>
                            <div>
                                <a href="#" class="product-name">Product 1</a>
                                <div class="small m-t-xs">
                                    Many desktop publishing packages and web page editors now.
                                </div>
                                <div class="m-t text-righ">

                                    <a href="#" class="btn btn-xs btn-outline btn-primary">Info <i class="fa fa-long-arrow-right"></i></a>
                                </div>
                            </div>
                            <hr>
                            <div>
                                <a href="#" class="product-name">Product 2</a>
                                <div class="small m-t-xs">
                                    Many desktop publishing packages and web page editors now.
                                </div>
                                <div class="m-t text-righ">

                                    <a href="#" class="btn btn-xs btn-outline btn-primary">Info <i class="fa fa-long-arrow-right"></i></a>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
</asp:Content>
