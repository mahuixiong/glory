<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
	<head>
		<meta charset="UTF-8">
		<title>客户审核</title>
		<link rel="stylesheet" href="../../static/css/reset.css" />
		<link rel="stylesheet" href="../../static/css/customer-management-examine.css" />
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
			<p class="cus-admin"><span>当前页面 : <span><a href="customer-management-index.html">客户管理/</a><a class="active" href="customer-management-examine.html">审核</a></p>
		    <div class="cus-examine-infolist">
		    	<p class="cus-examine-title">审核</p>
		    	<ul class="examine-list">
		    		<li class="list-item">
		    			<label>审核方向</label>
		    			<input type="text" />
		    		</li>
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
		    	<div class="examine-option">
		    		<a class="examine-pass" href="javascript:void(0)">通过</a><a class="examine-reject" href="javascript:void(0)">驳回</a><a class="examine-back" href="javascript:void(0)">返回</a>
		    	</div>
		    </div>
		</div>
	</body>
</html>
