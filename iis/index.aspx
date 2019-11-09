<%@ Page Language="C#"  AutoEventWireup="true" Inherits="_Default"MasterPageFile="~/MasterPage.master" Title="无标题页" %>


<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="Server">
    //<style type= >
/*---------prod_box----------*/
.prod_box
{
	width: 173px;
	height: auto;
	float: left;
	padding: 10px 10px 10px 11px;
}
.top_prod_box
{
	width: 173px;
	height: 12px;
	background: url(image/product_box_top.gif) no-repeat center bottom;
	float: left;
	padding: 0px;
	margin: 0px;
}
.bottom_prod_box
{
	width: 173px;
	height: 10px;
	background: url(image/product_box_bottom.gif) no-repeat center top;
	float: left;
	padding: 0px;
	margin: 0px;
}
.center_prod_box
{
	width: 173px;
	height: auto;
	background: url(image/product_box_center.gif) repeat-y;
	float: left;
	text-align: center;
	padding: 0px;
	margin: 0px;
}
.prod_details_tab
{
	width: 173px;
	height: 31px;
	float: left;
	background: url(image/products_details_bg.gif) no-repeat center;
	margin: 3px 0 0 0;
}
img.left_bt
{
	float: left;
	padding: 6px 0 0 6px;
}
a.prod_details
{
	width: 25px;
	display: block;
	float: left;
	background: url(image/square-blue-add.gif) no-repeat left;
	padding: 0 0 0 20px;
	margin: 7px 0 0 38px;
	_margin: 6px 0 0 35px;
	text-decoration: none;
	color: #0fa0dd;
}


</style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="Server">
    <div class="center_content">
        <div class="center_title_bar">
            <div class="center_title_left">
                <img alt="" src="image/l_center_newproduct.gif" style="width: 166px; height: 34px" />
            </div>
            <div class="center_title_right">
            </div>
        </div>
        <asp:DataList ID="DataList2" runat="server" Width="96%" RepeatColumns="3" RepeatDirection="Horizontal"
            DataSourceID="SqlDataSource1">
            <ItemTemplate>
                <div class="prod_box">
                    <div class="top_prod_box">
                    </div>
                    <div class="center_prod_box">
                        <div class="product_title">
                            <a href="detail.aspx">
                                <%#Eval("MerName") %></a></div>
                        <div class="product_img">
                            <a href='<%# Eval("MerId","detail.aspx?id={0}") %>'>
                                <asp:Image ID="Image1" runat="server" Height="75px" ImageUrl='<%# Eval("Picture") %>'
                                    Width="113px" /></a>
                        </div>
                        <div class="prod_price">
                            <span class="reduce">原价：<%# Eval("price") %></span>&nbsp;<span class="price"><font color="red">促销价：<%# Eval("sprice") %></font></span></div>
                    </div>
                    <div class="bottom_prod_box">
                    </div>
                    <div class="prod_details_tab">
                        <a href='<%# Eval("MerId","detail.aspx?id={0}") %>' title="header=[Add to cart] body=[&nbsp;] fade=[on]">
                            <img alt="" border="0" class="left_bt" src="image/cart.gif" title="" /></a>
                        <a class="prod_details" href='<%# Eval("MerId","detail.aspx?id={0}") %>'>details</a>
                    </div>
                </div>
            </ItemTemplate>
        </asp:DataList>
        <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:eshopConnectionString %>"
            SelectCommand="SELECT TOP 6 MerId, category, MerName, Price, SPrice, Picture, GoodDesc, GoodFacturer, LeaveFactoryDate, Special, inputdate, bengindate, enddate FROM merchandisc WHERE MerId>4 ORDER BY inputdate DESC">
        </asp:SqlDataSource>
        <!-- end of 商品速递 -->
        <div class="center_title_bar">
            <div class="center_title_left">
                <img alt=""src="image/l_center_newproduct.gif" style="width: 165px; height: 28px" />
            </div>
            <div class="center_title_right">
            </div>
        </div>
        <asp:DataList ID="DataList3" runat="server" Width="100%" RepeatColumns="3" RepeatDirection="Horizontal"
            DataSourceID="SqlDataSource2">
            <ItemTemplate>
                <div class="prod_box">
                    <div class="top_prod_box">
                    </div>
                    <div class="center_prod_box">
                        <div class="product_title">
                            <a href="detail.aspx">
                                <%#Eval("MerName") %></a></div>
                        <div class="product_img">
                       <a href = '<%# Eval("MerId","detail.aspx?id={0}") %>'>
                            <asp:Image ID="Image1" runat="server" Height="75px" ImageUrl='<%# Eval("Picture") %>'
                                Width="113px" /></a>
                        </div>
                        <div class="prod_price">
                            <span class="reduce">原价：<%# Eval("price") %></span>&nbsp;<span class="price"><font color="red">促销价：<%# Eval("sprice") %></font></span></div>
                    </div>
                    <div class="bottom_prod_box">
                    </div>
                    <div class="prod_details_tab">
                        <a href='<%# Eval("MerId","detail.aspx?id={0}") %>' title="header=[Add to cart] body=[&nbsp;] fade=[on]">
                            <img alt="" border="0" class="left_bt" src="image/cart.gif" title="" /></a>&nbsp;&nbsp;
                        <a class="prod_details" href='<%# Eval("MerId","detail.aspx?id={0}") %>'>details</a>
                    </div>
                </div>
            </ItemTemplate>
        </asp:DataList>
        <asp:SqlDataSource ID="SqlDataSource2" runat="server" ConnectionString="<%$ ConnectionStrings:eshopConnectionString %>"
            SelectCommand="SELECT TOP 6 MerId, category, MerName, Price, SPrice, Picture, GoodDesc, GoodFacturer, LeaveFactoryDate, Special, inputdate, bengindate, enddate FROM merchandisc WHERE (Special = 1) ORDER BY bengindate DESC">
        </asp:SqlDataSource>
        <!-- end of 推荐商品 -->
    </div>
</asp:Content>
