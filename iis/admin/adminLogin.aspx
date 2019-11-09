<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="adminLogin.aspx.cs" Inherits="EShop.admin.adminLogin" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html xmlns="http://www.w3.org/1999/xhtml" >
<head id="Head1" runat="server">
    <title>无标题页</title>
    <link href="skin.css" rel="stylesheet" type="text/css" />

    <script language="javascript" type="text/javascript">
function correctPNG()
{
    var arVersion = navigator.appVersion.split("MSIE")
    var version = parseFloat(arVersion[1])
    if ((version >= 5.5) && (document.body.filters)) 
    {
       for(var j=0; j<document.images.length; j++)
       {
          var img = document.images[j]
          var imgName = img.src.toUpperCase()
          if (imgName.substring(imgName.length-3, imgName.length) == "PNG")
          {
             var imgID = (img.id) ? "id='" + img.id + "' " : ""
             var imgClass = (img.className) ? "class='" + img.className + "' " : ""
             var imgTitle = (img.title) ? "title='" + img.title + "' " : "title='" + img.alt + "' "
             var imgStyle = "display:inline-block;" + img.style.cssText 
             if (img.align == "left") imgStyle = "float:left;" + imgStyle
             if (img.align == "right") imgStyle = "float:right;" + imgStyle
             if (img.parentElement.href) imgStyle = "cursor:hand;" + imgStyle
             var strNewHTML = "<span " + imgID + imgClass + imgTitle
             + " style=\"" + "width:" + img.width + "px; height:" + img.height + "px;" + imgStyle + ";"
             + "filter:progid:DXImageTransform.Microsoft.AlphaImageLoader"
             + "(src=\'" + img.src + "\', sizingMethod='scale');\"></span>" 
             img.outerHTML = strNewHTML
             j = j-1
          }
       }
    }    
}
window.attachEvent("onload", correctPNG);
    </script>

    <style type="text/css">
        .style1
        {
            text-align: left;
        }
        .top_hui_text
        {
            text-align: left;
        }
    </style>
</head>
<body>
    <form id="form1" runat="server">
    <table width="100%" height="166" border="0" cellpadding="0" cellspacing="0">
        <tr>
            <td height="42" valign="top">
                <table width="100%" height="42" border="0" cellpadding="0" cellspacing="0" class="login_top_bg">
                    <tr>
                        <td width="1%" height="21">
                            &nbsp;
                        </td>
                        <td height="42">
                            &nbsp;
                        </td>
                        <td width="17%">
                            &nbsp;
                        </td>
                    </tr>
                </table>
            </td>
        </tr>
        <tr>
            <td valign="top">
                <table width="100%" height="532" border="0" cellpadding="0" cellspacing="0" class="login_bg">
                    <tr>
                        <td width="49%" align="right">
                            <table width="91%" height="532" border="0" cellpadding="0" cellspacing="0" class="login_bg2">
                                <tr>
                                    <td height="138" valign="top">
                                        <table width="89%" height="427" border="0" cellpadding="0" cellspacing="0">
                                            <tr>
                                                <td height="149">
                                                    &nbsp;
                                                </td>
                                            </tr>
                                            <tr>
                                                <td height="80" align="right" valign="top">
                                                    &nbsp;<img alt="" src="images/logo.gif" style="width: 279px; height: 68px" />
                                                </td>
                                            </tr>
                                            <tr>
                                                <td height="198" align="right" valign="top">
                                                    <table width="100%" border="0" cellpadding="0" cellspacing="0">
                                                        <tr>
                                                            <td width="35%">
                                                                &nbsp;
                                                            </td>
                                                            <td height="25" colspan="2" class="left_txt">
                                                                <p>
                                                                    1- 地区商家信息网门户站建立的首选方案...</p>
                                                            </td>
                                                        </tr>
                                                        <tr>
                                                            <td>
                                                                &nbsp;
                                                            </td>
                                                            <td height="25" colspan="2" class="left_txt">
                                                                <p>
                                                                    2- 一站通式的整合方式，方便用户使用...</p>
                                                            </td>
                                                        </tr>
                                                        <tr>
                                                            <td>
                                                                &nbsp;
                                                            </td>
                                                            <td height="25" colspan="2" class="left_txt">
                                                                <p>
                                                                    3- 强大的后台系统，管理内容易如反掌...</p>
                                                            </td>
                                                        </tr>
                                                        <tr>
                                                            <td>
                                                                &nbsp;
                                                            </td>
                                                            <td width="30%" height="40">
                                                                <img src="images/icon-demo.gif" width="16" height="16"><a href="http://www.865171.cn"
                                                                    target="_blank" class="left_txt3"> 使用说明</a>
                                                            </td>
                                                            <td width="35%">
                                                                <img src="images/icon-login-seaver.gif" width="16" height="16"><a href="http://www.865171.cn"
                                                                    class="left_txt3"> 在线客服</a>
                                                            </td>
                                                        </tr>
                                                    </table>
                                                </td>
                                            </tr>
                                        </table>
                                    </td>
                                </tr>
                            </table>
                        </td>
                        <td width="1%">
                            &nbsp;
                        </td>
                        <td width="50%" valign="bottom">
                            <table width="100%" height="59" border="0" align="center" cellpadding="0" cellspacing="0">
                                <tr>
                                    <td width="4%">
                                        &nbsp;
                                    </td>
                                    <td width="96%" height="38">
                                        <span class="login_txt_bt">登陆信息网后台管理</span>
                                    </td>
                                </tr>
                                <tr>
                                    <td>
                                        &nbsp;
                                    </td>
                                    <td height="21">
                                        <table cellspacing="0" cellpadding="0" width="100%" border="0" id="table211" height="328">
                                            <tr>
                                                <td height="164" colspan="2" align="middle">
                                                    <table cellspacing="0" cellpadding="0" width="100%" border="0" height="143" id="table212">
                                                        <tr>
                                                            <td width="13%" height="38">
                                                                <span class="login_txt">管理员：&nbsp;&nbsp; </span>
                                                            </td>
                                                            <td height="38" colspan="2" style="text-align: left">
                                                                &nbsp;<asp:TextBox ID="txtUser" runat="server"></asp:TextBox>
                                                            </td>
                                                        </tr>
                                                        <tr>
                                                            <td width="13%" height="35">
                                                                <span class="login_txt">密 码： &nbsp;&nbsp; </span>
                                                            </td>
                                                            <td height="35" colspan="2" class="style1">
                                                                &nbsp;<asp:TextBox ID="txtPassword" runat="server" 
                                                                    ontextchanged="TextBox2_TextChanged"></asp:TextBox>
                                                                <img src="images/luck.gif" width="19" height="18">
                                                            </td>
                                                        </tr>
                                                        <tr>
                                                            <td width="13%" height="35">
                                                                <span class="login_txt">验证码：</span>
                                                            </td>
                                                            <td height="35" colspan="2" style="text-align: left">
                                                                &nbsp;<asp:TextBox ID="txtCheck" runat="server"></asp:TextBox>
                                                            </td>
                                                        </tr>
                                                        <tr>
                                                            <td height="35">
                                                                &nbsp;
                                                            </td>
                                                            <td width="20%" height="35">
                                                                &nbsp;<asp:Button ID="Button1" runat="server" Text="登录" OnClick="Button1_Click" />
                                                            </td>
                                                            <td width="67%" class="top_hui_text">
                                                                &nbsp;<asp:Button ID="Button2" runat="server" Text="取消" OnClick="Button2_Click" />
                                                            </td>
                                                        </tr>
                                                    </table>
                                                    <br>
                                                </td>
                                            </tr>
                                            <tr>
                                                <td width="433" height="164" align="right" valign="bottom">
                                                    <img src="images/login-wel.gif" width="242" height="138">
                                                </td>
                                                <td width="57" align="right" valign="bottom">
                                                    &nbsp;
                                                </td>
                                            </tr>
                                        </table>
                                    </td>
                                </tr>
                            </table>
                        </td>
                    </tr>
                </table>
            </td>
        </tr>
        <tr>
            <td height="20">
                <table width="100%" border="0" cellspacing="0" cellpadding="0" class="login-buttom-bg">
                    <tr>
                        <td align="center">
                            <span class="login-buttom-txt">Copyright &copy; 2009-2010 www.865171.cn</span>
                        </td>
                    </tr>
                </table>
            </td>
        </tr>
    </table>
    </form>
</body>
</html>
