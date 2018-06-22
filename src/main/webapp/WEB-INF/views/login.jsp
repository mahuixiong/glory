<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    <%
    String path=request.getContextPath();
    String basePath=request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
    
    
    %>
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
			<%--用的是SecurityRealm的验证登录 用的是shiro默认的加密方法 class="login-form"--%>
			<%--<form class="login-form" action="rest/user/login" method="get" id="fm1">--%>
			<%--用的是MuchRealm的验证登录 自定义的登录方式  优点：不同用户的密码即使一样，存到数据库的也是不一致的--%>
			<form action="rest/user/login" method="get" id="fm1">
				<div class="loginbox-info">
					<ul> 
						<li><input type="text" name="loginName"  class="login-name" placeholder="请输入登录账号/手机号" value="admin123" maxlength="15"/></li>
						<span id="login_name"></span>
						<li><input type="password" name="password"  class="login-pwd" placeholder="请输入密码" value="123456"  maxlength="15"/></li>
						<span id="password"></span>
						<%--<li><input type="checkbox" value="1" name="remeber">记住我</li>--%>
						<li><input type="submit" value="登录" class="login-sin"/></li>
						<li class="login-fpwd"><a class="login-res" href="<%=basePath %>rest/page/forgetpwd">忘记密码?</a><a class="login-register" href="<%=basePath %>rest/page/register">立即注册</a></li>
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
