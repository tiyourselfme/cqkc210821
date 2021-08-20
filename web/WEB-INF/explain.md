<%--
<!DOCTYPE html>
<html lang="en">
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<head>
    <title>OpenLayers example</title>
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <!-- Bootstrap -->
    <link href="../../source/css/bootstrap.min.css" rel="stylesheet" media="screen">
    <meta name="renderer" content="webkit">
    <meta http-equiv="X-UA-Compatible" content="IE=edge,chrome=1">
    <link rel="stylesheet" href="../../source/css/ol.css" type="text/css">

    <script src="../../source/js/ol.js"></script>
    <link rel="stylesheet" href="../../source/css/ol.css">
    <style>
        body{
            background: linear-gradient(0deg , #1a50c4 , #082460 , #1a50c4) !important;
        }
        .c1,.c2{
            position: fixed;
            top: 70px;
            z-index: 100;
            width: 180px;
            /*height: 450px;*/
            height: auto;
            margin-top: 65px;
            margin-left: 77px;
            /*background: rgba(8, 36, 96, 0.6);*/
            /*border: 2px #0e90d2 solid;*/
        }
        .accordion{
            margin-bottom: 0 !important;
        }
        .map{
            margin-top: 0;
            position: relative;
            width: auto;
            height:850px;
            border-top: 2px solid #fff;
            /*border: 2px #0e90d2 solid;*/
        }
        .c7{
            position:absolute;
            top: 0;
            left: 0;
            height: 60px;
            width: 100%;
            /*border: 2px #0e90d2 solid;*/
        }
        .c6{
            /*border: 2px #0e90d2 solid;*/
            background: rgba(8, 36, 96, 0.6);
        }
        .c6 div{
            border: none !important;
            color: #eee;
        }
        .accordion-heading a{
            color: #eee !important;
            text-decoration: none;
        }
        .accordion-heading a:hover,.accordion-inner:hover{
            color: #0e90d2 !important;
            cursor: pointer;
        }
        .accordion-inner{
            padding-left: 30px;
        }
        .c2{
            right: 30px;
        }
        .c1{
            left: 0;
        }
        .d-block{
            display: block;
        }
        .d-none{
            display: none;
        }
        .navbar-inner{
            background: linear-gradient(0deg , #1a50c4 , #082460, #1a50c4) !important;
            color: #fff !important;
            font-family: "Microsoft YaHei UI";
            height: 60px;
            font-size: 20px;
            line-height: 60px;
        }
        .navbar-inner li{
            font-size: 16px !important;
            line-height: 60px;
        }
        .navbar .nav>li>a,
        .navbar .brand{
            color: inherit;
            text-shadow: none !important;
            padding: 0 24px;
        }
        .navbar .nav>li>a:hover{
            color: #0e90d2;
        }
        button,input,textarea{
            outline: none;
        }
        .btn:focus{
            outline: none;
        }
        .c5{
            line-height: 36px;
            background: #0e90d2;
            color: #fff;
            padding: 0 6px;
            position: relative;
        }
        .closeBtn{
            position: absolute;
            top: 50%;
            right: 6px;
            margin-top: -7px;
            cursor: pointer;
        }
    </style>
</head>
<body>
<!--<h1>Hello, world!</h1>-->
<script src="http://code.jquery.com/jquery.js"></script>
<script src="../../source/js/bootstrap.min.js"></script>
<script src="../../source/js/jquery-1.12.4.js"></script>
<script type="text/javascript">
   $(function(){
       let bool = true
       $("#btn").click(function(){
           bool = !bool;
           console.log(bool);
           if( bool == true ){
               $(".c1").show()
               $(this).val('关闭')
           }else{
               $(".c1").hide()
               $(this).val('显示')
           }
       })
       $('.plateMenu>div').click(function(){
           $('.c2').show()
       })
       $('.closeBtn').click(function(){
           $('.c2').hide()
       })
   });
</script>
<div class="navbar">
    <div class="navbar-inner">
        <a class="brand" href="#">中石化重庆页岩气土地资产管理平台</a>
        <ul class="nav">
            <li style="margin-left: 50px;"><a href="${pageContext.request.contextPath}/login.html">地图展示</a></li>
            <li><a href="#">基础数据</a></li>
            <li><a href="${pageContext.request.contextPath}/datam.html">资料管理</a></li>
            <li><a href="#">信息检索</a></li>
            <li><a href="#">统计分析</a></li>
            <li><a href="#">数据共享</a></li>
            <li><a href="${pageContext.request.contextPath}/sysm.html">后台管理</a></li>
            <li  style="margin-left: 300px"><a href="#">退出</a></li>
        </ul>
    </div>
</div>
<div id="map" class="map">

        <div id="container"></div>
        <script type="text/javascript">
            //实例化图层数据源对象

            var TiandituSource = new ol.source.XYZ({

                url:"http://t0.tianditu.gov.cn/img_w/wmts?SERVICE=WMTS&REQUEST=GetTile&VERSION=1.0.0&LAYER=img&STYLE=default&TILEMATRIXSET=w&FORMAT=tiles&TILEMATRIX={z}&TILEROW={y}&TILECOL={x}&tk=faf75df0ab387dd47194f3a6372e9db2",
                attributions: "天地图的属性描述",
                /*tileGrid: new ol.tilegrid.WMTS({
                    origin: ol.extent.getTopLeft(projectionExtent),
                    //resolutions: res.slice(0, 15),

                }),*/
                wrapX: false
            });

            var TianditumarkSource = new ol.source.XYZ({
                url:"http://t0.tianditu.gov.cn/cia_w/wmts?SERVICE=WMTS&REQUEST=GetTile&VERSION=1.0.0&LAYER=cia&STYLE=default&TILEMATRIXSET=w&FORMAT=tiles&TILEMATRIX={z}&TILEROW={y}&TILECOL={x}&tk=faf75df0ab387dd47194f3a6372e9db2",

                wrapX: false
            });

            //实例化Map对象加载地图
            var map = new ol.Map({
                //地图容器div的ID
                target: 'map',
                //地图容器中加载的图层
                layers: [
                    //加载瓦片图层数据（OSM）
                    new ol.layer.Tile({
                        source: TiandituSource
                    }),
                    //加载瓦片网格图层
                    /*new ol.layer.Tile({
                        source: new ol.source.TileDebug({
                            //地图投影坐标系
                            projection: 'EPSG:4326',
                            //获取瓦片图层数据对象（osmSource）的网格信息
                            tileGrid: TiandituSource.getTileGrid()
                        })
                    }),*/
                    new ol.layer.Tile({

                        source: TianditumarkSource
                    })

                ],
                //地图视图设置
                view: new ol.View({
                    //地图初始中心点
                    center: [107.57884, 29.73346],
                    /*center:[10500000,2900000],*/
                    //地图初始显示级别
                    zoom: 17,
                    projection: "EPSG:4326",

                }),

            });
        </script>

<div class="c7">
    <h1>
        <form class="form-search" action="#" style="margin-left: 77px">
            <input type="text" class="input-medium search-query">
            <button type="submit" class="btn">Search</button>
            <input type="button" value="关闭" id="btn"  />
        </form>
    </h1>
</div>
<div class="c1" id="i1">
   <div>
       <div class="c5" >
           页岩气作业平台（123）
       </div>
   </div>
   <!--页岩气作业平台（123）-->
   <div class="c6">
       <div class="accordion" id="accordionLeft">
           <div class="accordion-group">
               <div class="accordion-heading">
                   <a class="accordion-toggle" data-toggle="collapse" data-parent="#accordionLeft" href="#collapseLeftOne">
                       涪陵区
                   </a>
               </div>
               <div id="collapseLeftOne" class="accordion-body collapse in plateMenu">
                   <div class="accordion-inner">
                       页岩气作业平台1
                   </div>
                   <div class="accordion-inner">
                       页岩气作业平台2
                   </div>
               </div>

           </div>
           <div class="accordion-group">
               <div class="accordion-heading">
                   <a class="accordion-toggle" data-toggle="collapse" data-parent="#accordionLeft" href="#collapseLeftTwo">
                       武隆区
                   </a>
               </div>
               <div id="collapseLeftTwo" class="accordion-body collapse plateMenu">
                   <div class="accordion-inner">
                       页岩气作业平台5
                   </div>
               </div>
           </div>
       </div>
   </div>
</div>
<div class="c2 d-none" style="margin-right: 77px"  >
    <div>
        <div class="c5">
            页岩气作业平台
            <i class="icon-remove icon-white closeBtn"></i>
        </div>
    </div>
    <div class="c6">
        <div class="accordion" id="accordionRight">
            <div class="accordion-group">
                <div class="accordion-heading">
                    <a class="accordion-toggle" data-toggle="collapse" data-parent="#accordionRight" href="#collapseRightOne">
                        涪陵区
                    </a>
                </div>
                <div id="collapseRightOne" class="accordion-body collapse in">
                    <div class="accordion-inner">
                        页岩气作业平台1
                    </div>
                    <div class="accordion-inner">
                        页岩气作业平台2
                    </div>
                </div>
            </div>
            <div class="accordion-group">
                <div class="accordion-heading">
                    <a class="accordion-toggle" data-toggle="collapse" data-parent="#accordionRight" href="#collapseRightTwo">
                        武隆区
                    </a>
                </div>
                <div id="collapseRightTwo" class="accordion-body collapse">
                    <div class="accordion-inner">
                        页岩气作业平台5
                    </div>
                </div>
            </div>
        </div>
    </div>
</div>
</div>

</body>



</html>--%>
<%------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------%>
  //实例化Map对象加载地图
        /*var map = new ol.Map({
            //地图容器div的ID
            target: 'map',
            //地图容器中加载的图层
            layers: [
                //加载瓦片图层数据
                new ol.layer.Tile({
                    source: new ol.source.OSM()
                })
            ],
            //地图视图设置
            view: new ol.View({
                //地图初始中心点
                center: [-10997148, 4569099],
                //地图初始显示级别
                zoom: 3
            })
        });*/
        <%-- <a class="brand" href="#">中石化重庆页岩气土地资产管理平台</a>--%>
        /* tileGrid: new ol.tilegrid.WMTS({
                         origin: ol.extent.getTopLeft(projectionExtent),
                         //resolutions: res.slice(0, 15),
        
                     }),*/
         /* tileGrid: new ol.tilegrid.WMTS({
                         origin: ol.extent.getTopLeft(projectionExtent),*/
                    //resolutions: res.slice(0, 15),
        
                    /*  }),*/
                    // projection: 'EPSG:4490',
   /* new ol.layer.Tile({
                       source: new ol.source.TileDebug({
                           //地图投影坐标系
                           projection: 'EPSG:3857',
                           //获取瓦片图层数据对象（osmSource）的网格信息
                           tileGrid: TiandituSource.getTileGrid()
                       })
                   }),*/
     //加载ArcGIS瓦片数据图层
           /*var arcGISSource = new ol.source.TileArcGISRest({
               url: 'http://sampleserver1.arcgisonline.com/ArcGIS/rest/services/' + 'Specialty/ESRI_StateCityHighway_USA/MapServer'
           });
           var arcGISLayers = new ol.layer.Tile({
               source: arcGISSource,
               extent: [-13884991, 2870341, -7455066, 6338219]
           });
           map.addLayer(arcGISLayers);
   */