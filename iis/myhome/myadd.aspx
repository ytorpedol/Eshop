<%@ Page Title="" Language="C#" MasterPageFile="~/myhome/myhome.Master" AutoEventWireup="true" CodeBehind="myadd.aspx.cs" Inherits="EShop.myhome.myadd" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <script src="/js/jquery-2.1.4/jquery.js" type="text/javascript"></script>
    <script type="text/javascript" src="https://webapi.amap.com/maps?v=1.4.10&key=d8a049e578904edb68c128c04449f9f2"></script>
    <script type="text/javascript" src="https://cache.amap.com/lbs/static/addToolbar.js"></script>
    <link href="myadd.css" rel="stylesheet" type="text/css" />

</asp:Content>

<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder2" runat="server">
    <p>常用收货地址</p>
</asp:Content>
<asp:Content ID="Content3" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
<div class="content_frame">
        <asp:DataList ID="DataList1" runat="server"  DataSourceID="SqlDataSource1"
            Width="100%" onitemcommand="DataList1_ItemCommand" 
            DataKeyField="ContactId" ondeletecommand="DataList1_DeleteCommand" 
            onselectedindexchanged="DataList1_SelectedIndexChanged">
           
            <EditItemTemplate>
                <div class="content_frame">
                    <div style="margin: 5px 0 5px 0;">
                        修改收货地址： 
                    </div>
                    <div class="form_row ">
                        <asp:Label ID="Label5" runat="server" CssClass=" leftlabel" Text="收货人"></asp:Label>
                        <asp:TextBox ID="txtAddressee" runat="server" CssClass="rightInput " 
                            Text ='<%# Eval("Addressee") %>'></asp:TextBox>
                    </div>
                    <div class="form_row ">
                        <asp:Label ID="Label6" runat="server" CssClass=" leftlabel" Text="地址"></asp:Label>
                        <asp:TextBox ID="txtAddress" runat="server" CssClass="rightInput " 
                            Text='<%# Eval("address") %>'></asp:TextBox>
                    </div>
                    <div class="form_row ">
                        <asp:Label ID="Label7" runat="server" CssClass=" leftlabel" Text="邮政编码"></asp:Label>
                        <asp:TextBox ID="txtZip" runat="server" CssClass="rightInput " 
                            Text='<%# Eval("zip") %>'></asp:TextBox>
                    </div>
                    <div class="form_row ">
                        <asp:Label ID="Label8" runat="server" CssClass=" leftlabel" Text="电话号码"></asp:Label>
                        <asp:TextBox ID="txtPhone" runat="server" CssClass="rightInput " 
                            Text='<%# Eval("phone") %>'></asp:TextBox>
                    </div>
                    <div class="form_row ">
                        <asp:CheckBox ID="CheckBox2" runat="server" CssClass="leftlabel" 
                            Text="设为默认地址" />
                        <asp:Button ID="Button2" runat="server" style="text-align: center" Text="保存" 
                            Width="54px" CommandArgument ='<%# Eval("ContactId") %>' 
                            CommandName="save" />
                    </div>
                </div>
            </EditItemTemplate>
           
            <HeaderTemplate>
                <div style="margin: 5px 0 5px 0;">
                    现有收货地址：
                </div>
            </HeaderTemplate>
            <ItemTemplate>
                <div class="datalist_item ">
                    <div class="datalist_item_row">
                        ■ <asp:Label ID="contactLabel" runat="server" Text='<%# Eval("contact") %>'  Width ="95%"/>
                    </div>
                    <div class="datalist_item_row">
                        <asp:Button ID="btnEdit" runat="server" Text="修改" Width="50px" 
                            CommandName="edit" onclick="btnEdit_Click" />
                        &nbsp;&nbsp;
                        <asp:Button ID="btnDelete" runat="server" Text="删除" Width="50px" 
                            CommandName="delete" />
                    </div>
                </div>
            </ItemTemplate>
             
        </asp:DataList>
    </div>
    <div class="content_frame">
        <div style="margin: 5px 0 5px 0;">
            新增/修改收货地址：
        </div>
         <div class="form_row ">
            <asp:Label ID="Label9" runat="server" Text="收货人" CssClass=" leftlabel"></asp:Label>
            <asp:TextBox ID="txtAddrssee" runat="server" CssClass="rightInput " 
                ontextchanged="txtAddrssee_TextChanged"></asp:TextBox>
        </div><div class="form_row ">
            <asp:Label ID="Label11" runat="server" Text="城市" CssClass=" leftlabel"></asp:Label>
             <asp:DropDownList ID="ddlist" runat="server" 
                onselectedindexchanged="ddlist_SelectedIndexChanged"></asp:DropDownList></div>
       <div class="form_row ">
            <asp:Label ID="Label10" runat="server" Text="地址" CssClass=" leftlabel"></asp:Label>
            <asp:TextBox ID="txtAddress" runat="server" CssClass="rightInput "></asp:TextBox>
            <asp:Button ID="sc" runat="server" Height="24px" onclick="sc_Click" 
                Text="search" Width="73px" AutoPostBack="False"/>
            &nbsp;
         </div>
        
        <div class="sds"style="width:790px;">
        <div id="container" style="height:600px;width:515px;"></div>
        <div id="panel"></div></div>
        <div class="form_row ">
            <asp:Label ID="Label1" runat="server" Text="邮政编码" CssClass=" leftlabel"></asp:Label>
            <asp:TextBox ID="txtZip" runat="server" CssClass="rightInput "></asp:TextBox>
        </div>
         <div class="form_row ">
            <asp:Label ID="Label12" runat="server" Text="电话号码" CssClass=" leftlabel"></asp:Label>
            <asp:TextBox ID="txtPhone" runat="server" CssClass="rightInput "></asp:TextBox>
        </div>
        <div class="form_row ">
            <asp:CheckBox ID="chkDefault" runat="server" Text="设为默认地址" 
                CssClass="leftlabel" oncheckedchanged="chkDefault_CheckedChanged"  />
            <asp:Button ID="Button3" runat="server"  
                style="text-align: center" Text="保存" Width="54px" 
                onclick="Button3_Click" />
        </div>
    </div>
    <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:eshopConnectionString %>"
        SelectCommand="SELECT Addressee + ',' + address + ',' + phone + ',' + zip AS contact, ContactId, MemberId, Addressee, address, phone, zip FROM contact WHERE (MemberId = @memberid)">
        <SelectParameters>
            <asp:SessionParameter Name="memberid" SessionField="userid" />
        </SelectParameters>
    </asp:SqlDataSource>
  <script type="text/javascript">
      $(function () {
          alert("jQuery来了");
          var map = new AMap.Map("container", {
              mapStyle: 'amap://styles/darkblue', //设置地图的显示样式 
              resizeEnable: true
          });
         $("#ctl00_ContentPlaceHolder1_sc").click(function () {
             alert("eenenenne");
             var input = $("#ctl00_ContentPlaceHolder1_txtAddress").val();
             alert("当前城市：" + input);
              AMap.service(["AMap.PlaceSearch"], function () {
                  //构造地点查询类
                  var placeSearch = new AMap.PlaceSearch({
                      pageSize: 5, // 单页显示结果条数
                      pageIndex: 1, // 页码
                      city: "input", // 兴趣点城市
                      citylimit: true,  //是否强制限制在设置的城市内搜索
                      map: map, // 展现结果的地图实例
                      panel: "panel", // 结果列表将在此容器中进行展示。
                      autoFitView: true // 是否自动调整地图视野使绘制的 Marker点都处于视口的可见范围
                  }); alert("66666777");
                  //关键字查询

                  placeSearch.search('北京大学');
              });
          });
         
          /* var input = $("#ctl00_ContentPlaceHolder1_txtAddress").val();
          var input = "成都";
          alert("当前城市：" + input);
          AMap.service(["AMap.PlaceSearch"], function () {
          //构造地点查询类
          var placeSearch = new AMap.PlaceSearch({
          pageSize: 5, // 单页显示结果条数
          pageIndex: 1, // 页码
          city: "input", // 兴趣点城市
          citylimit: true,  //是否强制限制在设置的城市内搜索
          map: map, // 展现结果的地图实例
          panel: "panel", // 结果列表将在此容器中进行展示。
          autoFitView: true // 是否自动调整地图视野使绘制的 Marker点都处于视口的可见范围
          });
          //关键字查询
          placeSearch.search(input, function (status, result) {
          alert(status);
          });
          });});*/


          $("#ctl00_ContentPlaceHolder1_ddlist").change(
        function () {
            var input = this.value;
            alert("当前城市：" + input);
            AMap.service(["AMap.PlaceSearch"], function () {
                //构造地点查询类
                var placeSearch = new AMap.PlaceSearch({
                    pageSize: 5, // 单页显示结果条数
                    pageIndex: 1, // 页码
                    city: "input", // 兴趣点城市
                    citylimit: true,  //是否强制限制在设置的城市内搜索
                    map: map, // 展现结果的地图实例
                    panel: "panel", // 结果列表将在此容器中进行展示。
                    autoFitView: true // 是否自动调整地图视野使绘制的 Marker点都处于视口的可见范围
                });
                //关键字查询
                placeSearch.search(input, function (status, result) {
                    alert(status);
                });
            });
        });
      });
   </script>
</asp:Content>
