<%@ Page Title="" Language="C#" MasterPageFile="~/shop.Master" AutoEventWireup="true" CodeBehind="productbrief.aspx.cs" Inherits="EShop.productbrief" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <div style ="width:100%">

    <asp:GridView ID="GridView1" runat="server" Width="98%" 
        AutoGenerateColumns="False" DataKeyNames="MerId" Caption="商品展示" 
            CellPadding="4" ForeColor="#333333" GridLines="None" 
            onrowcommand="GridView1_RowCommand" 
            onselectedindexchanged="GridView1_SelectedIndexChanged" 
            UseAccessibleHeader="False" DataSourceID="SqlDataSource1">
        <RowStyle BackColor="#E3EAEB" />
        <Columns>
            <asp:ImageField DataImageUrlField="Picture" HeaderText="图片">
                <ControlStyle Width="50px" />
            </asp:ImageField>
            <asp:BoundField DataField="MerId" HeaderText="商品编号" ReadOnly="True" 
                SortExpression="MerId" />
            <asp:BoundField DataField="MerName" HeaderText="商品名称" 
                SortExpression="MerName" />
            <asp:BoundField DataField="Price" HeaderText="商品价格" SortExpression="Price" />
            <asp:BoundField DataField="SPrice" HeaderText="折扣价" 
                SortExpression="SPrice" />
            <asp:ButtonField CommandName="buy" HeaderText="购买" Text="购买" />
        </Columns>
        <FooterStyle BackColor="#1C5E55" Font-Bold="True" ForeColor="White" />
        <PagerStyle BackColor="#666666" ForeColor="White" HorizontalAlign="Center" />
        <SelectedRowStyle BackColor="#C5BBAF" Font-Bold="True" ForeColor="#333333" />
        <HeaderStyle BackColor="#1C5E55" Font-Bold="True" ForeColor="White" />
        <EditRowStyle BackColor="#7C6F57" />
        <AlternatingRowStyle BackColor="White" />
    </asp:GridView>
    <asp:SqlDataSource ID="SqlDataSource1" runat="server" 
        ConnectionString="<%$ ConnectionStrings:eshopConnectionString2 %>" 
        SelectCommand="SELECT [MerId], [MerName], [Price], [SPrice], [Picture] FROM [merchandisc]"></asp:SqlDataSource>

</div>
</asp:Content>
