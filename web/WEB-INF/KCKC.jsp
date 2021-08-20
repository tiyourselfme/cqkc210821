<!DOCTYPE html>
<html lang="en">

<head>
    <title>OpenLayers example</title>
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <!-- Bootstrap -->
    <link href="../../source/css/bootstrap.min.css" rel="stylesheet" media="screen">
    <meta name="renderer" content="webkit">
    <meta http-equiv="X-UA-Compatible" content="IE=edge,chrome=1">
    <link rel="stylesheet" href="../../source/css/ol.css" type="text/css">

    <script src="../../source/js/ol.js"></script>

    <style>
        body{
            background: linear-gradient(0deg ,  #071b34,  #071b34,  #071b34) !important;
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
        .c1_layer{
            position: fixed;
            top: 70px;
            z-index: 101;
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
            margin-top: 10px;
            position: relative;
            width: auto;
            height:850px;
            padding:9px;
            border: 7px solid #006dcc;
            border-radius: 30px;
            /*border: 2px #0e90d2 solid;*/
        }


        .c7{
            position:absolute;
            top: 0;
            left: 0;
            height: 60px;
            width: 100%;
            z-index: 100;
            /*border: 2px #0e90d2 solid;*/
        }
        .c6{
            /*border: 2px #0e90d2 solid;*/
            background: rgba(8, 36, 96, 0.5);

        }
        .c6_layer{
            /*border: 2px #0e90d2 solid;*/
            background: rgba(8, 36, 96, 0.5);

        }
        .c6 div{
            border: none !important;
            color: #eee;
        }
        .c6_layer div{
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
            margin-top:145px;

        }
        .c2_layer{
            right: 30px;
            margin-top:145px;

        }
        .c1{
            left: 0;
            margin-top:145px;
        }
        .c1_layer{
            left: 0;
            margin-top:145px;
        }
        .d-block{
            display: block;
        }
        .d-none{
            display: none;
        }
        .navbar-inner{
            /*background: linear-gradient(0deg , #1a50c4 , #082460, #1a50c4) !important;*/
            background-image:url("../../source/img/4.png");
            background-repeat: no-repeat;
            background-position: center;
            background-color: #071b34;
            color: #fff !important;
            font-family: "Microsoft YaHei UI";
            height: 81px;
            width:1877px;
            font-size: 20px;
            line-height: 60px;
            border-width: 0;
            border-color:   #1b3b61;

        }
        .navbar{
            height: 80px;
        }
        .navbar-inner li{
            font-size: 16px !important;
            line-height: 60px;
        }
        .navbar .nav{
            margin-left: 600px;
            margin-top: 10px;
        }
        .navbar .nav>li{
            margin-left: 20px;
            width: 120px;

        }
        .navbar .nav>li>a,
        .navbar .brand{
            color: inherit;
            text-shadow: none !important;
            padding: 0 24px;
        }
        .navbar .nav>li>a:hover{
            color: #0e90d2;
            background-image: url("../../source/img/8.png");
            background-position: center;
            background-repeat: no-repeat;
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
        .c5_layer{
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
        /*.ol-layer canvas{
            width: 100%;
            height: 100%;
            display: block;
        }*/
        select::-ms-expand { display: none; }
        .info-select{
            width: 0;
            margin-left: 0;
            border: none;
            outline: none;
            /*将默认的select选择框样式清除*/
            appearance:none;
            -moz-appearance:none;
            -webkit-appearance:none;
            -ms-appearance:none;

            /*在选择框的最右侧中间显示小箭头图片*/
            background: url(../img/arrow.png) no-repeat scroll right center transparent;
        }
    </style>
</head>
<body>
<!--<h1>Hello, world!</h1>-->
<script src="http://code.jquery.com/jquery.js"></script>
<script src="../../source/js/bootstrap.min.js"></script>
<script src="../../source/js/jquery-1.12.4.js"></script>
<script type="text/javascript">
    let bool = true
    let bool_layer = false
    $(function(){

        $("#btn").click(function(){
            bool = !bool;
            console.log(bool);
            if(bool_layer == true){
                bool_layer = !bool_layer;
                $('.c1_layer').hide()
                $('.c2_layer').hide()
            }

            if( bool == true && bool_layer==false){
                $('.c1').show()
                /*$(this).val('关闭')*/
            }else if ( bool == false){
                $('.c1').hide()
                $('.c2').hide()
                /*$(this).val('显示')*/
            }

        })
        $('.c1 .plateMenu>div').click(function(){
            $('.c2').show()
        })
        $('.c2 .closeBtn').click(function(){
            $('.c2').hide()
        })
        $('.c1 .closeBtn').click(function(){
            bool = !bool;
            console.log(bool);
            $('.c1').hide()

        })
    })
    $(function(){
        $('.c1_layer').hide()
        $("#btn_layer").click(function(){
            bool_layer = !bool_layer;
            console.log(bool_layer);
            if(bool == true){
                bool = !bool;
                $('.c1').hide()
                $('.c2').hide()
            }

            if( bool_layer == true &&  bool==false){
                $('.c1_layer').show()
                /*$(this).val('关闭')*/
            }else if(bool_layer == false){
                $('.c1_layer').hide()
                /*$(this).val('显示')*/
            }
        })
        $('.c1_layer .plateMenu>div').click(function(){
            $('.c2_layer').show()
        })
        $('.c2_layer .closeBtn').click(function(){
            $('.c2_layer').hide()
        })
        $('.c1_layer .closeBtn').click(function(){
            bool_layer = !bool_layer;
            console.log(bool_layer);
            $('.c1_layer').hide()
            x
        })
    })


</script>
<div class="navbar">
    <div class="navbar-inner">


        <ul class="nav">
            <li style="margin-left: 50px; padding-left: 30px" ><a href="${pageContext.request.contextPath}/login.html">地图展示</a></li>
            <li><a href="#" style="padding-left: 30px">基础数据</a></li>
            <li><a href="${pageContext.request.contextPath}/datam.html" style="padding-left: 25px">资料管理</a></li>
            <li><a href="#" style="padding-left: 30px">信息检索</a></li>
            <li><a href="#" style="padding-left: 30px">统计分析</a></li>
            <li><a href="#" style="padding-left: 30px">数据共享</a></li>
            <li><a href="${pageContext.request.contextPath}/sysm.html" style="padding-left: 29px">后台管理</a></li>
            <li><a href="#" style="padding-left: 43px">  退出</a></li>
            <input type="button" class="ButtonLib" id="panto" value="平移到重庆">
        </ul>
    </div>
</div>
<div id="map" class="map">


    <div class="c7">
        <h1>
            <form class="form-search" action="#" style="margin-left: 77px">
                <input type="text" class="input-medium search-query">
                <img src="../../source/img/5_3.png">
                <img src="../../source/img/6.png" id="btn">
                <img src="../../source/img/7.png" id="btn_layer" >

            </form>

        </h1>
    </div>
    <div class="c1" id="i1">
        <div>
            <div class="c5">
                页岩气作业平台（123）
                <i class="icon-remove icon-white closeBtn"></i>
            </div>
        </div>
        <!--页岩气作业平台（123）-->
        <div class="c6">
            <div class="accordion" id="accordion">
                <div class="accordion-group">
                    <div class="accordion-heading">
                        <a class="accordion-toggle" data-toggle="collapse" data-parent="#accordionLeft" href="#collapseLeftOne">
                            涪陵区
                        </a>
                    </div>
                    <div id="collapseLeftOne" class="accordion-body collapse in plateMenu">
                        <div class="accordion-inner"  >
                            页岩气作业平台105
                        </div>
                        <div class="accordion-inner">
                            页岩气作业平台2
                        </div>
                        <div class="accordion-inner">
                            页岩气作业平台7
                        </div>
                        <div class="accordion-inner">
                            页岩气作业平台8
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
                            页岩气作业平台3
                        </div>
                        <div class="accordion-inner">
                            页岩气作业平台4
                        </div>
                    </div>
                </div>
                <div class="accordion-group">
                    <div class="accordion-heading">
                        <a class="accordion-toggle" data-toggle="collapse" data-parent="#accordionLeft" href="#collapseLeftFour">
                            南川区
                        </a>
                    </div>
                    <div id="collapseLeftFour" class="accordion-body collapse  plateMenu">
                        <div class="accordion-inner">
                            页岩气作业平台5
                        </div>
                        <div class="accordion-inner">
                            页岩气作业平台6
                        </div>

                    </div>

                </div>
                <div class="accordion-group">
                    <div class="accordion-heading">
                        <a class="accordion-toggle" data-toggle="collapse" data-parent="#accordionLeft" href="#collapseLeftFive" >
                            户主列表
                        </a>
                    </div>
                    <div id="collapseLeftFive" class="accordion-body collapse plateMenu">
                        <div class="accordion-inner" id="get_role">
                            获取户主
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
                            页岩气作业平台3
                        </div>
                        <div class="accordion-inner">
                            页岩气作业平台4
                        </div>
                    </div>

                </div>
                <div class="accordion-group">
                    <div class="accordion-heading">
                        <a class="accordion-toggle" data-toggle="collapse" data-parent="#accordionRight" href="#collapseRightThree">
                            南川区
                        </a>
                    </div>
                    <div id="collapseRightThree" class="accordion-body collapse">
                        <div class="accordion-inner">
                            页岩气作业平台5
                        </div>
                        <div class="accordion-inner">
                            页岩气作业平台6
                        </div>
                    </div>

                </div>

                <div class="accordion-group">
                    <div class="accordion-heading">
                        <a class="accordion-toggle" data-toggle="collapse" data-parent="#accordionRight" href="#collapseRightSix">
                            南川区
                        </a>
                    </div>
                    <div id="collapseRightSix" class="accordion-body collapse">
                        <div class="accordion-inner" id="contentRole">

                        </div>

                    </div>

                </div>

            </div>
        </div>
    </div>
    <div class="c1_layer" id="i1_layer">
        <div>
            <div class="c5_layer">
                图层展示
                <i class="icon-remove icon-white closeBtn"></i>
            </div>
        </div>
        <!--页岩气作业平台（123）-->
        <div class="c6_layer">
            <div class="accordion" id="accordion_layer">
                <div class="accordion-group">
                    <div class="accordion-heading">
                        <a class="accordion-toggle" data-toggle="collapse" data-parent="#accordionLeft" href="#collapseLeftOne_layer">
                            <fieldset id="layer10" >
                                <label class="checkbox" for="visible1">
                                    <input id="visible10" class="visible" type="checkbox">
                                    矢量地图
                                </label>
                            </fieldset>

                        </a>
                    </div>
                    <div id="collapseLeftOne_layer" class="accordion-body collapse in plateMenu">

                        <div class="accordion-inner"  >
                            <fieldset id="layer1" >
                                <label class="checkbox" for="visible1">
                                    <input id="visible1" class="visible" type="checkbox">
                                    行政界限
                                </label>
                            </fieldset>

                        </div>
                        <div class="accordion-inner">
                            <fieldset id="layer2" >
                                <label class="checkbox" for="visible2">
                                    <input id="visible2" class="visible" type="checkbox">
                                    分户图
                                </label>
                            </fieldset>

                        </div>
                        <div class="accordion-inner">
                            <fieldset id="layer3" >
                                <label class="checkbox" for="visible3">
                                    <input id="visible3" class="visible" type="checkbox">
                                    平台红线
                                </label>
                            </fieldset>

                        </div>
                        <div class="accordion-inner">
                            <fieldset id="layer4" >
                                <label class="checkbox" for="visible4">
                                    <input id="visible4" class="visible" type="checkbox">
                                    永久界址点
                                </label>
                            </fieldset>

                        </div>
                        <div class="accordion-inner">
                            <fieldset id="layer5" >
                                <label class="checkbox" for="visible5">
                                    <input id="visible5" class="visible" type="checkbox">
                                    临时用地红线
                                </label>
                            </fieldset>

                        </div>
                        <div class="accordion-inner">
                            <fieldset id="layer6" >
                                <label class="checkbox" for="visible6" >
                                    <input id="visible6" class="visible" type="checkbox">
                                    征地分户图
                                    <select name="changeLayer" id="arcgisType" class="info-select">
                                        <option value="fhtu" selected="selected">

                                        </option>
                                    </select>

                                </label>
                            </fieldset>

                        </div>
                        <div class="accordion-inner">
                            <fieldset id="layer7" >
                                <label class="checkbox" for="visible7">
                                    <input id="visible7" class="visible" type="checkbox">
                                    永久用地红线面
                                </label>
                            </fieldset>

                        </div>

                    </div>

                </div>
                <div class="accordion-group">
                    <div class="accordion-heading">
                        <a class="accordion-toggle" data-toggle="collapse" data-parent="#accordionLeft" href="#collapseLeftTwo_layer">
                            <fieldset id="layer11" >
                                <label class="checkbox" for="visible11">
                                    <input id="visible11" class="visible" type="checkbox">
                                    3D模型
                                </label>
                            </fieldset>


                        </a>
                    </div>
                    <div id="collapseLeftTwo_layer" class="accordion-body collapse plateMenu">
                        <div class="accordion-inner">
                            <fieldset id="layer13" >
                                <label class="checkbox" for="visible13">
                                    <input id="visible13" class="visible" type="checkbox">
                                    平台1
                                </label>
                            </fieldset>

                        </div>
                        <div class="accordion-inner">
                            <fieldset id="layer14" >
                                <label class="checkbox" for="visible14">
                                    <input id="visible14" class="visible" type="checkbox">
                                    平台2
                                </label>
                            </fieldset>

                        </div>
                    </div>
                </div>

            </div>
        </div>
    </div>

</div>
<div id="wrapper">
    <div id="location">
        <div class="custom-mouse-position">&nbsp;</div>
    </div>
    <div id="scale"></div>
    <div id="nodelist">
        Click on the map to get feature info
    </div>
</div>
<div>矢量地图Feature总数： <span id="count"></span></div>
<script type="text/javascript">


    var TiandituSource = new ol.source.XYZ({

        url:"http://t0.tianditu.gov.cn/img_w/wmts?SERVICE=WMTS&REQUEST=GetTile&VERSION=1.0.0&LAYER=img&STYLE=default&TILEMATRIXSET=w&FORMAT=tiles&TILEMATRIX={z}&TILEROW={y}&TILECOL={x}&tk=faf75df0ab387dd47194f3a6372e9db2",
        attributions: "天地图的属性描述",

        wrapX: false
    });

    var TianditumarkSource = new ol.source.XYZ({
        url:"http://t0.tianditu.gov.cn/cia_w/wmts?SERVICE=WMTS&REQUEST=GetTile&VERSION=1.0.0&LAYER=cia&STYLE=default&TILEMATRIXSET=w&FORMAT=tiles&TILEMATRIX={z}&TILEROW={y}&TILECOL={x}&tk=faf75df0ab387dd47194f3a6372e9db2",


        wrapX: false
    });
    var Source53pt = new ol.source.ImageWMS({
        url: 'http://192.168.1.30:8080/geoserver/dy/wms?service=WMS&version=1.1.0&request=GetMap&layers=dy%3Ageotiff_coverage_53pt&bbox=107.498955082%2C29.607123143%2C107.505511678%2C29.613896276&width=743&height=768&srs=EPSG%3A4326&styles=&format=application/openlayers',
        params: {layers: 'dy:geotiff_coverage_53pt', VERSION: '1.1.0'},
        serverType: 'geoserver'
    });
    var openLayers;
    var layer = new ol.layer.Vector({
        source: new ol.source.Vector()
    });
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

            new ol.layer.Tile({

                source: TianditumarkSource
            }),

            new ol.layer.Image({
                source: Source53pt,

            }),
            layer,
        ],
        //地图视图设置
        view: new ol.View({
            //地图初始中心点
            center: [107.502, 29.610],
            /* center: [104, 30],*/
            /*center:[14500000, 15000000],*/
            projection: 'EPSG:4326',
            //projection: 'EPSG:3857',
            //地图初始显示级别
            //units:'meter',
            zoom: 15,
        }),
    });
    /*  $("#map").click(function (event){
          alert(map.getEventCoordinate(event))

      })*/
    var coord=[107.5024046,29.61105743];

    var vectorLayer = new ol.layer.Vector({
        source: new ol.source.Vector({
            url:'http://localhost:8080/geoserver/dy/ows?service=WFS&version=1.0.0&request=GetFeature&typeName=dy%3A53fu_desj&maxFeatures=50&outputFormat=application%2Fjson',
            format: new ol.format.GeoJSON(),
            features:Array.<new ol.Feature()>,

        }),
        style: new ol.style.Style({
            stroke: new ol.style.Stroke({
                color: 'red',

            })
        })
    });
    var feature = new ol.Feature({
        geometry: new ol.geom.MultiPolygon(vectorLayer),

    });
    var listenerKey = vectorLayer.getSource().on('change', function(){
        if (vectorLayer.getSource().getState() === 'ready') {    // 判定是否加载完成
            document.getElementById('count').innerHTML = vectorLayer.getSource().getFeatures().length;
            vectorLayer.getSource().unByKey(listenerKey); // 注销监听器
        }
    });
    map.addLayer(vectorLayer);

    var fh_feature=vectorLayer.getSource().getFeatures();

    /*c=new ol.Feature({
        geometry:new ol.geom.MultiPolygon(fh_feature),
    })*/
    var geo = fh_feature.getGeometry();//feture是几何元素

    console.log(fh_feature)

    console.log(coord)
    var out=ol.coordinate.toStringXY(coord)
    console.log(out)
    var isIn = geo.intersectsCoordinate(coord);

    if(isIn) {
        console.log("该mark点在当前几何元素里。");
    }else {
        console.log("no")
    }
    let bool_fhtu = false
    var label = document.getElementById('arcgisType');//数据类型对象
    /*openLayerMap(label.value);*/ //默认加载选中类型的地图
    $("#layer6").click(function(){
        bool_fhtu=!bool_fhtu
        if(bool_fhtu==true){
            openLayerMap(label.value)
        }else {
            onChange()
        }
    });

    function onChange() {
        map.removeLayer(Layers53FHSJ); //移除图层

    }
    function openLayerMap(type) {
        if (type == "fhtu") {
            var Source53FHSJ = new ol.source.ImageWMS({
                url: 'http://192.168.1.30:8080/geoserver/dy/wms?service=WMS&version=1.1.0&request=GetMap&layers=dy%3A53FHSJ--1&bbox=107.50107967196428%2C29.609146566410324%2C107.50370970500325%2C29.611290927973656&width=768&height=626&srs=EPSG%3A4490&styles=&format=application/openlayers',
                params: {layers: 'dy:53FHSJ--1', VERSION: '1.1.0'},
                serverType: 'geoserver'
            });
            Layers53FHSJ = new ol.layer.Image({
                source: Source53FHSJ,
            });
            map.addLayer(Layers53FHSJ);

        }
    }
    $(function () {
        $("#get_role").click(function () {
            var type = type;
            $.ajax({
                type: "get",
                contentType: "application/json",
                url:"http://localhost:8080/geoserver/dy/ows?service=WFS&version=1.0.0&request=GetFeature&typeName=dy%3A53fu_desj&maxFeatures=50&outputFormat=application%2Fjson",
                async: false,
                success:function (data,) {
                    console.log(data);
                    var item=data.features;
                    console.log(item)

                    var geometry=item[0].geometry;
                    var coordinates=geometry.coordinates;


                    var html_role="";
                    console.log(coordinates)
                    for(var x=0;x<coordinates.length;x++){
                        for(var y=0;y<coordinates[x].length;y++) {
                            var feature_fh = coordinates[x][y];
                            console.log(feature_fh)

                            /*for (var z=0;z<feature_fh.length;z++){
                                var feature_fhsj=feature_fh[z];
                                console.log(feature_fhsj)
                            }*/
                            /*ft = new ol.Feature({
                                geometry: new ol.geom.MultiPolygon(feature_fh[0].geometry.coordinate,'EPSG:4326')
                            })
                            ft.setStyle(new ol.style.Style({
                                image: new ol.style.Style({
                                    fill: new ol.style.Fill(
                                        {
                                            color: 'red'
                                        }
                                    )
                                })
                            }))

                            layer.getSource().addFeature(ft)*/
                        }
                    }
                    for(var i=0;i<item.length;i++){

                        /* html_role +="<ul>"+
                             "<li>"+item[i].properties.户主+"</li>"

                             +
                             "</ul>"
                         ;*/

                    }

                    $("#contentRole").html(html_role);
                }
            })
        })
    })
    /*var feature1 = vectorLayer.getSource().getFeatures()*/

    /* map.on('singleclick', function(event){
         // 通过getEventCoordinate方法获取地理位置，再转换为wgs84坐标，并弹出对话框显示


         var b=event.target.focusin;
         var c=map.getEventCoordinate(b)
         alert(c);
     })*/

    /*
        const  select = new ol.interaction.Select({

        layers: [Layers53FHSJ],
            style:ft,
            condition:ol.events.condition.singleClick,
            features:ft
    })
    map.addInteraction(select)*/
    /*var circle = new ol.Feature({
        geometry: new ol.geom.Point(
            [104, 30],'EPSG:4326')
    })
    circle.setStyle(new ol.style.Style({
        image: new ol.style.Circle({
            radius: 10,
            fill: new ol.style.Fill({
                color: 'red'
            })
        })
    }));

    layer.getSource().addFeature(circle);*/
    /*var Source105 = new ol.source.ImageWMS({
                url: 'http://192.168.1.30:8080/geoserver/dy/wms?service=WMS&version=1.1.0&request=GetMap&layers=dy%3Ageotiff_coverage_105&bbox=107.444724734%2C29.516219593%2C107.452214782%2C29.523020673&width=768&height=697&srs=EPSG%3A4326&styles=&format=application/openlayers',
                params: {layers: 'dy:geotiff_coverage_105', VERSION: '1.1.0'},
                serverType: 'geoserver'
            });
            var Layers105 = new ol.layer.Image({
                source: Source105,
            });
            map.addLayer(Layers105);

              var Source106 = new ol.source.ImageWMS({
                     url: 'http://192.168.1.30:8080/geoserver/dy/wms?service=WMS&version=1.1.0&request=GetMap&layers=dy%3Ageotiff_coverage_106&bbox=107.507325242%2C29.41489306%2C107.513146413%2C29.421040156&width=727&height=768&srs=EPSG%3A4326&styles=&format=application/openlayers',
                     params: {layers: 'dy:geotiff_coverage_106', VERSION: '1.1.0'},
                     serverType: 'geoserver'
                 });
                 var Layers106 = new ol.layer.Image({
                     source: Source106,
                 });
                 map.addLayer(Layers106);
                 var Source162 = new ol.source.ImageWMS({
                     url: 'http://192.168.1.30:8080/geoserver/dy/wms?service=WMS&version=1.1.0&request=GetMap&layers=dy%3Ageotiff_coverage_162&bbox=107.409065892%2C29.299962192%2C107.417591219%2C29.306906786&width=768&height=625&srs=EPSG%3A4326&styles=&format=application/openlayers',
                     params: {layers: 'dy:geotiff_coverage_162', VERSION: '1.1.0'},
                     serverType: 'geoserver'
                 });
                 var Layers162 = new ol.layer.Image({
                     source: Source162,
                 });
                 map.addLayer(Layers162);
                 var Source159 = new ol.source.ImageWMS({
                     url: 'http://192.168.1.30:8080/geoserver/dy/wms?service=WMS&version=1.1.0&request=GetMap&layers=dy%3Ageotiff_coverage_159&bbox=107.49037136%2C29.381204865%2C107.501468398%2C29.38972667&width=768&height=589&srs=EPSG%3A4326&styles=&format=application/openlayers',
                     params: {layers: 'dy:geotiff_coverage_159', VERSION: '1.1.0'},
                     serverType: 'geoserver'
                 });
                 var Layers159 = new ol.layer.Image({
                     source: Source159,
                 });
                 map.addLayer(Layers159);
                 var Source11E = new ol.source.ImageWMS({
                     url: 'http://192.168.1.30:8080/geoserver/dy/wms?service=WMS&version=1.1.0&request=GetMap&layers=dy%3Ageotiff_coverage_11E&bbox=107.577877979%2C29.686171408%2C107.586505517%2C29.694404844&width=768&height=732&srs=EPSG%3A4326&styles=&format=application/openlayers',
                     params: {layers: 'dy:geotiff_coverage_11E', VERSION: '1.1.0'},
                     serverType: 'geoserver'
                 });
                 var Layers11E = new ol.layer.Image({
                     source: Source11E,
                 });
                 map.addLayer(Layers11E);
              var Source11 = new ol.source.ImageWMS({
                     url: 'http://192.168.1.30:8080/geoserver/dy/wms?service=WMS&version=1.1.0&request=GetMap&layers=dy%3Ageotiff_coverage_11&bbox=107.544168439%2C29.684940558%2C107.557526033%2C29.6955614&width=768&height=610&srs=EPSG%3A4326&styles=&format=application/openlayers',
                     params: {layers: 'dy:geotiff_coverage_11', VERSION: '1.1.0'},
                     serverType: 'geoserver'
                 });
                 var Layers11 = new ol.layer.Image({
                     source: Source11,
                 });
                 map.addLayer(Layers11);
                 var Source109 = new ol.source.ImageWMS({
                     url: 'http://192.168.1.30:8080/geoserver/dy/wms?service=WMS&version=1.1.0&request=GetMap&layers=dy%3Ageotiff_coverage_109&bbox=107.424581751%2C29.684885068%2C107.430985304%2C29.691933809&width=697&height=768&srs=EPSG%3A4326&styles=&format=application/openlayers',
                     params: {layers: 'dy:geotiff_coverage_109', VERSION: '1.1.0'},
                     serverType: 'geoserver'
                 });
                 var Layers109 = new ol.layer.Image({
                     source: Source109,
                 });
                 map.addLayer(Layers109);
                 var Source108 = new ol.source.ImageWMS({
                     url: 'http://192.168.1.30:8080/geoserver/dy/wms?service=WMS&version=1.1.0&request=GetMap&layers=dy%3Ageotiff_coverage_108&bbox=107.314483512%2C29.310145434%2C107.322083398%2C29.318310799&width=714&height=768&srs=EPSG%3A4326&styles=&format=application/openlayers',
                     params: {layers: 'dy:geotiff_coverage_108', VERSION: '1.1.0'},
                     serverType: 'geoserver'
                 });
                 var Layers108 = new ol.layer.Image({
                     source: Source108,
                 });
                 map.addLayer(Layers108);
                 var Source107 = new ol.source.ImageWMS({
                     url: 'http://192.168.1.30:8080/geoserver/dy/wms?service=WMS&version=1.1.0&request=GetMap&layers=dy%3Ageotiff_coverage_107&bbox=107.467128323%2C29.30545818%2C107.474089155%2C29.312626849&width=745&height=768&srs=EPSG%3A4326&styles=&format=application/openlayers',
                     params: {layers: 'dy:geotiff_coverage_107', VERSION: '1.1.0'},
                     serverType: 'geoserver'
                 });
                 var Layers107 = new ol.layer.Image({
                     source: Source107,
                 });
                 map.addLayer(Layers107);
 var Source18ptand1 = new ol.source.ImageWMS({
           url: 'http://192.168.1.30:8080/geoserver/dy/wms?service=WMS&version=1.1.0&request=GetMap&layers=dy%3Ageotiff_coverage_18pt%261&bbox=107.528067012%2C29.727249169%2C107.536326055%2C29.73470704&width=768&height=693&srs=EPSG%3A4326&styles=&format=application/openlayers',
           params: {layers: 'dy:geotiff_coverage_18pt&1', VERSION: '1.1.0'},
           serverType: 'geoserver'
       });
       var Layers18ptand1 = new ol.layer.Image({
           source: Source18ptand1,
       });
       map.addLayer(Layers18ptand1);
       var Source165 = new ol.source.ImageWMS({
           url: 'http://192.168.1.30:8080/geoserver/dy/wms?service=WMS&version=1.1.0&request=GetMap&layers=dy%3Ageotiff_coverage_16five&bbox=107.522718869%2C29.387775767%2C107.53066353%2C29.394553108&width=768&height=655&srs=EPSG%3A4326&styles=&format=application/openlayers',
           params: {layers: 'dy:geotiff_coverage_16five', VERSION: '1.1.0'},
           serverType: 'geoserver'
       });
       var Layers165 = new ol.layer.Image({
           source: Source165,
       });
       map.addLayer(Layers165);
       var Source21xpt = new ol.source.ImageWMS({
           url: 'http://192.168.1.30:8080/geoserver/dy/wms?service=WMS&version=1.1.0&request=GetMap&layers=dy%3Ageotiff_coverage_21xpt&bbox=107.498546128%2C29.676097861%2C107.505527462%2C29.678688594&width=768&height=330&srs=EPSG%3A4326&styles=&format=application/openlayers',
           params: {layers: 'dy:geotiff_coverage_21xpt', VERSION: '1.1.0'},
           serverType: 'geoserver'
       });
       var Layers21xpt = new ol.layer.Image({
           source: Source21xpt,
       });
       map.addLayer(Layers21xpt);
       var Source2pthb = new ol.source.ImageWMS({
           url: 'http://192.168.1.30:8080/geoserver/dy/wms?service=WMS&version=1.1.0&request=GetMap&layers=dy%3Ageotiff_coverage_2pthb&bbox=107.525189042%2C29.670911262%2C107.535398133%2C29.676897094&width=768&height=450&srs=EPSG%3A4326&styles=&format=application/openlayers',
           params: {layers: 'dy:geotiff_coverage_2pthb', VERSION: '1.1.0'},
           serverType: 'geoserver'
       });
       var Layers2pthb = new ol.layer.Image({
           source: Source2pthb,
       });
       map.addLayer(Layers2pthb);
       var Source3hfs = new ol.source.ImageWMS({
           url: 'http://192.168.1.30:8080/geoserver/dy/wms?service=WMS&version=1.1.0&request=GetMap&layers=dy%3Ageotiff_coverage_3hfs&bbox=107.466081785%2C29.599439857%2C107.473794366%2C29.606186342&width=768&height=671&srs=EPSG%3A4326&styles=&format=application/openlayers',
           params: {layers: 'dy:geotiff_coverage_3hfs', VERSION: '1.1.0'},
           serverType: 'geoserver'
       });
       var Layers3hfs = new ol.layer.Image({
           source: Source3hfs,
       });
       map.addLayer(Layers3hfs);
       var Source3hftsz = new ol.source.ImageWMS({
           url: 'http://192.168.1.30:8080/geoserver/dy/wms?service=WMS&version=1.1.0&request=GetMap&layers=dy%3Ageotiff_coverage_3hftsz&bbox=107.448915401%2C29.55127453%2C107.456788279%2C29.55842758&width=768&height=697&srs=EPSG%3A4326&styles=&format=application/openlayers',
           params: {layers: 'dy:geotiff_coverage_3hftsz', VERSION: '1.1.0'},
           serverType: 'geoserver'
       });
       var Layers3hftsz = new ol.layer.Image({
           source: Source3hftsz,
       });
       map.addLayer(Layers3hftsz);
          var Source40pt = new ol.source.ImageWMS({
       url: 'http://192.168.1.30:8080/geoserver/dy/wms?service=WMS&version=1.1.0&request=GetMap&layers=dy%3Ageotiff_coverage_40pt&bbox=107.526825752%2C29.624592937%2C107.534713713%2C29.6312117&width=768&height=644&srs=EPSG%3A4326&styles=&format=application/openlayers',
       params: {layers: 'dy:geotiff_coverage_40pt', VERSION: '1.1.0'},
       serverType: 'geoserver'
   });
   var Layers40pt = new ol.layer.Image({
       source: Source40pt,
   });
   map.addLayer(Layers40pt);
  var Source41pt = new ol.source.ImageWMS({
       url: 'http://192.168.1.30:8080/geoserver/dy/wms?service=WMS&version=1.1.0&request=GetMap&layers=dy%3Ageotiff_coverage_41pt&bbox=107.53711115%2C29.623840008%2C107.545255413%2C29.630427127&width=768&height=621&srs=EPSG%3A4326&styles=&format=application/openlayers',
       params: {layers: 'dy:geotiff_coverage_41pt', VERSION: '1.1.0'},
       serverType: 'geoserver'
   });
   var Layers41pt = new ol.layer.Image({
       source: Source41pt,
   });
   map.addLayer(Layers41pt);
   var Source46pt = new ol.source.ImageWMS({
       url: 'http://192.168.1.30:8080/geoserver/dy/wms?service=WMS&version=1.1.0&request=GetMap&layers=dy%3Ageotiff_coverage_46pt&bbox=107.500272964%2C29.622791782%2C107.508244908%2C29.628545501&width=768&height=554&srs=EPSG%3A4326&styles=&format=application/openlayers',
       params: {layers: 'dy:geotiff_coverage_46pt', VERSION: '1.1.0'},
       serverType: 'geoserver'
   });
   var Layers46pt = new ol.layer.Image({
       source: Source46pt,
   });
   map.addLayer(Layers46pt);
   var Source48pt = new ol.source.ImageWMS({
       url: 'http://192.168.1.30:8080/geoserver/dy/wms?service=WMS&version=1.1.0&request=GetMap&layers=dy%3Ageotiff_coverage_48pt&bbox=107.532135635%2C29.614636419%2C107.539642744%2C29.621290515&width=768&height=680&srs=EPSG%3A4326&styles=&format=application/openlayers',
       params: {layers: 'dy:geotiff_coverage_48pt', VERSION: '1.1.0'},
       serverType: 'geoserver'
   });
   var Layers48pt = new ol.layer.Image({
       source: Source48pt,
   });
   map.addLayer(Layers48pt);
   var Source49pt = new ol.source.ImageWMS({
       url: 'http://192.168.1.30:8080/geoserver/dy/wms?service=WMS&version=1.1.0&request=GetMap&layers=dy%3Ageotiff_coverage_49pt&bbox=107.554844113%2C29.616037849%2C107.561039819%2C29.620780571&width=768&height=587&srs=EPSG%3A4326&styles=&format=application/openlayers',
       params: {layers: 'dy:geotiff_coverage_49pt', VERSION: '1.1.0'},
       serverType: 'geoserver'
   });
   var Layers49pt = new ol.layer.Image({
       source: Source49pt,
   });
   map.addLayer(Layers49pt);*/
    /*    var Source26xpt = new ol.source.ImageWMS({
            url: 'http://192.168.1.30:8080/geoserver/dy/wms?service=WMS&version=1.1.0&request=GetMap&layers=dy%3Ageotiff_coverage_26xpt&bbox=107.495576434%2C29.652993665%2C107.503256121%2C29.658948113&width=768&height=595&srs=EPSG%3A4326&styles=&format=application/openlayers',
            params: {layers: 'dy:geotiff_coverage_26xpt', VERSION: '1.1.0'},
            serverType: 'geoserver'
        });
        var Layers26xpt = new ol.layer.Image({
            source: Source26xpt,
        });
        map.addLayer(Layers26xpt);
        var Source23dpt = new ol.source.ImageWMS({
            url: 'http://192.168.1.30:8080/geoserver/dy/wms?service=WMS&version=1.1.0&request=GetMap&layers=dy%3Ageotiff_coverage_23dpt&bbox=107.528780918%2C29.681784627%2C107.535690262%2C29.690940279&width=579&height=768&srs=EPSG%3A4326&styles=&format=application/openlayers',
            params: {layers: 'dy:geotiff_coverage_23dpt', VERSION: '1.1.0'},
            serverType: 'geoserver'
        });
        var Layers23dpt = new ol.layer.Image({
            source: Source23dpt,
        });
        map.addLayer(Layers23dpt);*/
    /*  var Source53pt = new ol.source.ImageWMS({
          url: 'http://192.168.1.30:8080/geoserver/dy/wms?service=WMS&version=1.1.0&request=GetMap&layers=dy%3Ageotiff_coverage_53pt&bbox=107.498955082%2C29.607123143%2C107.505511678%2C29.613896276&width=743&height=768&srs=EPSG%3A4326&styles=&format=application/openlayers',
          params: {layers: 'dy:geotiff_coverage_53pt', VERSION: '1.1.0'},
          serverType: 'geoserver'
      });
      var Layers53pt = new ol.layer.Image({
          source: Source53pt,
      });
      map.addLayer(Layers53pt);

  */
    var Source54pt = new ol.source.ImageWMS({
        url: 'http://192.168.1.30:8080/geoserver/dy/wms?service=WMS&version=1.1.0&request=GetMap&layers=dy%3Ageotiff_coverage_54pt&bbox=107.512712115%2C29.605486986%2C107.521925697%2C29.613926083&width=768&height=703&srs=EPSG%3A4326&styles=&format=application/openlayers',
        params: {layers: 'dy:geotiff_coverage_54pt', VERSION: '1.1.0'},
        serverType: 'geoserver'
    });
    var Layers54pt = new ol.layer.Image({
        source: Source54pt,
    });
    map.addLayer(Layers54pt);
    /*map.addLayer(untiled);
    map.addLayer(tiled);*/
    /*      var Source56abpt = new ol.source.ImageWMS({
             url: 'http://192.168.1.30:8080/geoserver/dy/wms?service=WMS&version=1.1.0&request=GetMap&layers=dy%3Ageotiff_coverage_56abpt&bbox=107.461716287%2C29.590198406%2C107.472638402%2C29.60092868&width=768&height=754&srs=EPSG%3A4326&styles=&format=application/openlayers',
             params: {layers: 'dy:geotiff_coverage_56abpt', VERSION: '1.1.0'},
             serverType: 'geoserver'
         });
         var Layers56abpt = new ol.layer.Image({
             source: Source56abpt,
         });
         map.addLayer(Layers56abpt);
         var Source57and60pt = new ol.source.ImageWMS({
             url: 'http://192.168.1.30:8080/geoserver/dy/wms?service=WMS&version=1.1.0&request=GetMap&layers=dy%3Ageotiff_coverage_57%2660pt&bbox=107.478601392%2C29.576605359%2C107.49766034%2C29.597326353&width=706&height=768&srs=EPSG%3A4326&styles=&format=application/openlayers',
             params: {layers: 'dy:geotiff_coverage_57&60pt', VERSION: '1.1.0'},
             serverType: 'geoserver'
         });
         var Layers57and60pt = new ol.layer.Image({
             source: Source57and60pt,
         });
         map.addLayer(Layers57and60pt);
         var Source63pt = new ol.source.ImageWMS({
             url: 'http://192.168.1.30:8080/geoserver/dy/wms?service=WMS&version=1.1.0&request=GetMap&layers=dy%3Ageotiff_coverage_63pt&bbox=107.443285112%2C29.568737095%2C107.452297373%2C29.574975074&width=768&height=531&srs=EPSG%3A4326&styles=&format=application/openlayers',
             params: {layers: 'dy:geotiff_coverage_63pt', VERSION: '1.1.0'},
             serverType: 'geoserver'
         });
         var Layers63pt = new ol.layer.Image({
             source: Source63pt,
         });
         map.addLayer(Layers63pt);
         var Source59pt = new ol.source.ImageWMS({
             url: 'http://192.168.1.30:8080/geoserver/dy/wms?service=WMS&version=1.1.0&request=GetMap&layers=dy%3Ageotiff_coverage_23dpt&bbox=107.528780918%2C29.681784627%2C107.535690262%2C29.690940279&width=579&height=768&srs=EPSG%3A4326&styles=&format=application/openlayers',
             params: {layers: 'dy:geotiff_coverage_59pt', VERSION: '1.1.0'},
             serverType: 'geoserver'
         });
         var Layers59pt = new ol.layer.Image({
             source: Source59pt,
         });
         map.addLayer(Layers59pt);
         var Source61pt = new ol.source.ImageWMS({
             url: 'http://192.168.1.30:8080/geoserver/dy/wms?service=WMS&version=1.1.0&request=GetMap&layers=dy%3Ageotiff_coverage_61pt&bbox=107.444733608%2C29.573614334%2C107.457905101%2C29.586013527&width=768&height=722&srs=EPSG%3A4326&styles=&format=application/openlayers',
             params: {layers: 'dy:geotiff_coverage_61pt', VERSION: '1.1.0'},
             serverType: 'geoserver'
         });
         var Layers61pt = new ol.layer.Image({
             source: Source61pt,
         });
         map.addLayer(Layers61pt);
         var Source62pt = new ol.source.ImageWMS({
             url: 'http://192.168.1.30:8080/geoserver/dy/wms?service=WMS&version=1.1.0&request=GetMap&layers=dy%3Ageotiff_coverage_62pt&bbox=107.410603845%2C29.564572606%2C107.420124519%2C29.573757424&width=768&height=740&srs=EPSG%3A4326&styles=&format=application/openlayers',
             params: {layers: 'dy:geotiff_coverage_62pt', VERSION: '1.1.0'},
             serverType: 'geoserver'
         });
         var Layers62pt = new ol.layer.Image({
             source: Source62pt,
         });
         map.addLayer(Layers62pt);*/


    var view = map.getView();
    var zoom = view.getZoom();
    var center = view.getCenter();
    var rotation = view.getRotation();

    document.getElementById('panto').onclick=function () {
        var view=map.getView();
        var wh=ol.proj.fromLonLat([106.54,29.59]);
        view.setCenter(wh);
        view.setZoom(12);

    }
</script>

</body>



</html>