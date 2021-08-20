<!DOCTYPE html>
<html lang="en">
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>资源管理</title>
    <link href="../../source/css/bootstrap.min.css" rel="stylesheet" media="screen">
    <meta name="renderer" content="webkit">
    <meta http-equiv="X-UA-Compatible" content="IE=edge,chrome=1">
    <meta name="viewport" content="width=device-width, initial-scale=1, maximum-scale=1">
    <link rel="stylesheet" href="../../source/css/ol.css" type="text/css">
    <link rel="stylesheet" href="../../source/css/allPage.css">

</head>
<style>
    .navbar{
        margin-bottom: 0;
        padding-bottom: 20px;
        background: linear-gradient(0deg , #1a50c4 , #082460, #1a50c4) !important;
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
    .accordion-group, .accordion-group *{
        margin-bottom: 0;
        border: none;
    }
    .accordion-heading a{
        color: #eee !important;
        text-decoration: none;
        background: #154576;
    }
    .accordion-heading a:hover,.accordion-inner:hover{
        color: #0e90d2 !important;
        cursor: pointer;
    }
    .accordion-inner{
        padding-left: 24px;
        color: #eee !important;
        background: #154576;
    }
</style>
<body>
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

<div class="data-box">
    <div class="data-left-menu">
        <div class="menu-title">资料分类</div>
        <div class="input-append search-box">
            <input class="span2 search-input" id="appendedInputButtons" type="text">
            <i class="icon-search search-btn icon-white"></i>
        </div>
        <div>
            <div class="accordion" id="accordionRight">
                <div class="accordion-group">
                    <div class="accordion-heading">
                        <a class="accordion-toggle" data-toggle="collapse" data-parent="#accordionRight" href="#collapseRightOne">
                            涪陵区
                        </a>
                    </div>
                    <div id="collapseRightOne" class="accordion-body collapse ">
                        <div class="accordion-inner">
                            页岩气作业平台1
                        </div>
                      <!--  <div class="accordion-inner">
                            <div class="accordion-heading">
                                <a class="accordion-toggle" data-toggle="collapse" data-parent="#accordion" href="#collapseOne">
                                    页岩气作业平台2
                                </a>
                            </div>
                            <div id="collapseOne" class="accordion-body collapse in">
                                <div class="accordion-inner">
                                    页岩气作业平台1
                                </div>
                                <div class="accordion-inner">
                                    页岩气作业平台2
                                </div>
                            </div>
                        </div>-->
                        <div class="accordion-inner">
                            页岩气作业平台2
<!--                            <div class="accordion-heading">-->
<!--                                <a class="accordion-toggle" data-toggle="collapse" data-parent="#accordion" href="#collapseOne">-->
<!--                                    涪陵区-->
<!--                                </a>-->
<!--                            </div>-->
<!--                            <div id="collapseOne" class="accordion-body collapse in">-->
<!--                                <div class="accordion-inner">-->
<!--                                    页岩气作业平台1-->
<!--                                </div>-->
<!--                                <div class="accordion-inner">-->
<!--                                    页岩气作业平台2-->
<!--                                </div>-->
<!--                            </div>-->
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
    <div class="data-right-table">
        <p class="bread">
            <span>当前位置资料管理>资料分类</span>
            <button class="btn btn-info icon-white" type="button"><i class="icon-upload icon-white"></i>上传</button>
        </p>
        <table class="table-box">
            <thead class="thead-box">
                <tr>
                    <th><input type="checkbox">
                        <span class="docId">编号</span></th>
                    <th>文件名称</th>
                    <th>大小</th>
                    <th>格式</th>
                    <th>上传人</th>
                    <th>上传时间</th>
                    <th>操作</th>
                </tr>
            </thead>
            <tbody class="tbody-box">
                <tr>
                    <td><input type="checkbox">
                        <span class="docId">1</span>
                    </td>
                    <td>土地产权文件</td>
                    <td>100M</td>
                    <td>word</td>
                    <td>张三</td>
                    <td>2021/05/27 21:18:36</td>
                    <td class="operate">
                        <button class="btn btn-primary" type="button">查看</button>
                        <button class="btn btn-success" type="button">更新</button>
                        <button class="btn btn-info" type="button">导出</button>
                        <button class="btn btn-danger" type="button">删除</button>
                    </td>
                </tr>
                <tr>
                    <td><input type="checkbox">
                        <span class="docId">2</span>
                    </td>
                    <td>土地产权文件</td>
                    <td>100M</td>
                    <td>word</td>
                    <td>张三</td>
                    <td>2021/05/27 21:18:36</td>
                    <td class="operate">
                        <button class="btn btn-primary" type="button">查看</button>
                        <button class="btn btn-success" type="button">更新</button>
                        <button class="btn btn-info" type="button">导出</button>
                        <button class="btn btn-danger" type="button">删除</button>
                    </td>
                </tr>
                <tr>
                    <td><input type="checkbox">
                        <span class="docId">3</span>
                    </td>
                    <td>土地产权文件</td>
                    <td>100M</td>
                    <td>word</td>
                    <td>张三</td>
                    <td>2021/05/27 21:18:36</td>
                    <td class="operate">
                        <button class="btn btn-primary" type="button">查看</button>
                        <button class="btn btn-success" type="button">更新</button>
                        <button class="btn btn-info" type="button">导出</button>
                        <button class="btn btn-danger" type="button">删除</button>
                    </td>
                </tr>
                <tr>
                    <td><input type="checkbox">
                        <span class="docId">4</span>
                    </td>
                    <td>土地产权文件</td>
                    <td>100M</td>
                    <td>word</td>
                    <td>张三</td>
                    <td>2021/05/27 21:18:36</td>
                    <td class="operate">
                        <button class="btn btn-primary" type="button">查看</button>
                        <button class="btn btn-success" type="button">更新</button>
                        <button class="btn btn-info" type="button">导出</button>
                        <button class="btn btn-danger" type="button">删除</button>
                    </td>
                </tr>
            </tbody>
        </table>
    </div>
</div>


<script src="http://code.jquery.com/jquery.js"></script>
<script src="../../source/js/bootstrap.min.js"></script>
<script src="../../source/js/jquery-1.12.4.js"></script>
</body>
</html>