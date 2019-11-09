<%@ Page Title="" Language="C#" MasterPageFile="~/admin/manage.master" AutoEventWireup="true" CodeBehind="orderSearch.aspx.cs" Inherits="EShop.admin.order" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <style type="text/css">
        .item_head
        {
            width: 110px;
            font-family: 微软雅黑;
            font-size: small;
            font-weight: bold;
            text-align: center;
            float: left;
            color: #5AA18F;
            padding-bottom: 5px;
            padding-top: 5px;
        }
        .repeater_head
        {
            width: 740px;
            font-family: 宋体;
            font-size: small;
            font-weight: normal;
            text-align: center;
            float: left;
            color: #5AA18F;
            padding-bottom: 5px;
            padding-top: 5px;
            border-bottom-style: solid;
            border-bottom-width: 2px;
            margin-left: 10px;
        }
        .reapter_item
        {
            width: 740px;
            float: left;
            margin-left: 10px;
        }
        .item_list
        {
            width: 110px;
            font-family: 宋体;
            font-size: small;
            text-align: center;
            float: left;
            height: 30px;
            border-bottom-style: solid;
            border-bottom-width: 2px;
            border-bottom-color: #DDDDDD;
            padding: 10px 0 0 0;
            vertical-align: bottom;
        }
        .content_frame
        {
            border: thin solid #EEEEEE;
            width: 760px;
            margin-bottom: 40px;
            float: left;
            height: auto;
        }
        .search_item
        {
            width: 760px;
            float: left;
        }
        .radio_search
        {
            padding: 4px 15px 0px 0px;
            width: 100px;
            font-size: 12px;
            color: #333333;
            text-align: left;
            float: left;
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder2" runat="server">
    <p>订单管理</p>
</asp:Content>
<asp:Content ID="Content3" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <div class="search_item">
        <asp:RadioButton ID="RadioButton1" runat="server" CssClass="radio_search" 
            Text="订单号  " />
        <asp:TextBox ID="txtOrderid" runat="server"></asp:TextBox>
        <asp:Button ID="Button1" runat="server" onclick="Button1_Click" Text="GO" />
    </div>
    <div class="search_item">
        <asp:RadioButton ID="RadioButton2" runat="server" CssClass="radio_search" 
            GroupName="1" Text="订单状态" />
        <asp:DropDownList ID="dropStatus" runat="server" AutoPostBack="True" 
            CssClass="rightInput" Height="16px" 
            onselectedindexchanged="dropStatus_SelectedIndexChanged" Width="130px">
            <asp:ListItem Value="0">已经下单</asp:ListItem>
            <asp:ListItem Value="1">已经付款</asp:ListItem>
            <asp:ListItem Value="2">已经发货</asp:ListItem>
            <asp:ListItem Value="3">已经收货</asp:ListItem>
            <asp:ListItem Value="4">完成评价</asp:ListItem>
        </asp:DropDownList>
    </div>
    <div class=" content_frame">
        <asp:Repeater ID="Repeater1" runat="server" DataSourceID="SqlDataSource1" 
            OnItemCommand="Repeater1_ItemCommand" OnItemDataBound="Repeater1_ItemDataBound">
            <HeaderTemplate>
                <div class="repeater_head">
                    <div class="item_head">
                        订单号</div>
                    <div class="item_head ">
                        收货人</div>
                    <div class="item_head ">
                        订单总额</div>
                    <div class="item_head ">
                        订单状态</div>
                    <div class="item_head " style="width: 180px">
                        下单时间</div>
                    <div class="item_head ">
                        操作</div>
                </div>
            </HeaderTemplate>
            <ItemTemplate>
                <div class="reapter_item">
                    <asp:Label ID="lblOrderid" runat="server" CssClass=" item_list  " 
                        ForeColor="#1A66B3" Text='<% #Eval("OrderId") %> '></asp:Label>
                    <asp:Label ID="lblAddressee" runat="server" CssClass=" item_list  " 
                        Text='<% #Eval("Addressee") %>'></asp:Label>
                    <asp:Label ID="lblToal" runat="server" CssClass=" item_list  " 
                        Text='<% #Eval("Total","{0:C}") %>'></asp:Label>
                    <asp:Label ID="lblStatus" runat="server" CssClass=" item_list  " 
                        Text='<% #Eval("Status") %>'></asp:Label>
                    <asp:Label ID="lblOrderDate" runat="server" CssClass=" item_list  " 
                        Text='<% #Eval("OrderDate","{0:MM/dd/yyyy}") %>' Width="180px"></asp:Label>
                    <asp:LinkButton ID="lbtnOper" runat="server" CommandName="oper" 
                        CssClass="item_list ">付款</asp:LinkButton>
                    <asp:Label ID="Label1" runat="server" CssClass="item_list " Text="--" 
                        Visible="false"></asp:Label>
                </div>
            </ItemTemplate>
        </asp:Repeater>
        <asp:SqlDataSource ID="SqlDataSource1" runat="server" 
            ConnectionString="<%$ ConnectionStrings:eshopConnectionString %>" 
            SelectCommand="SELECT orders.OrderId, contact.Addressee, orders.Total, orders.Status, orders.OrderDate, contact.MemberId FROM orders INNER JOIN contact ON orders.ContactId = contact.ContactId ORDER BY orders.Status">
        </asp:SqlDataSource>
    </div>
</asp:Content>
