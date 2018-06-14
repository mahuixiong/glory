<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">

<html>
<head>
<meta charset="UTF-8">
<title>新增用户</title>
<link rel="stylesheet"
	href="../../app/css/reset.css" />
<link rel="stylesheet"
	href="../../app/css/user-management-add.css" />
<link rel="stylesheet" type="text/css"
	href="../../app/css/calendar.css" />

<script type="text/javascript"
	src="../../app/js/jquery1.11.3-jquery.min.js"></script>
<script src="../../app/js/calendar.js"></script>
<script type="text/javascript"
	src="../../app/js/checkUserAddForm.js"
	charset="utf-8"></script>
</head>
<body>
	
	<div class="user-content">
		<p class="user-admin">
		
		</p>
		<form action="../../rest/insertUser" method="get" id="form1">
			
			<div class="user-add-infolist">
				<p class="user-add-title">新增用户</p>
				<ul class="add-list">
					<li class="list-item"><label>登录名</label> <input type="text"
						placeholder="只能输入字母和数字，以字母开头" name="login_name"
						maxlength="15" /> <span id="login_name"></span></li>
					<li class="list-item"><label>密码</label> <input type="text"
						name="password" id="p1" placeholder="只能输入字母和数字"
						 /> <span id="password"></span></li>
					<li class="list-item"><label>确认密码</label> <input type="text"
						name="password2" id="p2" 
						placeholder="只能输入字母和数字"
						/> <span id="password2"></span></li>
					<li class="list-item"><label>用户名</label> <input type="text"
						name="username" placeholder="只能输入字母和中文" />
						<span id="username"></span></li>

					<li class="list-item"><label>状态</label> <input type="radio"
						name="state" value="1" checked="checked" />启用 <input type="radio"
						name="state" value="0" />禁用 <span id="state"></span></li>
					<li class="list-item"><label>角色</label> <select name="role"
						id="s1">
							<option value="0">请选择</option>
							<option value="1">系统管理员</option>
							<option value="2">信息管理员</option>
							<option value="3">客户管理员</option>
							<!--  <option value="4">信息权限管理员</option>-->
					</select> <span id="role"></span>
						<div class="xxgl">
							<div>
								<div class="title">种类：</div>
								<div class="zl">
									<ul>
										<li>11111</li>
										<li>11111</li>
										<li>11111</li><li>11111</li>
									</ul>
								</div>
							</div>
							<span id="category"></span>
							<div style="clear:both">
								<div class="address">地点：</div>
								<div class="address-con">
									<ul>
										<li>222222</li>
										<li>11111</li>
										<li>11111</li>
									</ul>
								</div>
							</div>
							<span id="area"></span>
							<div class='time'>
								<div class="begin">
									开始时间： <input type="" name="starttime" id="dt" value=""
										readonly="readonly" placeholder="选择日期" />
									<div id="dd"></div>
								</div>
								<div class="end">
									结束时间： <input type="" name="endtime" id="dt-b" value=""
										readonly="readonly" placeholder="选择日期" />
									<div id="dd-b"></div>
								</div>
							</div>
						</div></li>
				</ul>
				<div class="add-option">
					<a class="user-save" onclick="sub()">保存</a><a class="add-back"
						onclick="history.go(-1)">返回</a>
				</div>
			</div>
		</form>
	</div>
	<div style="height: 250px;"></div>
</body>
<script>
	
</script>
</html>
