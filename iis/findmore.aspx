<%@ Page Title="商品搜索" Language="C#" MasterPageFile="~/shop.Master" AutoEventWireup="true" CodeBehind="findmore.aspx.cs" Inherits="EShop.findmore" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <div style="text-align: left; padding :15px">
    <asp:Label ID="Label1" runat="server" Text="关键字：" Font-Size="Medium"></asp:Label>
        <asp:TextBox ID="tS1" runat="server"></asp:TextBox>&nbsp;&nbsp;
        <asp:Button ID="bS1" runat="server" Text="Search" 
          onclick="btnSearch_Click" ForeColor="#FF3300" />
     

        <br />
     

        <br />
        <asp:Label ID="lbf" runat="server" ForeColor="#FF3300"></asp:Label>
        <br /><br />
     

    <asp:GridView ID="GridView2" runat="server" AutoGenerateColumns="False" 
        DataKeyNames="MerId" style="margin-right: 1px" 
        Width="100%" AllowPaging="True" PageSize="5" onpageindexchanging="GridView2_PageIndexChanging">
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
   
   
</asp:Content>
