<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="smap.aspx.cs" Inherits="EShop.smap" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html xmlns="http://www.w3.org/1999/xhtml">
<head>
    <meta charset="utf-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="initial-scale=1.0, user-scalable=no, width=device-width">
    <title>关键字检索</title>
    <style type="text/css">
        html, body {
	margin: 0;
	height: 100%;
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
    <script type="text/javascript" src="https://webapi.amap.com/maps?v=1.4.10&key=d8a049e578904edb68c128c04449f9f2"></script>
    <script type="text/javascript" src="https://cache.amap.com/lbs/static/addToolbar.js"></script>
</head>
<body>
    <div id="container" style="height:600px;width:600px;"></div>
    <div class="dd"><input type="text" name="d1" value="" />
    <div class="ds"><input type="submit" value="搜索"  onclick="searchmap()"/></div></div>
    <div id="panel"></div>
</body>
<script type="text/javascript">
    var map = new AMap.Map("container", {
        mapStyle: 'amap://styles/darkblue', //设置地图的显示样式 
        resizeEnable: true
    });
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
