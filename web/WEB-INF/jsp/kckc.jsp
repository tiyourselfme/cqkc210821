<!DOCTYPE html>
<html lang="en">

<head>
    <title>OpenLayers example</title>
    <meta name="viewport" content="width=device-width, initial-scale=1.0" charset="UTF-8">
    <!-- Bootstrap -->
    <link href="../../source/css/bootstrap.min.css" rel="stylesheet" media="screen">
    <meta name="renderer" content="webkit">
    <meta http-equiv="X-UA-Compatible" content="IE=edge,chrome=1">
    <link rel="stylesheet" href="../../source/css/ol.css" type="text/css">

    <script src="../../source/js/ol.js"></script>
    <link rel="stylesheet" href="../../source/css/map_show.css" type="text/css">
</head>
<body>
<!--<h1>Hello, world!</h1>-->
<script src="http://code.jquery.com/jquery.js"></script>
<script src="../../source/js/bootstrap.min.js"></script>
<script src="../../source/js/jquery-1.12.4.js"></script>
<script src="../../source/js/click.js"></script>
<div class="navbar">
    <div class="navbar-inner">
        <ul class="nav">
            <li style="margin-left: 50px; padding-left: 30px"><a href="${pageContext.request.contextPath}/login.html">地图展示</a>
            </li>
            <li><a href="#" style="padding-left: 30px">基础数据</a></li>
            <li><a href="${pageContext.request.contextPath}/datam.html" style="padding-left: 25px">资料管理</a></li>
            <li><a href="#" style="padding-left: 30px">信息检索</a></li>
            <li><a href="#" style="padding-left: 30px">统计分析</a></li>
            <li><a href="#" style="padding-left: 30px">数据共享</a></li>
            <li><a href="${pageContext.request.contextPath}/sysm.html" style="padding-left: 29px">后台管理</a></li>
            <li><a href="#" style="padding-left: 43px"> 退出</a></li>
            <%--<input type="button" class="ButtonLib" id="panto" value="平移到53pt">--%>
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
                <img src="../../source/img/7.png" id="btn_layer">

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
                        <a class="accordion-toggle" data-toggle="collapse" data-parent="#accordionLeft"
                           href="#collapseLeftOne">
                            涪陵区
                        </a>
                    </div>
                    <div id="collapseLeftOne" class="accordion-body collapse in plateMenu">
                        <div class="accordion-inner" id="panto">
                            页岩气作业平台53
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
                        <a class="accordion-toggle" data-toggle="collapse" data-parent="#accordionLeft"
                           href="#collapseLeftTwo">
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
                        <a class="accordion-toggle" data-toggle="collapse" data-parent="#accordionLeft"
                           href="#collapseLeftFour">
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
            </div>
        </div>
    </div>
    <div class="c2 d-none" style="margin-right: 77px">
        <div>
            <div class="c5">
                ~~平台
                <i class="icon-remove icon-white closeBtn"></i>
            </div>
        </div>
        <div class="c6">
            <div class="accordion" id="accordionRight">
                <div class="accordion-group">
                    <div class="accordion-heading">
                        <a class="accordion-toggle" data-toggle="collapse" data-parent="#accordionRight"
                           href="#collapseRightOne">
                            批复类文件
                        </a>
                    </div>
                    <div id="collapseRightOne" class="accordion-body collapse in">
                        <div class="accordion-inner">
                            ...
                        </div>
                        <div class="accordion-inner">
                            ...
                        </div>
                    </div>
                </div>
                <div class="accordion-group">
                    <div class="accordion-heading">
                        <a class="accordion-toggle" data-toggle="collapse" data-parent="#accordionRight"
                           href="#collapseRightTwo">
                            技术类文件
                        </a>
                    </div>
                    <div id="collapseRightTwo" class="accordion-body collapse">
                        <div class="accordion-inner">
                            ...
                        </div>
                        <div class="accordion-inner">
                            ....
                        </div>
                    </div>

                </div>
                <div class="accordion-group">
                    <div class="accordion-heading">
                        <a class="accordion-toggle" data-toggle="collapse" data-parent="#accordionRight"
                           href="#collapseRightThree">
                            土地征收类文件
                        </a>
                    </div>
                    <div id="collapseRightThree" class="accordion-body collapse">
                        <div class="accordion-inner">
                            ...
                        </div>
                        <div class="accordion-inner">
                            ....
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
                        <a class="accordion-toggle" data-toggle="collapse" data-parent="#accordionLeft"
                           href="#collapseLeftOne_layer">
                            <fieldset id="layer10">
                                <label class="checkbox" for="visible1">
                                    <input id="visible10" class="visible" type="checkbox">
                                    矢量地图
                                </label>
                            </fieldset>

                        </a>
                    </div>
                    <div id="collapseLeftOne_layer" class="accordion-body collapse in plateMenu">

                        <div class="accordion-inner">
                            <fieldset id="layer1">
                                <label class="checkbox" for="visible1">
                                    <input id="visible1" class="visible" type="checkbox">
                                    行政界限
                                </label>
                            </fieldset>

                        </div>
                        <div class="accordion-inner">
                            <fieldset id="layer2">
                                <label class="checkbox" for="visible2">
                                    <input id="visible2" class="visible" type="checkbox">
                                    分户图
                                </label>
                            </fieldset>

                        </div>
                        <div class="accordion-inner">
                            <fieldset id="layer3">
                                <label class="checkbox" for="visible3">
                                    <input id="visible3" class="visible" type="checkbox">
                                    平台红线
                                </label>
                            </fieldset>

                        </div>
                        <div class="accordion-inner">
                            <fieldset id="layer4">
                                <label class="checkbox" for="visible4">
                                    <input id="visible4" class="visible" type="checkbox">
                                    永久界址点
                                </label>
                            </fieldset>

                        </div>
                        <div class="accordion-inner">
                            <fieldset id="layer5">
                                <label class="checkbox" for="visible5">
                                    <input id="visible5" class="visible" type="checkbox">
                                    临时用地红线
                                </label>
                            </fieldset>

                        </div>
                        <div class="accordion-inner">
                            <fieldset id="layer6">
                                <label class="checkbox" for="visible6">
                                    <input type="checkbox" id="visible6" value="fhtu" class="visible">
                                    征地分户图
                                </label>

                            </fieldset>
                        </div>
                        <div class="accordion-inner">
                            <fieldset id="layer7">
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
                        <a class="accordion-toggle" data-toggle="collapse" data-parent="#accordionLeft"
                           href="#collapseLeftTwo_layer">
                            <fieldset id="layer11">
                                <label class="checkbox" for="visible11">
                                    <input id="visible11" class="visible" type="checkbox">
                                    3D模型
                                </label>
                            </fieldset>


                        </a>
                    </div>
                    <div id="collapseLeftTwo_layer" class="accordion-body collapse plateMenu">
                        <div class="accordion-inner">
                            <fieldset id="layer13">
                                <label class="checkbox" for="visible13">
                                    <input id="visible13" class="visible" type="checkbox">
                                    平台1
                                </label>
                            </fieldset>

                        </div>
                        <div class="accordion-inner">
                            <fieldset id="layer14">
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
    <div class="c1_fh" id="c1_fh" style="margin-right: 77px">
        <div class="c1_fh_perproties">
            征地分户图
            <i class="icon-remove icon-white closeBtn"></i>
        </div>
        <div class="c1_fh_data" id="c1_fh_data">
            <div class="table">
                <table border="1px">
                    <tr>
                        <td style="width: 85px">
                            属性
                        </td>
                        <td style="width: 150px">
                            值
                        </td>
                    </tr>
                    <tr>
                        <td>面积</td>
                        <td id="area">&nbsp;</td>
                    </tr>

                    <tr>
                        <td>户主</td>
                        <td id="host">&nbsp;</td>
                    </tr>

                    <tr>
                        <td>图斑号</td>
                        <td id="tbh">&nbsp;</td>
                    </tr>

                    <tr>
                        <td>地类号</td>
                        <td id="dlh">&nbsp;</td>
                    </tr>

                    <tr>
                        <td>位置</td>
                        <td id="location_fh"></td>
                    </tr>

                    <tr>
                        <td>征地含盖项</td>
                        <td id="zdhgd">&nbsp;</td>
                    </tr>

                    <tr>
                        <td>土地座落</td>
                        <td id="tdzl">&nbsp;</td>
                    </tr>

                    <tr>
                        <td>X</td>
                        <td id="X">&nbsp;</td>
                    </tr>

                    <tr>
                        <td>Y</td>
                        <td id="Y">&nbsp;</td>
                    </tr>

                    <tr>
                        <td>Z</td>
                        <td id="Z">&nbsp;</td>
                    </tr>

                    <tr>
                        <td>备注</td>
                        <td id="remark">&nbsp;</td>
                    </tr>

                </table>
                <div id="appendix" style="color: white">
                    附件
                </div>
            </div>
        </div>

    </div>
</div>
<script>
    var TiandituSource = new ol.source.XYZ({
        url: "http://t0.tianditu.gov.cn/img_w/wmts?SERVICE=WMTS&REQUEST=GetTile&VERSION=1.0.0&LAYER=img&STYLE=default&TILEMATRIXSET=w&FORMAT=tiles&TILEMATRIX={z}&TILEROW={y}&TILECOL={x}&tk=faf75df0ab387dd47194f3a6372e9db2",
        attributions: "天地图的属性描述",
        wrapX: false
    });

    var TianditumarkSource = new ol.source.XYZ({
        url: "http://t0.tianditu.gov.cn/cia_w/wmts?SERVICE=WMTS&REQUEST=GetTile&VERSION=1.0.0&LAYER=cia&STYLE=default&TILEMATRIXSET=w&FORMAT=tiles&TILEMATRIX={z}&TILEROW={y}&TILECOL={x}&tk=faf75df0ab387dd47194f3a6372e9db2",
        wrapX: false
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
            new ol.layer.Vector({
                source: new ol.source.Vector({
                    url: '../../source/geojson/fulingborder.geojson',
                    format: new ol.format.GeoJSON(),
                }),
                style: new ol.style.Style({
                    stroke: new ol.style.Stroke({
                        color: 'red',
                    })
                })
            }),
            new ol.layer.Vector({
                source: new ol.source.Vector({
                    url: '../../source/geojson/nanchuanborder.geojson',
                    format: new ol.format.GeoJSON(),
                }),
                style: new ol.style.Style({
                    stroke: new ol.style.Stroke({
                        color: 'orange',
                    })
                })
            }),
            new ol.layer.Vector({
                source: new ol.source.Vector({
                    url: '../../source/geojson/wulongborder.geojson',
                    format: new ol.format.GeoJSON(),
                }),
                style: new ol.style.Style({
                    stroke: new ol.style.Stroke({
                        color: 'blue',
                    })
                })
            }),
            //加载瓦片网格图层
            new ol.layer.Tile({
                source: TianditumarkSource
            }),
        ],
        //地图视图设置
        view: new ol.View({
            //地图初始中心点
            center: [107.502, 29.610],
            /*center:[14500000, 15000000],*/
            projection: 'EPSG:4326',
            //地图初始显示级别
            zoom: 18,
        }),

    });
    var Sourcelight_tiff = new ol.source.ImageWMS({
        url: 'http://192.168.1.30:8080/geoserver/dy/wms?service=WMS&version=1.1.0&request=GetMap&layers=dy%3Afinalydata_tif&bbox=107.314483512%2C29.299961786%2C107.60449965%2C29.773992274&width=469&height=768&srs=EPSG%3A4326&styles=&format=image%2Fjpeg',
        params: {layers: 'dy:finalydata_tif', VERSION: '1.1.0'},
        serverType: 'geoserver'
    });
    var Layerslight_tiff = new ol.layer.Image({
        source: Sourcelight_tiff,
    });
    map.addLayer(Layerslight_tiff);
    $("#map").click(function (event) {
        n = map.getEventCoordinate(event);
        console.log(n);
    })
    $("#c1_fh").hide();
    var coord = [107.50268742, 29.61077749];
    const style = new ol.style.Style({
        fill: new ol.style.Fill({
            color: 'rgba(255, 255, 255, 0.6)',
        }),
        stroke: new ol.style.Stroke({
            color: '#319FD3',
            width: 1,
        }),
        text: new ol.style.Text({
            font: '12px Calibri,sans-serif',
            fill: new ol.style.Fill({
                color: '#000',
            }),
            stroke: new ol.style.Stroke({
                color: '#fff',
                width: 3,
            }),
        }),
    });
    const vectorLayer = new ol.layer.Vector({
        source: new ol.source.Vector({
            url: 'http://localhost:8080/geoserver/dy/ows?service=WFS&version=1.0.0&request=GetFeature&typeName=dy%3A53fu_desj&maxFeatures=100&outputFormat=application%2Fjson',
            format: new ol.format.GeoJSON(),
        }),
        style: function (feature) {
            style.getText().setText(feature.get('户主') + '\n' + "图斑号" + ":" + feature.get('图斑号') + '\n' + "面积" + ":" + feature.get('面积'));
            return style;
        },
        /*  style: new ol.style.Style({
              stroke: new ol.style.Stroke({
                  color: 'red',

              })
          })*/
    });
  /*  const vector48fh = new ol.layer.Vector({
        source: new ol.source.Vector({
            url: 'http://localhost:8080/geoserver/dy/ows?service=WFS&version=1.0.0&request=GetFeature&typeName=dy%3Apostgisfh&maxFeatures=999999999&outputFormat=application%2Fjson',
            format: new ol.format.GeoJSON(),
            map: new ol.Map({
                view: new ol.View({
                    projection:'EPSG:4545',
                })
            })

        }),
          style: new ol.style.Style({
              stroke: new ol.style.Stroke({
                  color: 'red',

              })
          })
    });
    map.addLayer(vector48fh);*/
    var Source53fhsj = new ol.source.ImageWMS({
        url: 'http://localhost:8080/geoserver/dy/wms?service=WMS&version=1.1.0&request=GetMap&layers=dy%3A53fhsj&bbox=107.501075744629%2C29.6091461181641%2C107.503715515137%2C29.611291885376&width=768&height=624&srs=EPSG%3A4490&styles=&format=application/openlayers',
        params: {layers: 'dy:53fhsj', VERSION: '1.1.0'},
        serverType: 'geoserver'
    });
    var Layers53fhsj = new ol.layer.Image({
        source: Source53fhsj,
    });
    map.addLayer(Layers53fhsj);
    const highlightStyle = new ol.style.Style({
        stroke: new ol.style.Stroke({
            color: '#f00',
            width: 1,
        }),
        fill: new ol.style.Fill({
            color: 'rgba(255,0,0,0.1)',
        }),
        text: new ol.style.Text({
            font: '12px Calibri,sans-serif',
            fill: new ol.style.Fill({
                color: '#000',
            }),
            stroke: new ol.style.Stroke({
                color: '#f00',
                width: 3,
            }),
        }),
    });
    const featureOverlay = new ol.layer.Vector({
        source: new ol.source.Vector,
        map: map,
        style: function (feature) {
            highlightStyle.getText().setText(feature.get('户主') + '\n' + "图斑号" + ":" + feature.get('图斑号') + '\n' + "面积" + ":" + feature.get('面积'));
            return highlightStyle;
        },
    });
    let highlight;

    const displayFeatureInfo = function (pixel) {
        vectorLayer.getFeatures(pixel).then(function (features) {
            const feature = features.length ? features[0] : undefined;
            const area = document.getElementById('area');
            const host = document.getElementById('host');
            const tbh = document.getElementById('tbh');
            const dlh = document.getElementById('dlh');
            const location_fh = document.getElementById('location_fh');
            const zdhgd = document.getElementById('zdhgd');
            const tdzl = document.getElementById('tdzl');
            const X = document.getElementById('X');
            const Y = document.getElementById('Y');
            const Z = document.getElementById('Z');
            const remark = document.getElementById('remark');
            if (features.length) {
                area.innerHTML = feature.get('面积');
                host.innerHTML = feature.get('户主');
                tbh.innerHTML = feature.get('图斑号');
                dlh.innerHTML = feature.get('地类号');
                location_fh.innerHTML = feature.get('位置');
                zdhgd.innerHTML = feature.get('征地含盖项');
                tdzl.innerHTML = feature.get('土地座落');
                X.innerHTML = feature.get('X');
                Y.innerHTML = feature.get('Y');
                Z.innerHTML = feature.get('Z');
                remark.innerHTML = feature.get('备注');
            } else {
                area.innerHTML = '&nbsp;';
                host.innerHTML = '&nbsp;';
                tbh.innerHTML = '&nbsp;';
                dlh.innerHTML = '&nbsp;';
                location_fh.innerHTML = '&nbsp;';
                zdhgd.innerHTML = '&nbsp;';
                tdzl.innerHTML = '&nbsp;';
                X.innerHTML = '&nbsp;';
                Y.innerHTML = '&nbsp;';
                Z.innerHTML = '&nbsp;';
                remark.innerHTML = '&nbsp;';

            }

            if (feature !== highlight && bool_fhtu === true) {
                if (highlight) {
                    featureOverlay.getSource().removeFeature(highlight);
                }
                if (feature) {
                    featureOverlay.getSource().addFeature(feature);
                }
                highlight = feature;

            }
        });
    };
    /* map.on('pointermove', function (evt) {
         if (evt.dragging) {
             return;
         }
         const pixel = map.getEventPixel(evt.originalEvent);
         displayFeatureInfo(pixel);
     });*/
    map.on('click', function (evt) {
        if (evt.dragging) {
            return;
        }
        const pixel = map.getEventPixel(evt.originalEvent);
        displayFeatureInfo(evt.pixel);
        $("#c1_fh").show();
    });
    $('.c1_fh_perproties .closeBtn').click(function () {
        $("#c1_fh").hide()
    })
    let bool_fhtu = false
    var label = document.getElementById('visible6');//数据类型对象
    $("#visible6").click(function () {
        bool_fhtu = !bool_fhtu;
        if (bool_fhtu === true) {
            openLayerMap(label.value);
            console.log(label.value);
        } else {
            onChange();
            featureOverlay.getSource().addFeature(feature);
        }
    });

    function onChange() {
        map.removeLayer(vectorLayer); //移除图层

    }

    function openLayerMap(type) {
        if (type === "fhtu") {
            map.addLayer(vectorLayer);
        }
    }
    document.getElementById('panto').onclick = function () {
        var view = map.getView();
        var pt_53 = ol.proj.fromLonLat([107.501, 29.610], 'EPSG:4326');
        view.setCenter(pt_53);
        view.setZoom(18);
    }
</script>
</body>
</html>