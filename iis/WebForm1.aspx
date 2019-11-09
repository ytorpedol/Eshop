<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="WebForm1.aspx.cs" Inherits="EShop.WebForm1" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html xmlns="http://www.w3.org/1999/xhtml" >
<head runat="server">
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
    <div>
    <asp:DataList ID="DataList1" runat="server" DataKeyField="CartId" DataSourceID="SqlDataSource1"
        Width="100%">
        <ItemTemplate>
            <div class="cart_item_frame">
                <div class="chk_frame">
                </div>
                <div class="picture_frame">
                    <asp:Image ID="Image1" runat="server" Height="96px" 
                        ImageUrl='<%# Eval("Picture") %>' Width="87px" />
                </div>
                <div class="product_name">
                    <asp:HyperLink ID="HyperLink1" runat="server" 
                        NavigateUrl='<%# Eval("MerId", "detail.aspx?id={0}") %>' 
                        Text='<%# Eval("MerName") %>'></asp:HyperLink>
                </div>
                <div class="price_frame">
                    <asp:Label ID="Label1" runat="server" Text='<%# Eval("Price", "{0:C}") %>'></asp:Label>
                    <br />
                </div>
                <div class="sprice_frame">
                    <asp:Label ID="Label2" runat="server" Text='<%# Eval("SPrice", "{0:C}") %>'></asp:Label>
                </div>
                <div class="sum_frame">
                </div>
                <div class="oper_frame">
                </div>
            </div>
            <br />
        </ItemTemplate>
    </asp:DataList>
    <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:eshopConnectionString %>"
        SelectCommand="SELECT cart.MerId, cart.CartId, cart.Amount, merchandisc.MerName, merchandisc.Price, merchandisc.SPrice, merchandisc.Picture, cart.MemberId FROM cart INNER JOIN merchandisc ON cart.MerId = merchandisc.MerId WHERE (cart.MemberId = @memberId)">
        <SelectParameters>
            <asp:SessionParameter Name="memberId" SessionField="id" />
        </SelectParameters>
    </asp:SqlDataSource>
    </div>
    </form>
</body>
</html>
