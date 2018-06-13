<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
	<head>
		<meta charset="UTF-8">
		<title>客户修改</title>
		<link rel="stylesheet" href="../../static/css/reset.css" />
		<link rel="stylesheet" href="../../static/css/customer-management-modify.css" />
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
			<p class="cus-admin"><span>当前页面 : <span><a href="customer-management-index.html">客户管理/</a><a class="active" href="customer-management-modify.html">客户修改</a></p>
		    <div class="cus-modify-infolist">
		    	<p class="cus-modify-title">客户修改</p>
		    	<ul class="modify-list">
		    		<li class="list-item">
		    			<label>真实姓名</label>
		    			<input type="text" />
		    		</li>
		    		<li class="list-item">
		    			<label>身份证号码</label>
		    			<input type="text" />
		    		</li>
		    		<li class="list-item">
		    			<label>邮箱号码</label>
		    			<input type="text" />
		    		</li>
		    		<li class="list-item">
		    			<label>手机号码</label>
		    			<input type="text" />
		    		</li>
		    		<li class="list-item">
		    			<label>客户权限</label>
		    			<select>
		    				<option></option>
		    			</select>
		    		</li>
		    		<li class="list-item">
		    			<label>客户状态</label>
		    			<input type="radio" name="isuse" value="use" checked="checked" />启用
		    			<input type="radio" name="isuse" value="nouse" />禁用
		    		</li>
		    	</ul>
		    	<div class="modify-option">
		    		<a class="cus-modify" href="javascript:void(0)">修改</a><a class="modify-back" href="javascript:void(0)">返回</a>
		    	</div>
		    </div>
		</div>
	</body>
</html>
