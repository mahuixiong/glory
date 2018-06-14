<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
	<meta charset="UTF-8">
	<title>Document</title>
	<link rel="stylesheet" type="text/css" href="../../app/css/reset.css"/>
	<link rel="stylesheet" href="../../app/css/a_pm.css" />
	<link rel="stylesheet" type="text/css" href="../../app/css/page.css"/>
</head>
<script type="text/javascript" src="../../app/js/jquery.js" ></script>
<script type="text/javascript" src="../../app/js/browsing.js" ></script>
<body>
	<header class="header">
		<div class="header_box box">
			<div class="logo_box">
				LOGO
			</div>
			<div class="logo_right_box">
				<ul class="logo_right_left">
					<li><a href="#"><img src="../img/qxgl.png"/><span class="logo_bt">权限管理</span></a></li>
					
				</ul>
				<ul class="logo_2right">
					<li><a href="login.html"><span class="logo_bt">退出</span><img src="../img/sinout.png"/></a></li>
				</ul>
			</div>
			
		
        
	</header>
	<!--
     		内容顶部路由页显示
        -->
    <p class="top_url_box box">
    	<span>当前页面 ：个人中心/</span><a>权限修改</a>
    </p>
    <article class="arcbox box">
    	<ul>
    		<li class="upBt">权限修改</li>
    		<li>
    			<span>农产品类别</span>
    			<input  class="ncpclass" value="小麦" type="text"/>
    		</li>
    		<li>
    			<span>查看权限</span>
    			<select class="lookqx">
    				<option selected value="请选择">请选择</option>
			        <option value="谷物类可查看">谷物类可查看</option>
			        <option value="蔬菜累可查看">蔬菜累可查看</option>
			        <option value="水果类可查看">水果类可查看</option>

    				
    			</select>
    		</li>
    		<li>
    			<span>下载权限</span>
    			<select class="downqx">
    				<option selected value="请选择">请选择</option>
			        <option value="谷物类可查看">谷物类可查看</option>
			        <option value="蔬菜累可查看">蔬菜累可查看</option>
			        <option value="水果类可查看">水果类可查看</option>
    			</select>
    		</li>
    		<li>
    			<input class="submit" type="submit" value="保存"/>
    			<a class="submit" href="access_iam.html">返回</a>
    		</li>
    	</ul>
    </article>
    
</body>
</html>