<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="dsmap.aspx.cs" Inherits="EShop.dsmap" %>
<!DOCTYPE HTML>
<html>
<head>
<meta name="viewport" content="width=device-width initial-scale=1.0 maximum-scale=1.0 user-scalable=0">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8">
<script type="text/javascript" src="https://cache.amap.com/lbs/static/es5.min.js"></script>
<script type="text/javascript" src="https://cache.amap.com/lbs/static/addToolbar.js"></script>
<script type="text/javascript" src="https://webapi.amap.com/maps?v=1.4.10&key=d8a049e578904edb68c128c04449f9f2"></script>
<script type="text/javascript" src="//webapi.amap.com/maps?v=1.4.10&key=d8a049e578904edb68c128c04449f9f2&plugin=AMap.ControlBar"></script>
<title>3D搜索覆盖物的添加与移除地图</title>
<style>
    body,html{ margin:0;padding:0;font:12px/16px Verdana,Helvetica,Arial,sans-serif;width: 100%;height: 100%}
     .container{
        height: 100%;
        margin: 0;
        width: 100%;
        position: absolute;
        }
     #container {
        position: absolute;
	    top: 0;
	    left: 0;
	    right: 0;
	    bottom: 0;
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
     html {
        font-size: 12px;
        }

    * {
        box-sizing: border-box
        }
        .input-textarea{
        color:grey;
        height:8em;
        overflow:auto;
        border-radius:0.4rem;
        border:1px solid #ced4da;
        margin-bottom:1rem;
        }
    body {
          margin: 0;
          font-family: -apple-system, BlinkMacSystemFont, "Segoe UI", Roboto, "Helvetica Neue", Arial, sans-serif, "Apple Color Emoji", "Segoe UI Emoji", "Segoe UI Symbol", "Noto Color Emoji";
          line-height: 1.5;
          font-weight: 300;
          color: #111213;
        }

    hr {
      margin: 0.5rem 0;
      box-sizing: content-box;
      height: 0;
      overflow: visible;
      border: 0;
      border-top: 1px solid rgba(0, 0, 0, .1)
    }

    p {
      margin-top: 0;
      margin-bottom: 0;
    }

    label {
      display: inline-block;
      margin-bottom: 0.4rem;
    }

    label, .btn {
      margin-left: 0;
      font-size: 1rem;
    }

    button, input, select {
      margin: 0;
      font-family: inherit;
      font-size: inherit;
      line-height: inherit;
      overflow: visible;
      text-transform: none
    }

    [type=button]::-moz-focus-inner, [type=reset]::-moz-focus-inner, [type=submit]::-moz-focus-inner, button::-moz-focus-inner {
      padding: 0;
      border-style: none;
    }

    input[type=checkbox], input[type=radio] {
      box-sizing: border-box;
      padding: 0;
      -webkit-box-sizing: border-box;
      box-sizing: border-box;
      padding: 0;
      margin: 0 0.5rem 0 0;
    }

    h4 {
      font-family: inherit;
      line-height: 1.8;
      font-weight: 300;
      color: inherit;
      font-size: 1.1rem;
      margin-top: 0;
      margin-bottom: .5rem
    }

    .btn {
      display: inline-block;
      font-weight: 400;
      text-align: center;
      white-space: nowrap;
      vertical-align: middle;
      -webkit-user-select: none;
      -moz-user-select: none;
      -ms-user-select: none;
      user-select: none;
      border: 1px solid transparent;
      transition: color .15s ease-in-out, background-color .15s ease-in-out, border-color .15s ease-in-out, box-shadow .15s ease-in-out;
      background-color: transparent;
      background-image: none;
      color: #25A5F7;
      border-color: #25A5F7;
      padding: .25rem .5rem;
      line-height: 1.5;
      border-radius: 1rem;
      -webkit-appearance: button;
      cursor:pointer;
    }

    .btn:hover {
      color: #fff;
      background-color: #25A5F7;
      border-color: #25A5F7
    }

    .btn:hover {
      text-decoration: none
    }

    .input-item {
      position: relative;
      display: -ms-flexbox;
      display: flex;
      -ms-flex-wrap: wrap;
      flex-wrap: wrap;
      -ms-flex-align: center;
      align-items: center;
      width: 100%;
      height: 3rem;
    }

    .input-item:last-child {
      margin-bottom: 0;
    }

    .input-item>select, .input-item>input[type=text] {
      position: relative;
      -ms-flex: 1 1 auto;
      flex: 1 1 auto;
      width: 1%;
      margin-bottom: 0;
    }

    .input-item>select:not(:last-child), .input-item>input[type=text]:not(:last-child) {
      border-top-right-radius: 0;
      border-bottom-right-radius: 0
    }

    .input-item>select:not(:first-child), .input-item>input[type=text]:not(:first-child) {
      border-top-left-radius: 0;
      border-bottom-left-radius: 0
    }

    .input-item-prepend {
      margin-right: -1px;
    }

    .input-item-text, input[type=text], select {
      height: calc(2.2rem + 2px);
    }

    .input-item-text {
      width: 6rem;
      text-align: justify;
      padding: 0.4rem 0.7rem;
      display: inline-block;
      text-justify: distribute-all-lines;
      /*ie6-8*/
      text-align-last: justify;
      /* ie9*/
      -moz-text-align-last: justify;
      /*ff*/
      -webkit-text-align-last: justify;
      /*chrome 20+*/
      -ms-flex-align: center;
      align-items: center;
      margin-bottom: 0;
      font-size: 1rem;
      font-weight: 400;
      line-height: 1.5;
      color: #495057;
      text-align: center;
      white-space: nowrap;
      background-color: #e9ecef;
      border: 1px solid #ced4da;
      border-radius: .25rem;
      border-bottom-right-radius: 0;
      border-top-right-radius: 0;
    }

    .input-item-text input[type=checkbox], .input-item-text input[type=radio] {
      margin-top: 0
    }

    .input-card {
      display: flex;
      flex-direction: column;
      min-width: 0;
      word-wrap: break-word;
      background-color: #fff;
      background-clip: border-box;
      border-radius: .25rem;
      width: 22rem;
      border-width: 0;
      border-radius: 0.4rem;
      box-shadow: 0 2px 6px 0 rgba(114, 124, 245, .5);
      position: fixed;
      float:right;
      top:405px;
      left:310px;
      /*bottom: 1rem;
      right: 1rem;*/
      -ms-flex: 1 1 auto;
      flex: 1 1 auto;
      padding: 0.75rem 1.25rem;
    }

    .input-text {
      line-height: 2rem;
      margin-right: 2rem;
    }

    .info hr {
      margin-right: 0;
      margin-left: 0;
      border-top-color: grey;
    }

    .info {
      padding: .75rem 1.25rem;
      margin-bottom: 1rem;
      border-radius: .25rem;
      position: fixed;
      top: 1rem;
      background-color: white;
      width: auto;
      min-width: 22rem;
      border-width: 0;
      right: 1rem;
      box-shadow: 0 2px 6px 0 rgba(114, 124, 245, .5);
    }

    .code {
      left: 1.5rem;
      right: 1.5rem;
      top: 1.5rem;
      bottom: 1.5rem;
      overflow: auto;
      margin-bottom: 0rem;
    }

    .code .btn {
      top: 1rem;
      position: absolute;
      right: 1rem;
    }

    .code .result {
      border: 1px solid rgba(0, 0, 0, 0.1);
      border-radius: 0.5rem;
      padding: 1rem;
      bottom: 1rem;
      position: absolute;
      top: 5.5rem;
      right: 1rem;
      left: 1rem;
      overflow: auto;
    }

    .code .status {
      color: #80adff;
      display: inline-block;
      font-size: 14px;
    }

    .code h4 {
      display: inline-block;
      max-width: 20rem;
      margin-right: 1rem;
      margin-bottom: 1rem;
    }

    select, input[type=text] {
      display: inline-block;
      width: 100%;
      padding: .375rem 1.75rem .375rem .75rem;
      line-height: 1.5;
      color: #495057;
      vertical-align: middle;
      background: #fff url("data:image/svg+xml;charset=utf8,%3Csvg xmlns='http://www.w3.org/2000/svg' viewBox='0 0 4 5'%3E%3Cpath fill='%23343a40' d='M2 0L0 2h4zm0 5L0 3h4z'/%3E%3C/svg%3E") no-repeat right .75rem center;
      background-size: 8px 10px;
      border: 1px solid #ced4da;
      border-radius: .25rem;
      -webkit-appearance: none;
      -moz-appearance: none;
      appearance: none
    }

    input[type=text] {
      background: #fff;
      padding: .375rem .75rem;
    }

    select:focus, input[type=text]:focus {
      border-color: #80bdff;
      outline: 0;
      box-shadow: 0 0 0 .1rem rgba(128, 189, 255, .1)
    }

    .btn:focus {
      outline: 0;
      box-shadow: none;
    }

    select:focus::-ms-value, input[type=text]:focus::-ms-value {
      color: #495057;
      background-color: #fff
    }


    /* native toastr */
    .native-toast {
      position: fixed;
      background-color: rgba(50, 50, 50, .8);
      border-radius: 33px;
      color: white;
      left: 50%;
      text-align: center;
      padding: 6px 12px;
      opacity: 0;
      z-index: 99999;
      transition: transform .25s, opacity .25s, top .25s;
      box-sizing: border-box;
    }

    .native-toast-bottom {
      bottom: 50px;
      -ms-transform: translateX(-50%) translateY(50px);
          transform: translateX(-50%) translateY(50px)
    }

    .native-toast-bottom.native-toast-shown {
      opacity: 1;
      -ms-transform: translateX(-50%) translateY(0);
          transform: translateX(-50%) translateY(0);
    }

    .native-toast-bottom.native-toast-edge {
      bottom: 0;
    }

    .native-toast-top {
      top: 50px;
      -ms-transform: translateX(-50%) translateY(-50px);
          transform: translateX(-50%) translateY(-50px)
    }

    .native-toast-top.native-toast-shown {
      opacity: 1;
      -ms-transform: translateX(-50%) translateY(0);
          transform: translateX(-50%) translateY(0);
    }

    .native-toast-top.native-toast-edge {
      top: 0;
    }

    .native-toast-center {
      top: 0;
      -ms-transform: translateX(-50%) translateY(-50px);
          transform: translateX(-50%) translateY(-50px)
    }

    .native-toast-center.native-toast-shown {
      opacity: 1;
      top: 50%;
      -ms-transform: translateX(-50%) translateY(-50%);
          transform: translateX(-50%) translateY(-50%);
    }

    .native-toast-edge {
      border-radius: 0;
      width: 100%;
      text-align: left;
    }

    @media screen and (min-width: 40rem) {
      .native-toast:not(.native-toast-edge) {
        max-width: 18rem;
      }
    }

    /*
      max-width does not seem to work in small screen?
    */

    /*@media screen and (max-width: 768px) {
      .native-toast:not(.native-toast-edge) {
        max-width: 400px;
      }
    }

    @media screen and (max-width: 468px) {
      .native-toast:not(.native-toast-edge) {
        max-width: 300px;
      }
    }*/

    /* types */

    .native-toast-error {
      background-color: #d92727;
      color: white;
    }

    .native-toast-success {
      background-color: #62a465;
      color: white;
    }

    .native-toast-warning {
      background-color: #fdaf17;
      color: white;
    }

    .native-toast-info {
      background-color: #5060ba;
      color: white;
    }

    [class^="native-toast-icon-"] {
      vertical-align: middle;
      margin-right: 8px
    }

    [class^="native-toast-icon-"] svg {
      width: 16px;
      height: 16px;
    }
    .button-group {
	position: absolute;
	bottom: 20px;
	right: 20px;
	font-size: 12px;
	padding: 10px;
    }

        .button-group .button {
	        height: 28px;
	        line-height: 28px;
	        background-color: #0D9BF2;
	        color: #FFF;
	        border: 0;
	        outline: none;
	        padding-left: 5px;
	        padding-right: 5px;
	        border-radius: 3px;
	        margin-bottom: 4px;
	        cursor: pointer;
        }
        .button-group .inputtext {
	        height: 26px;
	        line-height: 26px;
	        border: 1px;
	        outline: none;
	        padding-left: 5px;
	        padding-right: 5px;
	        border-radius: 3px;
	        margin-bottom: 4px;
	        cursor: pointer;
        }
         /*
        .tip {
	        position: absolute;
	        bottom: 30px;
	        right: 10px;
	        background-color: #FFF;
	        text-align: center;
	        border: 1px solid #ccc;
	        line-height: 30px;
	        border-radius: 3px;
	        padding: 0 5px;
	        font-size: 12px;
        }
        */
        #tip {
	        background-color: #fff;
	        padding-left: 10px;
	        padding-right: 10px;
	        position: absolute;
	        font-size: 12px;
	        right: 10px;
	        top: 20px;
	        border-radius: 3px;
	        border: 1px solid #ccc;
	        line-height: 30px;
        }

        /*
        #tip input[type='button'] {
	        margin-top: 10px;
	        margin-bottom: 10px;
	        background-color: #0D9BF2;
	        height: 30px;
	        text-align: center;
	        line-height: 30px;
	        color: #fff;
	        font-size: 12px;
	        border-radius: 3px;
	        outline: none;
	        border: 0;
        }
        */
        .amap-info-content {
	        font-size: 12px;
        }

        #myPageTop {
	        position: absolute;
	        top: 5px;
	        right: 10px;
	        background: #fff none repeat scroll 0 0;
	        border: 1px solid #ccc;
	        margin: 10px auto;
	        padding:6px;
	        font-family: "Microsoft Yahei", "微软雅黑", "Pinghei";
	        font-size: 14px;
        }
        #myPageTop label {
	        margin: 0 20px 0 0;
	        color: #666666;
	        font-weight: normal;
        }
        #myPageTop input {
	        width: 170px;
        }
        #myPageTop .column2{
	        padding-left: 25px;
        }
        #panel {
            position: absolute;
            background-color: white;
            max-height: 90%;
            overflow-y: auto;
            top: 10px;
            right: 10px;
            width: 280px;
        }
        .dd
        {
            top:15px;
            left:187px;
            width:225px;
            position:fixed;
            z-index:100000;
            
         }
         .ds
         {
             float:right;
            
       
         }
</style>
</head>
<body >
    <div id="container" style="height:600px;width:600px;"></div>
    <div class="dd"><input type="text" name="d1" value="" />
    <div class="ds"><input type="submit" value="搜索"  onclick="searchmap()"/></div></div>
    <div id="panel"></div>
<div class="input-card" style="width:24rem;">
    <h4>区域</h4>
    <div class="input-item">
      <label>Marker：</label>
      <button class="btn" id="add-marker" style="margin-right:1rem;">添加上海</button>
      <button class="btn" id="remove-marker">删除上海</button>
    </div>
    <div class="input-item">
      <label>Circle：</label>
      <button class="btn" id="add-circle" style="margin-right:1rem;">添加Circle</button>
      <button class="btn" id="remove-circle">删除Circle</button>
    </div>
     <div class="input-item">
      <label>Marker：</label>
      <button class="btn" id="Button1" style="margin-right:1rem;">添加深圳</button>
      <button class="btn" id="Button2">删除深圳</button>
    </div>
    <div class="input-item">
      <label>Circle：</label>
      <button class="btn" id="Button3" style="margin-right:1rem;">添加Circle</button>
      <button class="btn" id="Button4">删除Circle</button>
    </div>
  </div>  

</body>
<script type="text/javascript">
    var map;
    function mapInit() {
        map = new AMap.Map('container', {
            mapStyle: 'amap://styles/darkblue', //设置地图的显示样式 
            resizeEnable: true,
            rotateEnable: true,
            pitchEnable: true,
            zoom: 17,
            pitch: 80,
            rotation: -15,
            viewMode: '3D', //开启3D视图,默认为关闭
            buildingAnimation: true, //楼块出现是否带动画

            expandZoomRange: true,
            zooms: [3, 20],
            center: [116.333926, 39.997245]
        });
        map.addControl(new AMap.ControlBar({
            showZoomBar: false,
            showControlButton: true,
            position: {
                right: '10px',
                top: '10px'
            }
        }))
    }
    mapInit()
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


    var markerGx = new AMap.Marker({
        icon: "https://webapi.amap.com/theme/v1.3/markers/n/mark_b.png",
        position: [121.506789, 31.242612]
    });
    // 构造矢量圆形
    var circleGx = new AMap.Circle({
        center: new AMap.LngLat("121.506789", "31.242612"), // 圆心位置
        radius: 1000,  //半径
        strokeColor: "#F33",  //线颜色
        strokeOpacity: 1,  //线透明度
        strokeWeight: 3,  //线粗细度
        fillColor: "#ee2200",  //填充颜色
        fillOpacity: 0.35 //填充透明度
    });


    var markerGy = new AMap.Marker({
        icon: "https://webapi.amap.com/theme/v1.3/markers/n/mark_b.png",
        position: [114.113024, 22.549307]
    });
    // 构造矢量圆形
    var circleGy = new AMap.Circle({
        center: new AMap.LngLat("114.113024", "22.549307"), // 圆心位置
        radius: 1000,  //半径
        strokeColor: "#F33",  //线颜色
        strokeOpacity: 1,  //线透明度
        strokeWeight: 3,  //线粗细度
        fillColor: "#ee2200",  //填充颜色
        fillOpacity: 0.35 //填充透明度
    });


    //事件绑定
    document.querySelector("#add-marker").onclick = function () {
        map.add(markerGx);
        map.setFitView();
    }
    document.querySelector("#remove-marker").onclick = function () {
        map.remove(markerGx);
        map.setFitView();
    }
    document.querySelector("#add-circle").onclick = function () {
        map.add(circleGx);
        map.setFitView();
    }
    document.querySelector("#remove-circle").onclick = function () {
        map.remove(circleGx);
        map.setFitView();
    }


    document.querySelector("#Button1").onclick = function () {
        map.add(markerGy);
        map.setFitView();
    }
    document.querySelector("#Button2").onclick = function () {
        map.remove(markerGy);
        map.setFitView();
    }
    document.querySelector("#Button3").onclick = function () {
        map.add(circleGy);
        map.setFitView();
    }
    document.querySelector("#Button4").onclick = function () {
        map.remove(circleGy);
        map.setFitView();
    }
    function searchmap() {
        var input = document.getElementsByName("d1")[0].value;
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
    }
</script>
</html>