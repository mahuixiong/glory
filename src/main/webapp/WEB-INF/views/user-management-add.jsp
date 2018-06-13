<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
	<head>
		<meta charset="UTF-8">
		<title>新增用户</title>
		<link rel="stylesheet" href="../../static/css/reset.css" />
		<link rel="stylesheet" href="../../static/css/user-management-add.css" />
	</head>
	<body>
		<div class="cus-header">
			<div class="cus-logo"><a href="javascript:void(0)">LOGO</a></div>
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
		</div>
		<div class="user-content">
			<p class="user-admin"><span>当前页面 : <span><a href="user-management-index.html">用户管理/</a><a class="active" href="user-management-add.html">新增用户</a></p>
		    <div class="user-add-infolist">
		    	<p class="user-add-title">新增用户</p>
		    	<ul class="add-list">
		    		<li class="list-item">
		    			<label>登录名</label>
		    			<input type="text" />
		    		</li>
		    		<li class="list-item">
		    			<label>密码</label>
		    			<input type="text" />
		    		</li>
		    		<li class="list-item">
		    			<label>确认密码</label>
		    			<input type="text" />
		    		</li>
		    		<li class="list-item">
		    			<label>用户名</label>
		    			<input type="text" />
		    		</li>
		    		<li class="list-item">
		    			<label>角色</label>
		    			<select>
		    				<option></option>
		    			</select>
		    		</li>
		    		<li class="list-item">
		    			<label>状态</label>
		    			<input type="radio" name="isuse" value="use" checked="checked" />启用
		    			<input type="radio" name="isuse" value="nouse" />禁用
		    		</li>
		    	</ul>
		    	<div class="add-option">
		    		<a class="user-save" href="javascript:void(0)">保存</a><a class="add-back" href="javascript:void(0)">返回</a>
		    	</div>
		    </div>
		</div>
	</body>
</html>
