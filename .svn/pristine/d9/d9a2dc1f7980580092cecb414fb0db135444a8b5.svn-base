<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
  <head>
    <base href="<%=basePath%>">
    
    <title>My JSP 'MyJsp.jsp' starting page</title>
    
	<meta http-equiv="pragma" content="no-cache">
	<meta http-equiv="cache-control" content="no-cache">
	<meta http-equiv="expires" content="0">    
	<meta http-equiv="keywords" content="keyword1,keyword2,keyword3">
	<meta http-equiv="description" content="This is my page">
	<!--
	<link rel="stylesheet" type="text/css" href="styles.css">
	-->

  </head>
  
  <body>
    <form  action="rest/user/login" method="get">
		<h3>用户登录</h3>
		<div>
			<button  data-close="alert"></button>
			<span>
				 输入您的用户名和密码
			</span>
		</div>
		<div >
			<!--ie8, ie9 does not support html5 placeholder, so we just show field title for that-->
			<label >用户名</label>
			<div >
				<i  ></i>
				<input name="username" id="username" size="25" value="starzou" type="text" autocomplete="off" placeholder="用户名" />
			</div>
		</div>
		<div >
			<label >密码</label>
			<div  >
				<i ></i>
				<input name="password" id="password" size="25" value="123456" type="password" autocomplete="off" placeholder="密码" />
			</div>
		</div>
		<div  >
			<label >
			<button id="loginBut" type="submit" >
			登录 <i  ></i>
			</button>
		</div>
		
		
	</form>
  </body>
  <script src="assets/plugins/jquery-1.10.2.min.js" type="text/javascript"></script>
 <script src="assets/plugins/jquery-migrate-1.2.1.min.js" type="text/javascript"></script>
<script src="assets/plugins/bootstrap/js/bootstrap.min.js" type="text/javascript"></script>
 <script src="assets/plugins/bootstrap-hover-dropdown/twitter-bootstrap-hover-dropdown.min.js" type="text/javascript"></script>
<script src="assets/plugins/jquery-slimscroll/jquery.slimscroll.min.js" type="text/javascript"></script>
<script src="assets/plugins/jquery.blockui.min.js" type="text/javascript"></script>
<script src="assets/plugins/jquery.cokie.min.js" type="text/javascript"></script>
<script src="assets/plugins/uniform/jquery.uniform.min.js" type="text/javascript"></script>
<!-- END CORE PLUGINS -->
<!-- BEGIN PAGE LEVEL PLUGINS -->
 <script src="assets/plugins/jquery-validation/dist/jquery.validate.min.js" type="text/javascript"></script>
<script src="assets/plugins/backstretch/jquery.backstretch.min.js" type="text/javascript"></script>
<script type="text/javascript" src="assets/plugins/select2/select2.min.js"></script>
<!-- END PAGE LEVEL PLUGINS -->
<!-- BEGIN PAGE LEVEL SCRIPTS -->
<script src="assets/scripts/app.js" type="text/javascript"></script>
<script src="assets/scripts/login-soft.js" type="text/javascript"></script>

<script src="app/lib/security/sha256.js" type="text/javascript"></script>
<!-- END PAGE LEVEL SCRIPTS -->
  <script>
		jQuery(document).ready(function() {     
		  App.init();
		  Login.init();
		});
	</script>
</html>
