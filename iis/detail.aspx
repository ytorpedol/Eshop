<%@ Page Title="" Language="C#" MasterPageFile="~/shop.Master" AutoEventWireup="true"
    CodeBehind="detail.aspx.cs" Inherits="EShop.detail" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:eshopConnectionString %>"
        SelectCommand="SELECT * FROM [merchandisc] WHERE ([MerId] = @MerId)">
        <SelectParameters>
            <asp:QueryStringParameter Name="MerId" QueryStringField="id" Type="String" />
        </SelectParameters>
    </asp:SqlDataSource>
    <asp:DetailsView ID="DetailsView1" runat="server" AutoGenerateRows="False" CellPadding="4"
        DataKeyNames="MerId" DataSourceID="SqlDataSource1" ForeColor="#333333" GridLines="None"
        Height="50px" Width="100%">
        <FooterStyle BackColor="#507CD1" Font-Bold="True" ForeColor="White" />
        <CommandRowStyle BackColor="#D1DDF1" Font-Bold="True" />
        <RowStyle BackColor="#EFF3FB" />
        <FieldHeaderStyle BackColor="#DEE8F5" Font-Bold="True" />
        <PagerStyle BackColor="#2461BF" ForeColor="White" HorizontalAlign="Center" />
        <Fields>
            <asp:BoundField DataField="MerId" HeaderText="商品编号" ReadOnly="True" 
                SortExpression="MerId" >
            <HeaderStyle Width="50px" />
            </asp:BoundField>
            <asp:BoundField DataField="MerName" HeaderText="商品名称" SortExpression="MerName" />
            <asp:ImageField DataImageUrlField="Picture" HeaderText="商品图片">
            </asp:ImageField>
            <asp:BoundField DataField="Price" HeaderText="商品价格" SortExpression="Price" />
            <asp:BoundField DataField="SPrice" HeaderText="市场价格" SortExpression="SPrice" />
            <asp:BoundField DataField="GoodDesc" HeaderText="商品描述" SortExpression="GoodDesc" />
            <asp:BoundField DataField="GoodFacturer" HeaderText="商品产地" SortExpression="GoodFacturer" />
            <asp:BoundField DataField="LeaveFactoryDate" HeaderText="出厂日期" SortExpression="LeaveFactoryDate" />
        </Fields>
        <HeaderStyle BackColor="#507CD1" Font-Bold="True" ForeColor="White" Width="150px" />
        <EditRowStyle BackColor="#2461BF" />
        <AlternatingRowStyle BackColor="White" />
    </asp:DetailsView>
    <div style="text-align: left">
        购买数量：<asp:TextBox ID="txt_Num" runat="server" Width="31px">1</asp:TextBox>
        <asp:ImageButton ID="ImageButton1" runat="server" Height="26px" ImageUrl="image/icon06.gif"
            Width="28px" onclick="ImageButton1_Click"  />
        <asp:LinkButton ID="LinkButton1" runat="server" PostBackUrl="~/cart.aspx">查看购物车</asp:LinkButton>
        <br />
        <asp:Repeater ID="Repeater1" runat="server" DataSourceID="SqlDataSource2" 
            OnItemDataBound="Repeater1_ItemDataBound">
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
                                ImageUrl='<%#Eval("head") %>' Width="50px" />
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
        <asp:SqlDataSource ID="SqlDataSource2" runat="server" 
            ConnectionString="<%$ ConnectionStrings:eshopConnectionString %>" 
            SelectCommand="SELECT member.head, member.LoginName, Message.topic, Message.content, Message.DateLine, Message.MerId, member.Memberlevel FROM member INNER JOIN Message ON member.Id = Message.MemberId WHERE (Message.MerId = @goodid)">
            <SelectParameters>
                <asp:QueryStringParameter DefaultValue="" Name="goodid" QueryStringField="id" />
            </SelectParameters>
        </asp:SqlDataSource>
    </div>
</asp:Content>
