<%@ Page Title="" Language="C#" MasterPageFile="~/admin/manage.master" AutoEventWireup="true"
    CodeBehind="productwhat.aspx.cs" Inherits="EShop.admin.productwhat" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
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
        .style2
        {
            font-size: medium;
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder2" runat="server">
    <p>添加分类</p>
</asp:Content>
<asp:Content ID="Content3" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <div class="reg_content" style="height :auto">
            <div class="form_row">
            <asp:Label ID="lblCategory" runat="server" CssClass="row_lbl" Text="分类名称："></asp:Label>
            <asp:TextBox ID="textCategory" runat="server" CssClass="row_input "></asp:TextBox>
            </div>           
      
            <div class="form_row">
            <asp:Button ID="Button1" runat="server" Text="添加" CssClass="btn " OnClick="Button1_Click" />
            <asp:Button ID="Button2" runat="server" Text="重置信息" CssClass="btn " 
                    onclick="Button2_Click" />
            <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:eshopConnectionString %>"
                SelectCommand="SELECT * FROM [classOne]"></asp:SqlDataSource>
            <br />
            <asp:SqlDataSource ID="SqlDataSource2" runat="server" ConnectionString="<%$ ConnectionStrings:eshopConnectionString %>"
                SelectCommand="SELECT * FROM [classTwo] WHERE ([ClassId] = @ClassId)">
            </asp:SqlDataSource>
           </div>
</div>
</asp:Content>
