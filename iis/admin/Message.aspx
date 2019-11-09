<%@ Page Title="" Language="C#" MasterPageFile="~/admin/manage.master" AutoEventWireup="true" CodeBehind="Message.aspx.cs" Inherits="EShop.admin.Message" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder2" runat="server">
    <p>
        所有留言</p>
</asp:Content>
<asp:Content ID="Content3" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <asp:Repeater ID="Repeater1" runat="server" DataSourceID="SqlDataSource1" 
        onitemcommand="Repeater1_ItemCommand">
        <HeaderTemplate>
        </HeaderTemplate>
        <ItemTemplate>
            <table align="center" width="100%">
                <tr>
                    <td colspan="3" style="width: 100%; background-color: #CACACA; color: #000000; font-family: 黑体;
                                    font-size: larger">
                                    <%#Eval("topic")%><br></br>
                    </td>
                </tr>
                <tr>
                    <td rowspan="2" style="width: 10%">
                        <asp:Image ID="img_avatar" runat="server" Height="70px" 
                            ImageUrl='<%#Eval("head","../{0}")%>' Width="50px" />
                    </td>
                    <td align="left" style="width: 60%;">
                        评论员：<asp:Label ID="lbl_user" runat="server" ForeColor="BlueViolet"><%#Eval("LoginName")%></asp:Label>
                        <asp:Label ID="lbl_grade" runat="server" Font-Bold="true" ForeColor="Orange" 
                            Text='<%#DataBinder.Eval(Container.DataItem,"Memberlevel") %>'></asp:Label>
                    </td>
                    <td align="right" style="width: 30%">
                                    <%#Eval("DateLine")%>
                                </td>
                </tr>
                <tr style="width: 100%">
                    <td colspan="2" style="font-size: small">
                                    <%#Eval("content")%>
                                </td>
                </tr>
            </table>
        </ItemTemplate>
        <SeparatorTemplate>
        </SeparatorTemplate>
        <FooterTemplate>
            </table>
        </FooterTemplate>
    </asp:Repeater>
    <asp:SqlDataSource ID="SqlDataSource1" runat="server" 
        ConnectionString="<%$ ConnectionStrings:eshopConnectionString %>" 
        SelectCommand="SELECT Message.MessageId, Message.MerId, Message.grade, Message.topic, Message.content, Message.MemberId, Message.DateLine, member.LoginName, member.head, Message.MerId AS Expr1, member.Memberlevel FROM Message INNER JOIN member ON Message.MemberId = member.Id ORDER BY Message.MerId DESC">
    </asp:SqlDataSource>
</asp:Content>
