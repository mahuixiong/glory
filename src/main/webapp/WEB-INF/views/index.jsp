<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html lang="en">
<head>
  <meta charset="UTF-8">
  <meta name="viewport" content="width=device-width, initial-scale=1.0">
  <meta http-equiv="X-UA-Compatible" content="ie=edge">
  <title>Document</title>
  <link href="../../app/css/layui.css" rel="stylesheet">
  <link href="../../app/css/index.css" rel="stylesheet">
</head>
<body class="layui-layout-body">
  <div class="layui-layout layui-layout-admin">
    <div class="layui-header">
      <ul class="layui-nav" style="text-align: center;">
        <li class="layui-nav-item" ><a href="javascript:;" style="font-size: 20px;">中国农产品真菌素及产毒真菌污染数据库</a></li>
      </ul>
      <!-- <div class="layui-logo">中国农产品真菌素及产毒真菌污染数据库</div> -->
      <ul class="layui-nav layui-layout-right">
        <li class="layui-nav-item"><a href="javascript:;"></a></li>
        <li class="layui-nav-item"><a href="" class="header_end">退出</a></li>
      </ul>
    </div>
    
    <div class="layui-side">
      <div class="layui-side-scroll">
        <!-- 左侧导航区域（可配合layui已有的垂直导航） -->
        <ul class="layui-nav layui-nav-tree"  lay-filter="test">
            <li class="layui-nav-item">
              <a href="javascript:;">用户管理</a>
            </li>
          <li class="layui-nav-item">
            <a class="" href="javascript:;">审核管理</a>
            <dl class="layui-nav-child">
              <dd><a href="javascript:;">客户审核</a></dd>
              <dd><a href="javascript:;">信息管理员审核</a></dd>
            </dl>
          </li>
          <li class="layui-nav-item">
              <a class="" href="javascript:;">数据录入</a>
              <dl class="layui-nav-child">
                <dd><a href="javascript:;">农产品类别管理</a></dd>
                <dd><a href="javascript:;">毒素管理</a></dd>
                <dd><a href="javascript:;">样品信息录入</a></dd>
              </dl>
            </li>
            <li class="layui-nav-item">
                <a class="" href="javascript:;">数据浏览</a>
                <dl class="layui-nav-child">
                  <dd><a href="javascript:;">数据查看</a></dd>
                  <dd><a href="javascript:;">图表查看</a></dd>
                  <dd><a href="javascript:;">地域分布</a></dd>
                  <dd><a href="javascript:;">浏览记录</a></dd>
                  <dd><a href="javascript:;">下载记录</a></dd>
                  <dd><a href="javascript:;">修改密码</a></dd>
                </dl>
              </li>
        </ul>
      </div>
    </div>
    
    <div class="layui-body">
      <div class="cont_layout">
        <div class="cont_bar">
          <i class="cont_bar_icon"></i><p>个人中心</p>
          <p>欢迎，超级管理员</p>
        </div>
        <!-- 内容主体区域 -->
        <div style="padding: 15px;">
          <iframe src="./personal.html" frameborder="0"></iframe>
        </div>
      </div>
    </div>
  </div>
  <script src="./layui.all.js"></script>
  <script>
    //JavaScript代码区域
    layui.use('element', function(){
      var element = layui.element;
      
    });
    </script>
</body>
</html>