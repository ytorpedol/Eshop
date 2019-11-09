<%@ Page Title="" Language="C#" MasterPageFile="~/admin/manage.master" AutoEventWireup="true" CodeBehind="productEdit.aspx.cs" Inherits="EShop.admin.productEdit" %>
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
            width: 180px;
            height: 18px;
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
        商品修改</p>
</asp:Content>
<asp:Content ID="Content3" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <div class="reg_content">
        <div class="form_row">
            <asp:Label ID="lblMerName" runat="server" CssClass="row_lbl" Text="商品名称："></asp:Label>
            <asp:TextBox ID="txtMerName" runat="server" CssClass="row_input ">test</asp:TextBox>
            <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" 
                ControlToValidate="txtMerName" CssClass="error" ErrorMessage="*必填项"></asp:RequiredFieldValidator>
        </div>
        <div class="form_row">
            <asp:Label ID="lblCategory" runat="server" CssClass="row_lbl" Text="商品分类："></asp:Label>
            <div class="row_input ">
                <asp:DropDownList ID="ddpClass" runat="server" AutoPostBack="True" 
                    DataSourceID="SqlDataSource1" DataTextField="ClassName" 
                    DataValueField="ClassId" Width="87px">
                </asp:DropDownList>
                <asp:DropDownList ID="DropDownList2" runat="server" AutoPostBack="True" 
                    DataSourceID="SqlDataSource2" DataTextField="ClassTwoName" 
                    DataValueField="ClassTwoId" Width="90px">
                </asp:DropDownList>
            </div>
        </div>
        <div class="form_row">
            <asp:Label ID="lblPrice" runat="server" CssClass="row_lbl" Text="市场价格："></asp:Label>
            <asp:TextBox ID="txtPrice" runat="server" CssClass="row_input ">test</asp:TextBox>
        </div>
        <div class="form_row">
            <asp:Label ID="lblEPrice" runat="server" CssClass="row_lbl" Text="E  价："></asp:Label>
            <asp:TextBox ID="txtEPrice" runat="server" CssClass="row_input "></asp:TextBox>
        </div>
        <div class="form_row">
            <asp:Label ID="lblPicture" runat="server" CssClass="row_lbl" Text="商品图片："></asp:Label>
            <asp:Image ID="Image1" runat="server" Height="46px" Width="69px" />
            </div>
             <div class="form_row">
           <asp:Label ID="Label2" runat="server" CssClass="row_lbl" Text=""></asp:Label> <asp:FileUpload ID="fupImg" runat="server" CssClass="row_input "   />
            
            
        </div>
        <div class="form_row">
            <asp:Label ID="lblFacturer" runat="server" CssClass="row_lbl" Text="商品制造商："></asp:Label>
            <asp:TextBox ID="txtFacturer" runat="server" CssClass="row_input "></asp:TextBox>
        </div>
        <div class="form_row">
            <asp:Label ID="Label1" runat="server" CssClass="row_lbl" Text="出厂日期："></asp:Label>
            <asp:TextBox ID="txtLeaveDate" runat="server" CssClass="row_input "></asp:TextBox>
        </div>
        <div class="form_row">
            <asp:Label ID="lblDesc" runat="server" CssClass="row_lbl" Text="商品描述："></asp:Label>
            <asp:TextBox ID="txtDesc" runat="server" CssClass="row_input " Height="401px" 
                TextMode="MultiLine" Width="458px">test</asp:TextBox>
        </div>
        <div class="form_row">
            <asp:CheckBox ID="CheckBox1" runat="server" CssClass="row_lbl " Text="是否" />
            <asp:Label ID="lblSpecial" runat="server" CssClass="row_input" Text="特价商品" 
                Width="77px"></asp:Label>
            <asp:TextBox ID="txtBegin" runat="server" Width="91px"></asp:TextBox>
            (YYYY-MM-DD)<span class="style2">至</span><asp:TextBox ID="txtEnd" 
                runat="server" Width="83px"></asp:TextBox>
        </div>
        <div class="form_row">
            <asp:Button ID="Button1" runat="server" CssClass="btn " 
                Text="修改" onclick="Button1_Click" />
            <asp:Button ID="Button2" runat="server" CssClass="btn " Text="重置信息" />
            <asp:SqlDataSource ID="SqlDataSource1" runat="server" 
                ConnectionString="<%$ ConnectionStrings:eshopConnectionString %>" 
                SelectCommand="SELECT * FROM [classOne]"></asp:SqlDataSource>
            <br />
            <asp:SqlDataSource ID="SqlDataSource2" runat="server" 
                ConnectionString="<%$ ConnectionStrings:eshopConnectionString %>" 
                SelectCommand="SELECT * FROM [classTwo] WHERE ([ClassId] = @ClassId)">
                <SelectParameters>
                    <asp:ControlParameter ControlID="ddpClass" Name="ClassId" 
                        PropertyName="SelectedValue" Type="Int32" />
                </SelectParameters>
            </asp:SqlDataSource>
        </div>
    </div>
</asp:Content>
