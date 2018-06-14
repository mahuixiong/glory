<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
	<head>
		<meta charset="UTF-8">
		<title>修改用户</title>
		<link rel="stylesheet" href="../../app/css/reset.css" />
		<link rel="stylesheet" href="../../app/css/user-management-modify.css" />
	</head>
	<body>
	
		<div class="user-content">
		    <div class="user-modify-infolist">
		    	<p class="user-modify-title">修改用户</p>
		    	<ul class="modify-list">
		    		<li class="list-item">
		    			<label>登录名</label>
		    			<input type="text" />
		    		</li> 
		    		<li class="list-item">
		    			<label>密码</label>
		    			<input type="text" />
		    		</li>
		    		<li class="list-item">
		    			<label>用户名</label>
		    			<input type="text" />
		    		</li>
		    		<li class="list-item">
		    			<label>角色</label>
		    			<select>
		    				<option>系统管理员</option>
		    			</select>
		    		</li>
		    		<li class="list-item">
		    			<label>状态</label>
		    			<input type="radio" name="isuse" value="use" checked="checked" />启用
		    			<input type="radio" name="isuse" value="nouse" />禁用
		    		</li>
		    	</ul>
		    	<div class="modify-option">
		    		<a class="user-modify" href="javascript:void(0)">修改</a><a class="modify-back" onclick="history.go(-1)">返回</a>
		    	</div>
		    </div>
		</div>
	</body>
</html>
