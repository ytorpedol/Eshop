<%@ Page Title="" Language="C#" MasterPageFile="~/myhome/myhome.Master" AutoEventWireup="true"
    CodeBehind="myallorder.aspx.cs" Inherits="EShop.myhome.WebForm1" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <style type="text/css">
        .item_head
        {
            width: 100px;
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
            width: 100px;
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
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder2" runat="server">
    <p>
        我的订单</p>
</asp:Content>
<asp:Content ID="Content3" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <div style="width: 100%">
        <asp:Repeater ID="Repeater1" runat="server" DataSourceID="SqlDataSource1" 
            onitemcommand="Repeater1_ItemCommand" onitemdatabound="Repeater1_ItemDataBound">
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
                    <asp:Label ID="lblOrderid" runat="server" Text='<% #Eval("OrderId") %> ' CssClass=" item_list  "
                        ForeColor="#1A66B3"></asp:Label>
                    <asp:Label ID="lblAddressee" runat="server" Text='<% #Eval("Addressee") %>' CssClass=" item_list  "></asp:Label>
                    <asp:Label ID="lblToal" runat="server" Text='<% #Eval("Total","{0:C}") %>' CssClass=" item_list  "></asp:Label>
                    <asp:Label ID="lblStatus" runat="server" Text='<% #Eval("Status") %>' CssClass=" item_list  "></asp:Label>
                    <asp:Label ID="lblOrderDate" runat="server" Text='<% #Eval("OrderDate","{0:MM/dd/yyyy}") %>'
                        CssClass=" item_list  " Width="180px"></asp:Label>
                    <asp:LinkButton ID="lbtnOper" runat="server" CssClass="item_list " CommandName="oper">操作</asp:LinkButton>
                    <asp:Label ID="Label1" runat="server" Text="--" CssClass="item_list " Visible="false"></asp:Label>
                </div>
            </ItemTemplate>
        </asp:Repeater>
        <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:eshopConnectionString %>"
            SelectCommand="SELECT orders.OrderId, orders.MemberId, orders.ContactId, orders.Total, orders.Status, orders.OrderDate, orders.PayDate, orders.DeliverDate, orders.ReceiptDate, contact.Addressee FROM orders INNER JOIN contact ON orders.ContactId = contact.ContactId WHERE (orders.MemberId = @memberid)">
            <SelectParameters>
                <asp:SessionParameter Name="memberid" SessionField="userid" />
            </SelectParameters>
        </asp:SqlDataSource>
    </div>
</asp:Content>
