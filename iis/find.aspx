<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="find.aspx.cs" Inherits="EShop.WebForm2" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
    <table width="500px">
    <tr><td><asp:TextBox ID="tb1" runat="server" ontextchanged="tb1_TextChanged"></asp:TextBox>&nbsp;&nbsp;<asp:Button 
            ID="bt1" runat="server" Text="Search" ForeColor="#FF3300" onclick="bt1_Click" /></td></tr>
    <tr><td><asp:Label ID="lb1" runat="server" Text="查询到："></asp:Label><asp:Label ID="lb2" runat="server" ForeColor="Red"></asp:Label></td></tr>
    <tr><td><br /><br /><br /></td></tr>
  <tr><td align="center"> <asp:Image ID="img1" runat="server" /></td></tr>

    </table>
    </form>
</body>
</html>
