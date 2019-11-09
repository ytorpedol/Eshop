<%@ Page Title="" Language="C#" MasterPageFile="~/shop.Master" AutoEventWireup="true" CodeBehind="product.aspx.cs" Inherits="EShop.product" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <div style="text-align: left; padding :15px">
    <asp:Label ID="Label1" runat="server" Text="关键字：" Font-Size="Medium"></asp:Label>
        <asp:TextBox ID="txtSearch" runat="server"></asp:TextBox>
        <asp:Button ID="btnSearch" runat="server" Text="GO" 
          onclick="btnSearch_Click" />
     

    <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" 
        DataKeyNames="MerId" DataSourceID="SqlDataSource1" style="margin-right: 1px" 
        Width="100%" AllowPaging="True" PageSize="5">
        <Columns>
            <asp:ImageField DataImageUrlField="Picture" HeaderText="图片">
                <ControlStyle Width="100px" />
            </asp:ImageField>
            <asp:HyperLinkField DataNavigateUrlFields="MerId" 
                DataNavigateUrlFormatString="detail.aspx?id={0}" DataTextField="MerName" 
                HeaderText="商品名称" />
            <asp:BoundField DataField="Price" DataFormatString="{0:C}" HeaderText="商品价格" 
                SortExpression="Price" />
            <asp:BoundField DataField="SPrice" DataFormatString="{0:C}" HeaderText="商品现价" 
                SortExpression="SPrice" />
            <asp:ButtonField ButtonType="Button" HeaderText="购买" Text="购买" />
            <asp:ButtonField ButtonType="Button" HeaderText="收藏" Text="收藏" />
        </Columns>
    </asp:GridView>
    </div>
   
    <asp:SqlDataSource ID="SqlDataSource1" runat="server" 
        ConnectionString="<%$ ConnectionStrings:eshopConnectionString %>" 
        SelectCommand="SELECT * FROM [merchandisc]"></asp:SqlDataSource>
</asp:Content>
