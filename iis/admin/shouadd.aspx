<%@ Page Title="" Language="C#" MasterPageFile="~/admin/manage.master" AutoEventWireup="true"
    CodeBehind="shouadd.aspx.cs" Inherits="EShop.admin.shouadd" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <script src="../js/jquery-2.1.4/jquery.js" type="text/javascript"></script>
    <style type="text/css">
        .title_bar
        {
            width: 900px;
            padding-left: 30px;
            margin-top: 20px;
        }
        .title_content
        {
            width: 500px;
            border-bottom-style: solid;
            border-bottom-width: thin;
            border-bottom-color: #C0C0C0;
            font-family: 黑体;
            font-weight: bold;
            font-size: large;
            color: #339933;
            text-align: left;
            letter-spacing: 3pt;
        }
        .reg_content
        {
            width: 600px;
            margin-top: 5px;
            padding-left: 30px;
            float: left;
        }
        .span_font
        {
            color: #808080;
            margin-left: 15px;
            font-size: small;
        }
        .form_row
        {
            padding: 10px 0px 10px 0px;
            width: 600px;
            clear: both;
        }
        .row_lbl
        {
            padding: 4px 15px 0px 0px;
            width: 120px;
            font-size: 12px;
            color: #333333;
            text-align: right;
            float: left;
            margin-bottom: 0px;
        }
        .row_input
        {
            border: 1px solid #DFDFDF;
            float: left;
        }
        .reg_right
        {
            width: 230px;
            height: 150px;
            float: right;
            padding: 10px 0px 0px 20px;
            text-align: left;
            font-size: 14px;
            border-left-style: dotted;
            border-left-width: thin;
            border-left-color: #CCCCCC;
        }
        .btn
        {
            height: 27px;
            width: 70px;
            color: #497825;
            font-weight: bold;
            border: 1px solid #CCCFD3;
            background-color: #FFFFFF;
            margin-left: 100px;
        }
        .error
        {
            width: 120px;
            float: left;
            font-size: 12px;
            text-align: left;
            padding: 4px 5px 0 10px;
            color: #333333;
        }
        </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder2" runat="server">
    <p>
        收货地址</p>
</asp:Content>
<asp:Content ID="Content3" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">

 &nbsp;&nbsp;

 <asp:GridView ID="GridView1" runat="server" 
        onselectedindexchanged="GridView1_SelectedIndexChanged" 
        AutoGenerateColumns="False" DataSourceID="SqlDataSource1" 
        CellPadding="4" Height="241px" Width="569px" AllowSorting="True" 
        ForeColor="#333333" GridLines="None">
        <Columns>
            <asp:BoundField HeaderText="编号" DataField="MemberId"  SortExpression="MemberId" />
            <asp:BoundField HeaderText="客户名称" DataField="LoginName"  SortExpression="LoginName"/>
            <asp:BoundField HeaderText="地址数量" DataField="countM" SortExpression="countM"/>
            <asp:ButtonField HeaderText="操作" Text="查看" />
            <asp:BoundField HeaderText="最近修改时间" DataField="maxdata" SortExpression="maxdata"/>
        </Columns>
        <FooterStyle BackColor="#507CD1" Font-Bold="True" ForeColor="White" />
        <PagerStyle BackColor="#2461BF" ForeColor="White" HorizontalAlign="Center" />
        <RowStyle BackColor="#EFF3FB" HorizontalAlign="Center"/>
        <SelectedRowStyle BackColor="#D1DDF1" Font-Bold="True" ForeColor="#333333" />
        <HeaderStyle BackColor="#507CD1" Font-Bold="True" ForeColor="White" HorizontalAlign="Center" />
        <EditRowStyle BackColor="#2461BF" />
        <AlternatingRowStyle BackColor="#EFF3FB" />
        <SortedAscendingCellStyle BackColor="#F5F7FB" />
        <SortedAscendingHeaderStyle BackColor="#6D95E1" />
        <SortedDescendingCellStyle BackColor="#E9EBEF" />
        <SortedDescendingHeaderStyle BackColor="#4870BE" />
    </asp:GridView>

   <asp:SqlDataSource ID="SqlDataSource1" runat="server" 
        ConnectionString="<%$ ConnectionStrings:eshopConnectionString %>" 
        SelectCommand="SELECT  [MemberId],[LoginName],count(MemberId) as 'countM',max(datatime) as 'maxdata' FROM contact inner join  member on contact.MemberId=member.Id group by [MemberId],[LoginName]  "></asp:SqlDataSource>
        <script type="text/javascript">
            $(function () {

                $("#ctl00_ContentPlaceHolder1_GridView1").click(function () {
                    alert("sfsfsfsf");

                });
            });
            </script>
        
    </asp:Content>
