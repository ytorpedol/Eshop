<%@ Page Title="" Language="C#" MasterPageFile="~/myhome/myhome.Master" AutoEventWireup="true" CodeBehind="evaluation.aspx.cs" Inherits="EShop.myhome.evaluation" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder2" runat="server">
    <p>
        商品评论</p>
</asp:Content>
<asp:Content ID="Content3" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <asp:DataList ID="DataList1" runat="server" DataKeyField="MerId" 
        DataSourceID="SqlDataSource1" RepeatColumns="1" RepeatDirection="Horizontal" 
        Style="text-align: left" Width="100%">
        <ItemTemplate>
            <div class="content_frame">
                <div class="datalist_item_row">
                    <asp:Label ID="lblMerName" runat="server" Font-Size="Medium" 
                        Style="text-decoration: underline;" Text='<%# Eval("MerName") %>' />
                </div>
                <div class="item_picture">
                    <asp:Image ID="Image1" runat="server" Height="84px" 
                        ImageUrl='<%# Eval("Picture", "~/{0}") %>' Width="103px" />
                </div>
                <div class="item_score">
                    <asp:Label ID="Label1" runat="server" CssClass="leftlabel" Text="评分" 
                        Width="39px"></asp:Label>
                    <asp:RadioButtonList ID="radl_grade" runat="server" 
                        RepeatDirection="Horizontal">
                        <asp:ListItem Value="1">★</asp:ListItem>
                        <asp:ListItem Value="2">★★</asp:ListItem>
                        <asp:ListItem Value="3">★★★</asp:ListItem>
                        <asp:ListItem Value="4">★★★★</asp:ListItem>
                        <asp:ListItem Value="5">★★★★★</asp:ListItem>
                    </asp:RadioButtonList>
                </div>
                <div class="item_score ">
                    <asp:Label ID="Label2" runat="server" CssClass="leftlabel " Text="评论标题：" 
                        Width="73px"></asp:Label>
                    <asp:TextBox ID="txt_topic" runat="server" Width="359px"></asp:TextBox>
                </div>
                <div class="item_score ">
                    <asp:Label ID="Label3" runat="server" CssClass="leftlabel " Text="评论内容： " 
                        Width="73px"></asp:Label>
                    <asp:TextBox ID="txt_content" runat="server" Height="134px" 
                        TextMode="MultiLine" Width="590px"></asp:TextBox>
                </div>
            </div>
        </ItemTemplate>
    </asp:DataList>
    <asp:Button ID="Button2" runat="server" onclick="Button2_Click" Text="发布评论" />
    <asp:SqlDataSource ID="SqlDataSource1" runat="server" 
        ConnectionString="<%$ ConnectionStrings:eshopConnectionString %>" 
        SelectCommand="SELECT orderDetail.MerId, merchandisc.MerName, merchandisc.Picture, orderDetail.OrderId FROM orderDetail INNER JOIN merchandisc ON orderDetail.MerId = merchandisc.MerId WHERE (orderDetail.OrderId = @orderid)">
        <SelectParameters>
            <asp:QueryStringParameter Name="OrderID" QueryStringField="orderid" />
        </SelectParameters>
    </asp:SqlDataSource>
</asp:Content>
