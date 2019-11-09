<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="xiuadd.aspx.cs" Inherits="EShop.admin.xiuadd" EnableEventValidation="false"%>
<html">
<head runat="server">
    <title>收货地址</title>
    <script src="../js/jquery-2.1.4/jquery.js" type="text/javascript"></script>
    <style type="text/css">
        .zheng
        {
            margin-top:30px;
            margin-left:40px;
         }
         .ddl
        {
             position: absolute;
             left: 40px;
             top: 50px;
        }
        .form_row
        {
            
        }
        .bts,.btc
        {
            margin-top:200px;
            margin-left:80px;
            width:60px;
	        height: 40px; /* 高度 */
	        border-width: 0px; /* 边框宽度 */
	        border-radius: 3px; /* 边框半径 */
	        background: #1E90FF; /* 背景颜色 */
	        cursor: pointer; /* 鼠标移入按钮范围时出现手势 */
	        outline: none; /* 不显示轮廓线 */
	        font-family: Microsoft YaHei; /* 设置字体 */
	        color: white; /* 字体颜色 */
	        font-size: 15px; /* 字体大小 */
        }
        .bts:hover,.bt1:hover{ /* 鼠标移入按钮范围时改变颜色 */
	        background: #5599FF;
        }
        .bt1
         {
            margin-top:200px;
            margin-left:140px;
            width:60px;
	        height: 40px; 
	        border-width: 0px;
	        border-radius: 3px; 
	        background: #1E90FF; 
	        cursor: pointer; 
	        outline: none; 
	        font-family: Microsoft YaHei; 
	        color: white; 
	        font-size: 15px;
           }   
    </style>
</head>
<body>
<form id="form1" runat="server">
<div class="zheng">
  <asp:Repeater ID="Repeater" runat="server" DataSourceID="SqlDataSource1" OnItemCommand="Repeater1_ItemCommand" OnItemDataBound="Repeater1_ItemDataBound">
  <ItemTemplate><div class="form_row ">
<asp:Label ID="lblcity" runat="server" CssClass=" leftlabel" Text="城市:"></asp:Label>
 <br /><br />
</div><br />
<div class="form_row ">
<asp:Label ID="lbladdress" runat="server" CssClass=" leftlabel" Text="收货地址:"></asp:Label>
<br />
<asp:TextBox ID="tbdz" runat="server" Width="300px" Text ='<%# Eval("address") %>' ontextchanged="tbdz_TextChanged"></asp:TextBox>
<br />
</div><br />
<div class="form_row ">
<asp:Label ID="Label1" runat="server" CssClass=" leftlabel" Text="备注:"></asp:Label>
<br />
<asp:TextBox ID="tbremark" runat="server" Width="300px" Text ='<%# Eval("remark") %>' ontextchanged="tbremark_TextChanged"></asp:TextBox>
</div><asp:Button ID="Bts" runat="server" CssClass="bts" Text="保存" onclick="Bts_Click"/>
</ItemTemplate> </asp:Repeater> 
<button onclick="cclose()" class="bt1">关闭</button>
<div class="ddl"> <asp:DropDownList ID="ddlist" runat="server" onselectedindexchanged="ddlist_SelectedIndexChanged1"> </asp:DropDownList> <asp:HiddenField runat="server" ID="SortField" Value="0"/></div>
<asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:eshopConnectionString %>" SelectCommand="select [MemberId],[ContactId],[Name],[address],[remark] from contact join addname on contact.AddnameId=addname.id">
<SelectParameters>
<asp:SessionParameter Name="contactid" SessionField="memberid" />
</SelectParameters>
</asp:SqlDataSource>
</div>
</form>
</body>
<script type="text/javascript">
$(function () {
        $("#ddlist").change(function () {
            var dv1 = $("#ddlist").val();
            $("#SortField").val(dv1);
        });
    });
    function cclose() {
        window.close();
    }
   
        
</script>
</html>


