<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="lookadd.aspx.cs" Inherits="EShop.admin.lookadd" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server"> 
    <title>收货地址</title>
    <script src="../js/jquery-2.1.4/jquery.js" type="text/javascript"></script>
    <style type="text/css">
    .item_head,.item_heada
        {
            width: 80px;
            font-family: 微软雅黑;
            font-size: small;
            font-weight: bold;
            text-align: center;
            float: left;
            color: #5AA18F;
            padding-bottom: 5px;
            padding-top: 5px;
        }
        .item_heada
        {
            width: 140px;
        }
        .repeater_head
        {
            width: 500px;
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
            width: 500px;
            float: left;
            margin-left: 10px;
        }
        .item_list, .item_lista
        {
            width: 80px;
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
        .item_lista
        {
            width:140px;
         }  
          .bt1
         {
            position:absolute;
            left:200px;
            top:350px;
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
    <asp:Repeater ID="Repeater" runat="server" DataSourceID="SqlDataSource1" 
            OnItemCommand="Repeater1_ItemCommand" OnItemDataBound="Repeater1_ItemDataBound">
            <HeaderTemplate>
                <div class="repeater_head">
                    <div class="item_head">
                        编号</div>
                    <div class="item_head ">
                        城市</div>
                    <div class="item_heada ">
                        地址</div>
                    <div class="item_head ">
                        备注</div>
                    <div class="item_head ">
                        操作</div>
                </div>
            </HeaderTemplate>
           
            <ItemTemplate>
                <div class="reapter_item">
                <asp:Label ID="lblContactId" runat="server" CssClass=" item_list " ForeColor="#1A66B3" Text='<% #Eval("ContactId") %> '></asp:Label>
                <asp:Label ID="lblcity" runat="server" CssClass=" item_list " ForeColor="#1A66B3" Text='<% #Eval("Name") %> '></asp:Label>
                <asp:Label ID="lbladd" runat="server" CssClass=" item_lista " ForeColor="#1A66B3" Text='<%#Left(Convert.ToString(Eval("address")),8)%>'></asp:Label>
                <asp:Label ID="lblremark" runat="server" CssClass=" item_list " ForeColor="#1A66B3" Text='<% #Eval("remark") %> '></asp:Label>
                <asp:Label ID="lblxg" runat="server" CssClass="item_list">
                <a href="javascript:showModalDialog('xiuadd.aspx?id=<%#Eval("ContactId")%>','dialogHeight:400px; dialogWidth:500px;,dialogTop:50px;dialogLeft:50px;');window.location.reload()">修改</a>
                </asp:Label></div>
              
            </ItemTemplate>
              
        </asp:Repeater>
        <asp:SqlDataSource ID="SqlDataSource1" runat="server" 
            ConnectionString="<%$ ConnectionStrings:eshopConnectionString %>" 
            SelectCommand="select [MemberId],[ContactId],[Name],[address],[remark] from contact join addname on contact.AddnameId=addname.id">
            <SelectParameters>
            <asp:SessionParameter Name="memberid" SessionField="userid" />
        </SelectParameters>
        </asp:SqlDataSource> 
        <div ><button onclick="cclose()" class="bt1">关闭</button></div>
</body>
</html>
<script type="text/javascript">
        function cclose() {
            window.close();
        }
</script>

