<%@ Page Title="商品搜索" Language="C#" MasterPageFile="~/shop.Master" AutoEventWireup="true" CodeBehind="findmore1.aspx.cs" Inherits="EShop.findmore1" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <div style ="width:100%">
        <asp:TextBox ID="Tb2" runat="server"></asp:TextBox>&nbsp;&nbsp;
        <asp:Button ID="Bt3" runat="server" Text="Search" onclick="Bt3_Click" 
            ForeColor="Red" style="height: 21px" />

        <br /><br />
        <asp:Label ID="lbm1" runat="server" ForeColor="Red"></asp:Label>
        <br />

 <asp:GridView ID="GridView1" runat="server" Width="98%" 
        AutoGenerateColumns="False" DataKeyNames="MerId" Caption="商品展示" 
            CellPadding="4" ForeColor="#333333" GridLines="None"
            AllowPaging="True" PageSize="5" 
            onrowcommand="GridView1_RowCommand" 
            onselectedindexchanged="GridView1_SelectedIndexChanged" 
            onpageindexchanging="GridView2_PageIndexChanging"
            UseAccessibleHeader="False" DataSourceID="SqlDataSource1" >
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

