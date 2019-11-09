<%@ Page Title="" Language="C#" MasterPageFile="~/admin/manage.master" AutoEventWireup="true" CodeBehind="productSearch.aspx.cs" Inherits="EShop.admin.productSearch" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
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
    <p>
        商品查询</p>
</asp:Content>
<asp:Content ID="Content3" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <div class="search_item">
        <asp:RadioButton ID="RadioButton1" runat="server"  Text ="查询条件" GroupName="0"/>
        <asp:DropDownList ID="DropDownList1" runat="server">
            <asp:ListItem Value="商品编号"></asp:ListItem>
            <asp:ListItem>商品名称</asp:ListItem>
            <asp:ListItem>商品产地</asp:ListItem>
        </asp:DropDownList>
        关键字<asp:TextBox ID="txtsearch" runat="server"></asp:TextBox>
    
        <asp:RadioButton ID="RadioButton2" runat="server" Text ="分类查询" GroupName="0" />
    
        <asp:DropDownList ID="DropDownList2" runat="server" 
            DataSourceID="SqlDataSource2" DataTextField="ClassName" 
            DataValueField="ClassId" AutoPostBack="True">
        </asp:DropDownList>
        <asp:DropDownList ID="DropDownList3" runat="server" 
            DataSourceID="SqlDataSource3" DataTextField="ClassTwoName" 
            DataValueField="ClassTwoId">
        </asp:DropDownList>
        <asp:SqlDataSource ID="SqlDataSource3" runat="server" 
            ConnectionString="<%$ ConnectionStrings:eshopConnectionString %>" 
            SelectCommand="SELECT * FROM [classTwo] WHERE ([ClassId] = @ClassId)">
            <SelectParameters>
                <asp:ControlParameter ControlID="DropDownList2" Name="ClassId" 
                    PropertyName="SelectedValue" Type="Int32" />
            </SelectParameters>
        </asp:SqlDataSource>
    
        <asp:Button ID="Button1" runat="server" Text="Search" onclick="Button1_Click" />
    
        <asp:SqlDataSource ID="SqlDataSource2" runat="server" 
            ConnectionString="<%$ ConnectionStrings:eshopConnectionString %>" 
            SelectCommand="SELECT * FROM [classOne]"></asp:SqlDataSource>
    </div>
    <div  class ="search_item">
    
    </div>
    <div class ="search_item ">
        <asp:GridView ID="GridView1" runat="server" AllowPaging="True" 
            AutoGenerateColumns="False" DataKeyNames="MerId" DataSourceID="SqlDataSource1" 
            Width="98%" onrowcommand="GridView1_RowCommand" 
            onrowcreated="GridView1_RowCreated">
            <Columns>
                <asp:ImageField DataImageUrlField="Picture" HeaderText="商品图片" 
                    DataImageUrlFormatString="../{0}">
                    <ControlStyle Width="35px" />
                </asp:ImageField>
                <asp:BoundField DataField="MerId" HeaderText="商品编号" ReadOnly="True" 
                    SortExpression="MerId" />
                <asp:BoundField DataField="MerName" HeaderText="商品名称" 
                    SortExpression="MerName" />
                <asp:BoundField DataField="Price" HeaderText="原价" SortExpression="Price" />
                <asp:BoundField DataField="SPrice" HeaderText="现价" SortExpression="SPrice" />
                <asp:BoundField DataField="LeaveFactoryDate" HeaderText="出厂日期" 
                    SortExpression="LeaveFactoryDate" />
                <asp:BoundField DataField="Special" HeaderText="是否为特价" 
                    SortExpression="Special" />
                <asp:ButtonField CommandName="modify" HeaderText="编辑" Text="编辑" />
                <asp:CommandField ShowDeleteButton="True"  />
            </Columns>
        </asp:GridView>
    
    
    
        <asp:SqlDataSource ID="SqlDataSource1" runat="server" 
            ConnectionString="<%$ ConnectionStrings:eshopConnectionString %>" 
            SelectCommand="SELECT * FROM [merchandisc]" 
            DeleteCommand="DELETE FROM [merchandisc] WHERE [MerId] = @MerId" 
            InsertCommand="INSERT INTO [merchandisc] ([MerId], [category], [MerName], [Price], [SPrice], [Picture], [GoodDesc], [GoodFacturer], [LeaveFactoryDate], [Special], [inputdate], [bengindate], [enddate]) VALUES (@MerId, @category, @MerName, @Price, @SPrice, @Picture, @GoodDesc, @GoodFacturer, @LeaveFactoryDate, @Special, @inputdate, @bengindate, @enddate)" 
            UpdateCommand="UPDATE [merchandisc] SET [category] = @category, [MerName] = @MerName, [Price] = @Price, [SPrice] = @SPrice, [Picture] = @Picture, [GoodDesc] = @GoodDesc, [GoodFacturer] = @GoodFacturer, [LeaveFactoryDate] = @LeaveFactoryDate, [Special] = @Special, [inputdate] = @inputdate, [bengindate] = @bengindate, [enddate] = @enddate WHERE [MerId] = @MerId">
            <DeleteParameters>
                <asp:Parameter Name="MerId" Type="String" />
            </DeleteParameters>
            <UpdateParameters>
                <asp:Parameter Name="category" Type="Int32" />
                <asp:Parameter Name="MerName" Type="String" />
                <asp:Parameter Name="Price" Type="Decimal" />
                <asp:Parameter Name="SPrice" Type="Decimal" />
                <asp:Parameter Name="Picture" Type="String" />
                <asp:Parameter Name="GoodDesc" Type="String" />
                <asp:Parameter Name="GoodFacturer" Type="String" />
                <asp:Parameter Name="LeaveFactoryDate" Type="String" />
                <asp:Parameter Name="Special" Type="Int32" />
                <asp:Parameter Name="inputdate" Type="String" />
                <asp:Parameter Name="bengindate" Type="String" />
                <asp:Parameter Name="enddate" Type="String" />
                <asp:Parameter Name="MerId" Type="String" />
            </UpdateParameters>
            <InsertParameters>
                <asp:Parameter Name="MerId" Type="String" />
                <asp:Parameter Name="category" Type="Int32" />
                <asp:Parameter Name="MerName" Type="String" />
                <asp:Parameter Name="Price" Type="Decimal" />
                <asp:Parameter Name="SPrice" Type="Decimal" />
                <asp:Parameter Name="Picture" Type="String" />
                <asp:Parameter Name="GoodDesc" Type="String" />
                <asp:Parameter Name="GoodFacturer" Type="String" />
                <asp:Parameter Name="LeaveFactoryDate" Type="String" />
                <asp:Parameter Name="Special" Type="Int32" />
                <asp:Parameter Name="inputdate" Type="String" />
                <asp:Parameter Name="bengindate" Type="String" />
                <asp:Parameter Name="enddate" Type="String" />
            </InsertParameters>
        </asp:SqlDataSource>
    
    
    
    </div>
</asp:Content>
