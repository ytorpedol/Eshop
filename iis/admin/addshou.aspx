<%@ Page Title="" Language="C#" MasterPageFile="~/admin/manage.master" AutoEventWireup="true" CodeBehind="addshou.aspx.cs" Inherits="EShop.admin.addshou" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <script src="dialog-master/js/jquery.js" type="text/javascript"></script>
    <script src="dialog-master/js/dialog.js" type="text/javascript"></script>
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
    <p>收货地址</p>
</asp:Content>
<asp:Content ID="Content3" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
<div class=" content_frame">
        <asp:Repeater ID="Repeater1" runat="server" DataSourceID="SqlDataSource1" 
            OnItemCommand="Repeater1_ItemCommand" OnItemDataBound="Repeater1_ItemDataBound">
            <HeaderTemplate>
                <div class="repeater_head">
                    <div class="item_head">
                        编号</div>
                    <div class="item_head ">
                        客户名称</div>
                    <div class="item_head ">
                        地址数量</div>
                    <div class="item_head ">
                        操作</div>
                    <div class="item_head ">
                        最近修改时间</div>
                </div>
            </HeaderTemplate>
            <ItemTemplate>
                <div class="reapter_item">
                    <asp:Label ID="lblMemberId" runat="server" CssClass=" item_list  " 
                        ForeColor="#1A66B3" Text='<% #Eval("MemberId") %> '></asp:Label>
                    <asp:Label ID="lblLoginName" runat="server" CssClass=" item_list  " 
                        Text='<% #Eval("LoginName") %>'></asp:Label>
                    <asp:Label ID="lblcountM" runat="server" CssClass=" item_list  " 
                        Text='<% #Eval("countM") %>'></asp:Label>
                <asp:Label runat="server" CssClass=" item_list">
                <panel>
                <a href="javascript:showModalDialog('lookadd.aspx?id=<%#Eval("MemberId")%>','dialogHeight:400px; dialogWidth:500px;,dialogTop:50px;dialogLeft:50px;');window.location.reload()">查看</a>
                </panel>
                </asp:Label>
                   <asp:Label ID="maxdata" runat="server" CssClass=" item_list  " 
                        Text='<% #Eval("maxdata") %>'></asp:Label>
                </div>
            </ItemTemplate>
        </asp:Repeater>
        <asp:SqlDataSource ID="SqlDataSource1" runat="server" 
            ConnectionString="<%$ ConnectionStrings:eshopConnectionString %>" 
            SelectCommand="SELECT  [MemberId],[LoginName],count(MemberId) as 'countM',max(datatime) as 'maxdata' FROM contact inner join  member on contact.MemberId=member.Id group by [MemberId],[LoginName] ">
        </asp:SqlDataSource>
    </div>
    <!--<script type="text/javascript">
       /* $("#lbtsee").click(function () {
            alert("wwjjwjkclm");
        });*/
          function OpenOvertimeDlog(frmWin,width,height) 
    {       
     var me; 
     var action;
      action = frmWin;
     // 把父页面窗口对象当作参数传递到对话框中，以便对话框操纵父页自动刷新。 
      me = "OvertimeDlog.aspx?action="+action+""; 
     // 显示对话框。
      window.showModalDialog(me,null,'dialogWidth='+width +'px;dialogHeight='+height+'px;help:no;status:no') 
    }
    </script>-->

</asp:Content>
