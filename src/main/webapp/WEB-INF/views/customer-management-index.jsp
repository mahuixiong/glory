<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
	<head>
		<meta charset="utf-8" />
		<title>客户管理</title>
		<link rel="stylesheet" href="../../app/css/reset.css" />
		<link rel="stylesheet" href="../../app/css/customer-management-index.css" />
		<link rel="stylesheet" href="../../app/css/page-con.css" />
	</head>
	<body>
		<div class="cus-header">
			<div class="cus-logo"><a href="javascript:void(0)">LOGO</a></div>
			<div class="cus-manage">
				<a href="javascript:void(0)">
					<img src="../../static/img/admin.png"/>
					<span>客户管理</span>
				</a>
			</div>
			<div class="cus-quit">
				<a href="javascript:void(0)">
					<span>退出</span>
					<img src="../../static/img/sinout.png"/>
				</a>
			</div>
		</div>
		<div class="cus-content">
			<p class="cus-admin"><span>当前页面 : <span><a class="active" href="customer-management-index.html">客户管理</a></p>
			<div class="cus-search">
				<label>真实姓名</label>
				<input type="text" id = "" />
				<label>审核状态</label>
				<select class="cus-examine">
					<option></option>
				</select>
				<a href="javascript:void(0)" class="search-btn">搜索</a>
			</div>
			<table class = "cus-info">
				<tr class="info-first info-item">
					<td>序号</td>
					<td>客户昵称</td>
					<td>真实姓名</td>
					<td>身份证号</td>
					<td>客户邮箱</td>
					<td>客户手机号码</td>
					<td>申请时间</td>
					<td>申请方向</td>
					<td>审核状态</td>
					<td>客户状态</td>
					<td>操作</td>
				</tr>
				<tr class="info-item">
					<td>1</td>
					<td>dfr</td>
					<td>张三</td>
					<td>140624199901239954</td>
					<td>1765@163.com</td>
					<td>13344556688</td>
					<td>2017-11-15</td>
					<td>谷物</td>
					<td class = "ifexamine">未审核</td>
					<td>启用</td>
					<td class="operation">
						<div class="ifshow"><a href="customer-management-examine.html" class="examine">审核</a></div>
						<div class="ifshow1"><a href="customer-management-modify.html" class="modify">修改</a><a href="javascript:void(0)" class="delete">删除</a></div>
					</td>
				</tr>
				<tr class="info-item">
					<td>2</td>
					<td>cxc</td>
					<td>王晓宇</td>
					<td>140624199901239954</td>
					<td>1765@163.com</td>
					<td>13344556688</td>
					<td>2017-11-15</td>
					<td>谷物</td>
					<td class = "ifexamine">未审核</td>
					<td>启用</td>
					<td class="operation">
						<div class="ifshow"><a href="customer-management-examine.html" class="examine">审核</a></div>
						<div class="ifshow1"><a href="customer-management-modify.html" class="modify">修改</a><a href="javascript:void(0)" class="delete">删除</a></div>
					</td>
				</tr>
				<tr class="info-item">
					<td>3</td>
					<td>rtghy</td>
					<td>张雨绮</td>
					<td>140624199901239954</td>
					<td>1765@163.com</td>
					<td>13344556688</td>
					<td>2017-11-15</td>
					<td>蔬菜</td>
					<td class = "ifexamine">通过</td>
					<td>禁用</td>
					<td class="operation">
						<div class="ifshow"><a href="customer-management-examine.html" class="examine">审核</a></div>
						<div class="ifshow1"><a href="customer-management-modify.html" class="modify">修改</a><a href="javascript:void(0)" class="delete">删除</a></div>
					</td>
				</tr>
				<tr class="info-item">
					<td>4</td>
					<td>amnuy</td>
					<td>小雨</td>
					<td>140624199901239954</td>
					<td>1765@163.com</td>
					<td>13344556688</td>
					<td>2017-11-15</td>
					<td>蔬菜</td>
					<td class = "ifexamine">通过</td>
					<td>禁用</td>
					<td class="operation">
						<div class="ifshow"><a href="customer-management-examine.html" class="examine">审核</a></div>
						<div class="ifshow1"><a href="customer-management-modify.html" class="modify">修改</a><a href="javascript:void(0)" class="delete">删除</a></div>
					</td>
				</tr>
				<tr class="info-item">
					<td>5</td>
					<td>rcmd</td>
					<td>小刚</td>
					<td>140624199901239954</td>
					<td>1765@163.com</td>
					<td>13344556688</td>
					<td>2017-11-15</td>
					<td>蔬菜</td>
					<td class = "ifexamine">未审核</td>
					<td>禁用</td>
					<td class="operation">
						<div class="ifshow"><a href="customer-management-examine.html" class="examine">审核</a></div>
						<div class="ifshow1"><a href="customer-management-modify.html" class="modify">修改</a><a href="javascript:void(0)" class="delete">删除</a></div>
					</td>
				</tr>
				<tr class="info-item">
					<td>6</td>
					<td>xiaohu</td>
					<td>小胡</td>
					<td>140624199901239954</td>
					<td>1765@163.com</td>
					<td>13344556688</td>
					<td>2017-11-15</td>
					<td>谷物</td>
					<td class = "ifexamine">未审核</td>
					<td>启用</td>
					<td class="operation">
						<div class="ifshow"><a href="customer-management-examine.html" class="examine">审核</a></div>
						<div class="ifshow1"><a href="customer-management-modify.html" class="modify">修改</a><a href="javascript:void(0)" class="delete">删除</a></div>
					</td>
				</tr>
				<tr class="info-item">
					<td>7</td>
					<td>xiaohua</td>
					<td>小花</td>
					<td>140624199901239954</td>
					<td>1765@163.com</td>
					<td>13344556688</td>
					<td>2017-11-15</td>
					<td>谷物</td>
					<td class = "ifexamine">未审核</td>
					<td>启用</td>
					<td class="operation">
						<div class="ifshow"><a href="customer-management-examine.html" class="examine">审核</a></div>
						<div class="ifshow1"><a href="customer-management-modify.html" class="modify">修改</a><a href="javascript:void(0)" class="delete">删除</a></div>
					</td>
				</tr>
				<tr class="info-item">
					<td>8</td>
					<td>xiaoming</td>
					<td>小明</td>
					<td>140624199901239954</td>
					<td>1765@163.com</td>
					<td>13344556688</td>
					<td>2017-11-15</td>
					<td>谷物</td>
					<td class = "ifexamine">通过</td>
					<td>启用</td>
					<td class="operation">
						<div class="ifshow"><a href="customer-management-examine.html" class="examine">审核</a></div>
						<div class="ifshow1"><a href="customer-management-modify.html" class="modify">修改</a><a href="javascript:void(0)" class="delete">删除</a></div>
					</td>
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
	<script type="text/javascript" src="../../static/js/jquery.js" ></script>
	<script type="text/javascript" src="../../static/js/customer-management-index.js" ></script>
</html>
