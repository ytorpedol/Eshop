<%@ Page Title="" Language="C#" MasterPageFile="~/myhome/myhome.Master" AutoEventWireup="true" CodeBehind="profile.aspx.cs" Inherits="EShop.myhome.profile" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
 <style type="text/css">
        .content_frame
        {
            border: thin solid #EEEEEE;
            width: 760px;
        }
        .photo_pre
        {
            width: 100px;
            height: 120px;
            margin-top: 30px;
            margin-left: 30px;
            float: left;
        }
        .photo_browse
        {
            width: 500px;
            margin-top: 30px;
            margin-left: 20px;
            float: left;
            font-size: small;
        }
        .photo_choice
        {
            border: 1px solid #AEC7CB;
            width: 500px;
            height: 200px;
            background-color: #F4FEFF;
            margin-top: 15px;
        }
        .photo_load
        {
            border-bottom-style: dotted;
            border-bottom-width: thin;
            border-bottom-color: #C0C0C0;
             margin-bottom:10px;
            height :80px;
            padding: 10px 0 0 25px;
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder2" runat="server">
    <p>
        编辑个人档案</p>
</asp:Content>
<asp:Content ID="Content3" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
<div class="content_frame">
        <div class="photo_pre">
            <asp:Image ID="imgHead" runat="server" Height="100px" Width="94px" />
        </div>
        <div class="photo_browse">
         <div>
             <ul>
                 <li><span >从您的电脑中上传图片作为头像：(建议尺寸96*96像素，300k以内)</span> </li>
             </ul>
            </div>
            <div class ="photo_load">
          
            
                <asp:FileUpload ID="fupHead" runat="server" />
                <asp:Button ID="btnUpload" runat="server" Text="上传" onclick="Button1_Click" />
          
            
            </div>
            <div>
                <ul>
                    <li style="width: 224px">您可以在下方选择自己喜欢的头像：
            </li>
                </ul>
               
            </div>
            <div class="photo_choice">
            </div>
             <asp:Button ID="Button2" runat="server" Text="保存头像" />
            
        </div>
    </div>
</asp:Content>
