﻿<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="map.aspx.cs" Inherits="EShop.map" %>
<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
     <!-- <meta charset="utf-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="initial-scale=1.0, user-scalable=no, width=device-width">
    <title>覆盖物的添加与移除</title>
    <link rel="stylesheet" href="https://a.amap.com/jsapi_demos/static/demo-center/css/demo-center.css" />-->
    <script src="https://cache.amap.com/lbs/static/es5.min.js"></script>
    <script src="https://webapi.amap.com/maps?v=1.4.10&key=d8a049e578904edb68c128c04449f9f2"></script>
    <script type="text/javascript" src="https://cache.amap.com/lbs/static/addToolbar.js"></script>
   <!--     <style>
        html,
        body,
        #container {
          width: 100%;
          height: 100%;
        }
        
        label {
            width: 55px;
            height: 26px;
            line-height: 26px;
            margin-bottom: 0;
        }
        button.btn {
            width: 80px;
        }
    </style>-->
</head>
<body>
   <div id="container" style="height:600px;width:600px;"></div>
<div class="input-card" style="width:24rem;">
    <h4>添加、删除覆盖物</h4>
    <div class="input-item">
      <label>Marker：</label>
      <button class="btn" id="add-marker" style="margin-right:1rem;">添加Marker</button>
      <button class="btn" id="remove-marker">删除Marker</button>
    </div>
    <div class="input-item">
      <label>Circle：</label>
      <button class="btn" id="add-circle" style="margin-right:1rem;">添加Circle</button>
      <button class="btn" id="remove-circle">删除Circle</button>
    </div>
  </div>   
</body>
<script>
    var map = new AMap.Map('container', {
        mapStyle: 'amap://styles/darkblue', //设置地图的显示样式
        resizeEnable: true,
        zoom: 11,
        center: [116.397428, 39.90923]
    });
    // 构造点标记
    var marker = new AMap.Marker({
        icon: "https://webapi.amap.com/theme/v1.3/markers/n/mark_b.png",
        position: [116.405467, 39.907761]
    });
    // 构造矢量圆形
    var circle = new AMap.Circle({
        center: new AMap.LngLat("116.403322", "39.920255"), // 圆心位置
        radius: 1000,  //半径
        strokeColor: "#F33",  //线颜色
        strokeOpacity: 1,  //线透明度
        strokeWeight: 3,  //线粗细度
        fillColor: "#ee2200",  //填充颜色
        fillOpacity: 0.35 //填充透明度
    });


    //事件绑定
    document.querySelector("#add-marker").onclick = function () {
        map.add(marker);
        map.setFitView();
    }
    document.querySelector("#remove-marker").onclick = function () {
        map.remove(marker);
        map.setFitView();
    }
    document.querySelector("#add-circle").onclick = function () {
        map.add(circle);
        map.setFitView();
    }
    document.querySelector("#remove-circle").onclick = function () {
        map.remove(circle);
        map.setFitView();
    }

</script>
</html>
