<%@ Page Title="" Language="C#" MasterPageFile="~/shop.Master" AutoEventWireup="true"
    CodeBehind="Cart.aspx.cs" Inherits="EShop.Cart" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <style type="text/css">
        .title_demo
        {
            margin: 10px 0px 0px 0px;
            font-family: 宋体;
            font-size: small;
            padding-left: 20px;
            color: #6C6C6C;
            text-align: left;
        }
        .cart_item_frame
        {
            width: 980px;
            border-top-style: solid;
            border-top-width: 1px;
            border-top-color: #D0EAFF;
            border-bottom-style: solid;
            border-bottom-width: 1px;
            border-bottom-color: #D0EAFF;
            background-color: #FAFFFF;
            text-align: left;
            vertical-align: middle;
        }
        .product_name
        {
            vertical-align: middle;
            padding-left: 20px;
            float: left;
            padding-top: 20px;
            width: 250px;
        }
        .cart_footer
        {
            text-align: right;
            width: 960px;
            padding: 0 10px 0 10px;
            margin-top: 10px;
            background-color: #FAFFFF;
            vertical-align: bottom;
            height: 111px;
        }
        .frame
        {
            width: 1000px;
            text-align: center;
            height: auto;
        }
        .btn
        {
            color: #FFFFFF;
            font-weight: bold;
            border: 1px outset #999999;
            background-color: #59A9BF;
            margin-left: 5px;
        }
        .chk_frame
        {
            width: 50px;
            float: left;
            height: 80px;
            padding-top: 30px;
        }
        .picture_frame
        {
            width: 100px;
            float: left;
            height: 104px;
        }
        .product_frame
        {
            vertical-align: middle;
            padding-left: 30px;
            float: left;
            padding-top: 20px;
            width: 250px;
        }
        .price_frame
        {
            width: 80px;
            float: left;
            padding-left: 0px;
            padding-top: 20px;
            text-align: center;
        }
        .num_frame
        {
            width: 109px;
            float: left;
            padding-left: 20px;
            padding-top: 20px;
            margin-left: 30px;
        }
        .sum_frame
        {
            float: left;
            width: 71px;
            padding-left: 20px;
            padding-top: 20px;
        }
        .oper_frame
        {
            float: left;
            width: 80px;
            padding-left: 20px;
            padding-top: 20px;
        }
        .cart_head_frame
        {
            width: 980px;
            border-top-style: solid;
            border-top-width: 1px;
            border-top-color: #D0EAFF;
            border-bottom-style: solid;
            border-bottom-width: 1px;
            border-bottom-color: #D0EAFF;
            background-color: #EEEEEE;
            text-align: left;
            vertical-align: middle;
            height: 30px;
            font-family: 微软雅黑;
            font-size: small;
            font-weight: bold;
            color: #333300;
        }
        .cart_content
        {
            margin: 0px 0px 0px 0px;
            text-align: center;
        }
        .title_bar
        {
            width: 100%;
            float: left;
        }
        .head_item
        {
            width: 80px;
            text-align: center;
            padding-top: 5px;
            float: left;
            font-size: medium;
            padding-left: 20px;
        }
        .style1
        {
            width: 100%;
            float: left;
            text-align: left;
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <div class="frame">
        <div class="style1">
            <img alt="" src="image/shopcart.gif" style="width: 150px; height: 32px" />
        </div>
        <div class="title_demo">
            如果您对购物车里面的商品满意，请点击结算
        </div>
        <div class="cart_content">
            <asp:DataList ID="DataList1" runat="server" DataKeyField="CartId" DataSourceID="SqlDataSource1"
                Width="1000px" Height="25px" onitemdatabound="DataList1_ItemDataBound" 
                ondeletecommand="DataList1_DeleteCommand" 
                onitemcommand="DataList1_ItemCommand" onitemcreated="DataList1_ItemCreated">
                <HeaderTemplate>
                    <div class="cart_head_frame">
                        <div style="width: 400px;" class="head_item ">
                            商品名称
                        </div>
                        <div class="head_item ">
                            E商城价
                        </div>
                        <div class="head_item ">
                            数量
                        </div>
                        <div class="head_item ">
                            小计
                        </div>
                        <div class="head_item ">
                            操作</div>
                    </div>
                </HeaderTemplate>
                <ItemTemplate>
                    <div class="cart_item_frame">
                        <div class="chk_frame">
                            <asp:CheckBox ID="chk_Select" runat="server" AutoPostBack="True" 
                                oncheckedchanged="chk_Select_CheckedChanged" Text='<%# Eval("MerId") %>' />
                        </div>
                        <div class="picture_frame">
                            <asp:Image ID="Img_Product" runat="server" Height="67px" ImageUrl='<%# Eval("Picture") %>'
                                Width="94px" />
                        </div>
                        <div class="product_frame">
                            <asp:HyperLink ID="hl_productname" runat="server" NavigateUrl='<%# Eval("MerId", "detail.aspx?id={0}") %>'
                                Text='<%# Eval("MerName") %>'></asp:HyperLink>
                        </div>
                        <div class="price_frame">
                            <asp:Label ID="lbl_Price" runat="server" Text='<%# Eval("Price", "{0:C}") %>'></asp:Label>
                            <br />
                            <asp:Label ID="lbl_sprice" runat="server" Text='<%# Eval("SPrice", "{0:C}") %>'></asp:Label>
                        </div>
                        <div class="num_frame">
                            <asp:TextBox ID="txt_num" runat="server" Width="37px" 
                                Text='<%# Eval("Amount") %>'></asp:TextBox>
                            <asp:Button ID="Button1" runat="server" Text="修改数量" CommandName="operNum" />
                        </div>
                        <div class="sum_frame">
                            <asp:Label ID="lbl_sum" runat="server" Text=""></asp:Label>
                        </div>
                        <div class="oper_frame">
                            <asp:Button ID="btn_oper" runat="server" Text="删除" CommandName="Delete" />
                        </div>
                    </div>
                </ItemTemplate>
            </asp:DataList>
            <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:eshopConnectionString %>"
                SelectCommand="SELECT cart.MerId, cart.CartId, cart.Amount, merchandisc.MerName, merchandisc.Price, merchandisc.SPrice, merchandisc.Picture, cart.MemberId FROM cart INNER JOIN merchandisc ON cart.MerId = merchandisc.MerId WHERE (cart.MemberId = @memberId)">
                <SelectParameters>
                    <asp:SessionParameter Name="memberId" SessionField="userid" />
                </SelectParameters>
            </asp:SqlDataSource>
        </div>
        <div class="cart_footer">
            <div style="float: left; width: 80px; text-align: left; height: 100%">
                <asp:CheckBox ID="chk_All" runat="server" Text="全选" AutoPostBack="True" 
                    oncheckedchanged="chk_All_CheckedChanged" />
            </div>
            <div style="float: right;">
                <asp:Button ID="btnShop" runat="server" Text="继续购物" CssClass="btn" 
                    onclick="btnShop_Click" />
                <asp:Button ID="btnOrder" runat="server" Text="结算" CssClass="btn" 
                    onclick="btnOrder_Click" />
            </div>
            <div style="float: left; width: 150px; height: 25px; vertical-align: bottom; padding-top: 5px">
                <asp:Label ID="lblTotal" runat="server" Text="商品金额总计：" Font-Names="黑体" Font-Size="Small"></asp:Label>
            </div>
        </div>
    </div>
</asp:Content>
