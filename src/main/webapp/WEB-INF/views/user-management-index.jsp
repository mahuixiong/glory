<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
	<head>
		<meta charset="utf-8" />
		<title>用户管理</title>
		<link rel="stylesheet" href="../../static/css/reset.css" />
		<link rel="stylesheet" href="../../static/css/user-management-index.css" />
		<link rel="stylesheet" href="../../static/css/page-con.css" />
	</head>
	<body>
		<!--<div class="cus-header">-->
		<!--	<div class="cus-logo"><a href="javascript:void(0)">LOGO</a></div>
			<div class="cus-manage">
				<a href="javascript:void(0)">
					<img src="../../static/img/cur.png"/>
					<span>用户管理</span>
				</a>
			</div>
			<div class="cus-quit">
				<a href="javascript:void(0)">
					<span>退出</span>
					<img src="../../static/img/sinout.png"/>
				</a>
			</div>
		</div>-->
		<div class="user-content">
			<p class="user-admin"><!-- <span>当前页面 : <span><a class="active">用户管理</a> --></p>
			<div class="user-search">
				<input placeholder="用户名" type="text" id = "user_name" value="" maxlength="10" onkeyup="value=value.replace(/[^\a-\z\A-\Z0-9\u4E00-\u9FA5]/g,'')" onpaste="value=value.replace(/[^\a-\z\A-\Z0-9\u4E00-\u9FA5]/g,'')" oncontextmenu = "value=value.replace(/[^\a-\z\A-\Z0-9\u4E00-\u9FA5]/g,'')">
				<a onclick="searchuser()" class="search_"></a>
				<a class="user-add" href="user-management-add1.html">新增用户</a>
			</div>
			<table class = "user-info">
				<tr class="info-first info-item">
					<td>序号</td>
					<td>登录名</td>
					<td>密码</td>
					<td>用户名</td>
					<td>角色</td>
					<td>创建时间</td>
					<td>创建人</td>
					<td>状态</td>
					<td>操作</td>
				</tr>
				<tr class="info-item">
					<td>1</td>
					<td>zzf</td>
					<td>123456</td>
					<td>admin</td>
					<td>系统管理员</td>
					<td>2017-11-15</td>
					<td>ada</td>
					<td>启用</td>
					<td><a href="user-management-modify.html" class="edit">编辑</a><a href="javascript:if(confirm('确实要删除吗?'))location=''"class="delete">删除</a></td>
				</tr>
				<tr class="info-item">
					<td>2</td>
					<td>zzfff</td>
					<td>123456</td>
					<td>小红</td>
					<td>信息管理员</td>
					<td>2017-11-15</td>
					<td>admin</td>
					<td>启用</td>
					<td><a href="user-management-modify.html" class="edit">编辑</a><a href="javascript:if(confirm('确实要删除吗?'))location=''" class="delete">删除</a></td>
				</tr>
				<tr class="info-item">
					<td>3</td>
					<td>ffgs</td>
					<td>123456</td>
					<td>小刚</td>
					<td>客户管理员</td>
					<td>2017-11-15</td>
					<td>admin</td>
					<td>启用</td>
					<td><a href="user-management-modify.html" class="edit">编辑</a><a href="javascript:if(confirm('确实要删除吗?'))location=''" class="delete">删除</a></td>
				</tr>
				<tr class="info-item">
					<td>4</td>
					<td>zzkffff</td>
					<td>123456</td>
					<td>小名</td>
					<td>信息管理员</td>
					<td>2017-11-15</td>
					<td>admin</td>
					<td>启用</td>
					<td><a href="user-management-modify.html" class="edit">编辑</a><a href="javascript:if(confirm('确实要删除吗?'))location=''" class="delete">删除</a></td>
				</tr>
				<tr class="info-item">
					<td>5</td>
					<td>zzfddff</td>
					<td>123456</td>
					<td>小龙</td>
					<td>信息管理员</td>
					<td>2017-11-15</td>
					<td>admin</td>
					<td>启用</td>
					<td><a href="user-management-modify.html" class="edit">编辑</a><a href="javascript:if(confirm('确实要删除吗?'))location=''" class="delete">删除</a></td>
				</tr>
				<tr class="info-item">
					<td>6</td>
					<td>zddzfff</td>
					<td>123456</td>
					<td>小绿</td>
					<td>信息管理员</td>
					<td>2017-11-15</td>
					<td>admin</td>
					<td>启用</td>
					<td><a href="user-management-modify.html" class="edit">编辑</a><a href="javascript:if(confirm('确实要删除吗?'))location=''" class="delete">删除</a></td>
				</tr>
				<tr class="info-item">
					<td>7</td>
					<td>zzfff</td>
					<td>123456</td>
					<td>小天</td>
					<td>信息管理员</td>
					<td>2017-11-15</td>
					<td>admin</td>
					<td>启用</td>
					<td><a href="user-management-modify.html" class="edit">编辑</a><a href="javascript:if(confirm('确实要删除吗?'))location=''" class="delete">删除</a></td>
				</tr>
				<tr class="info-item">
					<td>8</td>
					<td>zzfff</td>
					<td>123456</td>
					<td>小驴</td>
					<td>信息管理员</td>
					<td>2017-11-15</td>
					<td>admin</td>
					<td>启用</td>
					<td><a href="user-management-modify.html" class="edit">编辑</a><a href="javascript:if(confirm('确实要删除吗?'))location=''" class="delete">删除</a></td>
				</tr>
			</table>
			<div class="pageing-con">
				<ul class="pageing-info">
					<li class="pageing-item head"><a data-id="" href="" title="">首页</a></li>
					<li class="pageing-item prev"><a data-id="" href="" title="">上一页</a></li>
					<li class="pageing-item  disabled active">
						<a data-id="1" href="javascript:void(0)" title="">1</a>
					</li>
					<li class="pageing-item  disabled" >
						<a data-id="2" href="javascript:void(0)" title="">2</a>
					</li>
					<li class="pageing-item  disabled" >
						<a data-id="3" href="javascript:void(0)" title="">3</a>
					</li>
					<li class="pageing-item  disabled" >
						<a data-id="4" href="javascript:void(0)" title="">4</a>
					</li>
					<li class="pageing-item  disabled" >
						<a data-id="5" href="javascript:void(0)" title="">5</a>
					</li>
					<li class="pageing-item  disabled" >
						<a data-id="6" href="javascript:void(0)" title="">6</a>
					</li>
					<li class="pageing-item  disabled" >
						<a data-id="7" href="javascript:void(0)" title="">7</a>
					</li>
					<li class="pageing-item  disabled" >
						<a data-id="8" href="javascript:void(0)" title="">8</a>
					</li>
					<li class="pageing-item next"><a data-id="" href="" title="">下一页</a></li>
					<li class="pageing-item foot"><a data-id="" href="" title="">尾页</a></li>
				</ul>
		    </div>
		</div>
	</body>
</html>
