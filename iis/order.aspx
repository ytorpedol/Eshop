<%@ Page Title="" Language="C#" MasterPageFile="~/shop.Master" AutoEventWireup="true"
    CodeBehind="order.aspx.cs" Inherits="EShop.order" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <style type="text/css">
        .order_main
        {
            width: 998px;
            border: solid 1px silver;
            text-align: left;
            height: ;;;;;;auto;}
        .order_demo
        {
            width: 965px;
            height: auto;
            float: left;
            padding: 10px 10px 10px 20px;
        }
        .order_content
        {
            border: medium solid #EFEFEF;
            margin: 10px 0px 0px 0px;
            float: left;
            width: 990px;
            text-align: center;
            height: auto;
        }
        .order_item
        {
            border-bottom: thin dashed #EADBC9;
            float: left;
            width: 950px;
            text-align: left;
            font-size: medium;
            font-family: 黑体;
            padding-right: 20px;
            padding-left: 20px;
            height: 139px;
        }
        .address_frame
        {
            text-align: left;
            width: 950px;
            float: left;
            font-family: 微软雅黑;
            font-size: small;
            height: auto;
        }
        .btn
        {
            height: 27px;
            width: 70px;
            color: #FFFFFF;
            font-weight: bold;
            border: 1px outset #999999;
            background-color: #59A9BF;
            margin-left: 5px;
            text-align: right;
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <div id="order_main">
        <div class="address_frame ">
            <div style="height: 16px">
                <img alt="" src="image/balance.gif" style="width: 150px; height: 32px; float: left;" />
            </div>
            <div class="order_demo">
                <img alt="" src="image/shopcart_2.gif" style="width: 400px; height: 11px" />
            </div>
        </div>
        <div class="order_content">
            <span style="font-size: medium; font-family: 黑体; margin: 5px 0 5px 5px; float: left;
                width: auto;">商品清单</span>
            <div class="order_item">
                <span style="font-size: medium; font-family: 黑体; margin: 5px 0 5px 5px; float: left;
                    width: auto;">收货人信息</span>
                <div style="font-size: small; float: left; width: auto; margin: 5px 0 5px 10px;">
                    <asp:LinkButton ID="lnk_address" runat="server" 
                        PostBackUrl="~/myhome/myallorder.aspx">[添加地址]</asp:LinkButton>
                </div>
           
                <asp:RadioButtonList ID="RadioButtonList1" runat="server" DataSourceID="SqlDataSource1"
                    DataTextField="联系方式" DataValueField="ContactId" Style="text-align: left" Width="100%">
                </asp:RadioButtonList>
                <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:eshopConnectionString %>"
                    SelectCommand="SELECT ContactId, Addressee + ',' + address + ',' + phone AS 联系方式, MemberId FROM contact WHERE (MemberId = @MemberId)">
                    <SelectParameters>
                        <asp:SessionParameter Name="MemberId" SessionField="userid" />
                    </SelectParameters>
                </asp:SqlDataSource>
            </div>
        </div>
        <div class="order_content ">
            <div class="order_item ">
                <asp:Repeater ID="Repeater1" runat="server">
                    <HeaderTemplate>
                        <div style="background-color: #1C5E55; color: #333333">
                            所购商品
                        </div>
                    </HeaderTemplate>
                    <ItemTemplate>
                        <div style="width: 100%; background-color: #E3EAEB; height: 25px">
                            <asp:Label ID="lblId" runat="server" Text='<%# Eval("id") %>' ></asp:Label>
                            <asp:Label ID="lblName" runat="server" Text='<%# Eval("productname") %>'></asp:Label>
                            <asp:Label ID="lblPrice" runat="server" Text='<%# Eval("localPrice") %>'></asp:Label>
                            <asp:Label ID="lblAmount" runat="server" Text='<%# Eval("buycount") %>'></asp:Label>
                        </div>
                    </ItemTemplate>
                    <AlternatingItemTemplate>
                        <div style="width: 100%; background-color: White; height: 25px">
                            <asp:Label ID="lblId" runat="server" Text='<%# Eval("id") %>'></asp:Label>
                            <asp:Label ID="lblName" runat="server" Text='<%# Eval("productname") %>'></asp:Label>
                            <asp:Label ID="lblPrice" runat="server" Text='<%# Eval("localPrice") %>'></asp:Label>
                            <asp:Label ID="lblAmount" runat="server" Text='<%# Eval("buycount") %>'></asp:Label>
                        </div>
                    </AlternatingItemTemplate>
                </asp:Repeater>
                <span style="font-size: medium; font-family: 黑体; margin: 5px 0 5px 5px; float: left;
                    width: auto;">商品金额总计：<asp:Label ID="lblTotal" runat="server" Text="0"></asp:Label></span>&nbsp;
           <asp:Button ID="Button1" runat="server" Text="生成订单" CssClass="btn" 
                    onclick="Button1_Click" /> </div>
          
        </div>
    </div>
</asp:Content>
