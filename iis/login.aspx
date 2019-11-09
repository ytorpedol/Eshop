<%@ Page Language="C#" MasterPageFile="~/shop.Master" AutoEventWireup="true" CodeBehind="login.aspx.cs"
    Inherits="EShop.login" Title="无标题页" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <style type="text/css">
        /*-------------------页面框架---------------------*/.login_frame
        {
            border: medium solid #F1F1F1;
            width: 630px;
            float: left;
            padding: 10px;
            margin-left: 10px;
           
        }
        /*----------------行样式设置-----------------------*/.form_row
        {
            padding: 10px 0px 10px 0px;
            width: 500px;
            clear: both;
            text-align: left;
        }
        /*-------------标题样式--------------------------*/.login_head
        {
            margin: 20px 0px 20px 20px;
            letter-spacing: 7pt;
            color: #003366;
            font-size: large;
            font-family: 黑体;
            font-weight: bold;
            text-align: left;
        }
        /*------------------------标签样式----------------*/.leftlabel
        {
            padding: 4px 15px 0px 0px;
            font-size: 12px;
            color: #333333;
            text-align: right;
            float: left;
        }
        /*---------------输入框样式----------------------*/.rightInput
        {
            border: 1px solid #DFDFDF;
            width: 200px;
            height: 18px;
            float: left;
        }
        .content
        {
            width: 500px;
            float: right;
        }
        /*----------------按钮样式----------------------*/.loginbtn
        {
            height: 27px;
            width: 70px;
            color: #497825;
            font-weight: bold;
            border: 1px solid #CCCFD3;
            background-color: #FFFFFF;
            margin-left: 80px;
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <div style ="height :300px">
    <div class=" login_head">
        <span>
        <img alt="" src="image/login.JPG" 
            style="width: 35px; height: 27px" /></span>用户登陆
    </div>
    <div class=" login_frame">
        <div class="form_row ">
            <asp:Label ID="lblUsername" runat="server" CssClass="leftlabel" Text="用户名："></asp:Label>
            <asp:TextBox ID="txtAccount" runat="server" CssClass="rightInput"></asp:TextBox>
        </div>
        <div class="form_row ">
            <asp:Label ID="lblPassword" runat="server" Text="密　码：" CssClass="leftlabel"></asp:Label>
            <asp:TextBox ID="txtPassword" runat="server" CssClass="rightInput" TextMode="Password"></asp:TextBox>
            <asp:Label ID="lberror1" runat="server" ForeColor="#FF3300"></asp:Label>
        </div>
        <div class="form_row ">
            <asp:Label ID="lblCheck" runat="server" Text="验证码：" CssClass="leftlabel" 
                Height="16px"></asp:Label>
            <asp:TextBox ID="txtCheckcode" runat="server" CssClass="rightInput"></asp:TextBox>
            <img alt="" src="checkcode.aspx" style="float: left" />
        <asp:Label ID="lberror2" runat="server" ForeColor="#FF3300"></asp:Label>
        </div>
        <div class="form_row ">
            <asp:Button ID="btnLogin" runat="server" Text="登陆" CssClass="loginbtn" onclick="btnLogin_Click" 
             />
            <asp:Button ID="btnReg" runat="server" Text="立即注册" CssClass="loginbtn" 
                onclick="btnReg_Click" />
        </div>
    </div>
    </div>
</asp:Content>
