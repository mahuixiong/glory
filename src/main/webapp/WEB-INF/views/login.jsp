<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    <%
    String path=request.getContextPath();
    String basePath=request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
    
    
    %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
  <head>
  <base href="<%=basePath%>">  
   <meta http-equiv="Content-Type" charset="UTF-8">
    <title>登录</title>
	<link rel="stylesheet" type="text/css" href="<%=basePath %>app/css/reset.css"/>
	<link rel="stylesheet" href="<%=basePath %>app/css/login.css" />
	<script type="text/javascript" src="<%=basePath %>app/js/jquery1.11.3-jquery.min.js"></script>
	<script type="text/javascript" src="<%=basePath %>app/js/checkLogin.js" ></script>
  </head>
  <body>
  <div class="contaner">
		<div class="login-box">
			<p class="loginbox-title">信息管理系统</p>
			<div class="loginbox-head">
				<p>登录</p>
			</div>
			<form class="login-form" action="rest/user/login" method="get" id="fm1">
				<div class="loginbox-info">
					<ul> 
						<li><input type="text" name="login_name"  class="login-name" placeholder="请输入登录账号/手机号" value="" maxlength="15"/></li>
						<span id="login_name"></span>
						<li><input type="password" name="password"  class="login-pwd" placeholder="请输入密码" value=""  maxlength="15"/></li>
						<span id="password"></span>
						
						<li><input type="button" value="登录" class="login-sin" onclick="window.location='http://localhost:8080/quick4j/rest/page/superadmin'"/></li>
						<li class="login-fpwd"><a class="login-res" href="../../html/forgetpwd.html">忘记密码?</a><a class="login-register" href="../../html/register.html">立即注册</a></li>
						
					</ul>
				</div>
			</form>
		</div>
	</div>
  </body>
<script src="../../assets/plugins/jquery-1.10.2.min.js" type="text/javascript"></script>
<script src="../" type="text/javascript"></script>
<script src="../../assets/plugins/bootstrap/js/bootstrap.min.js" type="text/javascript"></script>
<script src="../../assets/plugins/bootstrap-hover-dropdown/twitter-bootstrap-hover-dropdown.min.js" type="text/javascript"></script>
<script src="../../assets/plugins/jquery-slimscroll/jquery.slimscroll.min.js" type="text/javascript"></script>
<script src="../../assets/plugins/jquery.blockui.min.js" type="text/javascript"></script>
<script src="../../assets/plugins/jquery.cokie.min.js" type="text/javascript"></script>
<script src="../../assets/plugins/uniform/jquery.uniform.min.js" type="text/javascript"></script>
<!-- END CORE PLUGINS -->
<!-- BEGIN PAGE LEVEL PLUGINS -->
<script src="../../assets/plugins/jquery-validation/dist/jquery.validate.min.js" type="text/javascript"></script>
<script src="../../assets/plugins/backstretch/jquery.backstretch.min.js" type="text/javascript"></script>
<script type="text/javascript" src="../../assets/plugins/select2/select2.min.js"></script>
<!-- END PAGE LEVEL PLUGINS -->
<!-- BEGIN PAGE LEVEL SCRIPTS -->
<script src="../../assets/scripts/app.js" type="text/javascript"></script>
<script src="../../assets/scripts/login-soft.js" type="text/javascript"></script>

<script src="../../app/lib/security/sha256.js" type="text/javascript"></script>
<!-- END PAGE LEVEL SCRIPTS -->
  <script>
		jQuery(document).ready(function() {     
		  App.init();
		  Login.init();
		});
	</script>
</html>
