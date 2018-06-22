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
    <title>注册用户</title>
    <link rel="stylesheet" type="text/css" href="<%=basePath %>app/css/reset.css"/>
    <link rel="stylesheet" href="<%=basePath %>app/css/login.css" />
    <script type="text/javascript" src="<%=basePath %>app/js/jquery1.11.3-jquery.min.js"></script>
    <script type="text/javascript" src="<%=basePath %>app/js/checkregister.js" ></script>
</head>
<body>
<div class="contaner">
    <div class="login-box1">
        <div class="loginbox-head">
            <h3>注  册</h3>
        </div>
        <p>
            <font color="white">请输入您的个人信息:</font>
        </p>
        <%--用的是SecurityRealm的验证登录 用的是shiro默认的加密方法 class="login-form"--%>
        <%--<form  class="login-form"  action="rest/user/register" method="post">--%>
        <%--用的是MuchRealm的验证登录 自定义的登录方式  优点：不同用户的密码即使一样，存到数据库的也是不一致的--%>
        <form action="rest/user/register" method="post">
            <div class="loginbox-info1">
            <table>
                <tr>
                    <td class="td1">账号:</td>
                    <td class="td2"><input type="text" name="loginName" class="td2" maxlength="16" onchange="checkloginName()" placeholder="3-16位的用户名账号"/></td>
                    <td class="td3"><span id="sploginName"></span></td>
                </tr>
                <tr>
                    <td class="td1">用户名:</td>
                    <td class="td2"><input type="text" name="username" class="td2" maxlength="16" onchange="checkusername()" placeholder="3-16位的用户名"/></td>
                    <td class="td3"><span id="spusername"></span></td>
                </tr>
                <tr>
                    <td class="td1">密码:</td>
                    <td class="td2"><input type="password" name="password" class="td2" maxlength="15" onchange="checkpassword()" placeholder="输入密码"/></td>
                    <td class="td3"><span id="sppassword"></span></td>
                </tr>
                <tr>
                    <td class="td1">确认密码:</td>
                    <td class="td2"><input type="password" name="repassword" class="td2" maxlength="15" onchange="checkrepassword()" placeholder="确认密码"/></td>
                    <td class="td3"><span id="sprepassword"></span></td>
                </tr>
                <tr>
                    <td class="td1">邮箱:</td>
                    <td class="td2"><input type="text" name="email" class="td2" maxlength="30" onchange="checkemail()" placeholder="邮箱号" value="1123456@qq.com"/></td>
                    <td class="td3"><span id="spemail"></span></td>
                </tr>
                <tr>
                    <td class="td1">手机号码:</td>
                    <td class="td2"><input type="text" name="phone" class="td2" maxlength="11" onchange="checkphone()" placeholder="输入手机号" value="12345678912" /></td>
                    <td class="td3"><span id="spphone"></span></td>
                </tr>
                <tr>
                    <td class="td1">身份证号:</td>
                    <td class="td2"><input type="text" name="idcard" class="td2" maxlength="18" onchange="checkidcard()" placeholder="身份证号" value="222215111648529587" /></td>
                    <td class="td3"><span id="spidcard"></span></td>
                </tr>
                <tr>
                    <td class="td1">注册方向:</td>
                    <td><input type="radio" name="state" value="0" checked="checked"/>数据录入 </td>
                    <td><input type="radio" name="state" value="1" />数据浏览 </td>
                </tr>
                <tr>
                    <td colspan="3" align="center"><input type="button" value="注册" onclick="sub()" class="login-sin"></td>
                </tr>
            </table>
            </div>
            <%--<ul>--%>
                <%--<li class="register-lin">--%>
                    <%--<lable>账号:</lable>--%>
                    <%--<input type="text" name="loginName" maxlength="15" onchange="checkloginName()" /><span id="sploginName"></span>--%>
                <%--</li>--%>
                <%--<li class="register-lin">--%>
                    <%--<lable>用户名:</lable>--%>
                    <%--<input type="text" name="username" maxlength="10" onchange="checkusername()" /><span id="spusername"></span>--%>
                <%--</li>--%>
                <%--<li class="register-lin">--%>
                    <%--<lable>密码:</lable>--%>
                    <%--<input type="password" name="password" maxlength="15" onchange="checkpassword()"/><span id="sppassword"></span>--%>
                <%--</li>--%>
                <%--<li class="register-lin">--%>
                    <%--<lable>确认密码:</lable>--%>
                    <%--<input type="password" name="repassword" maxlength="15" onchange="checkrepassword()"/><span id="sprepassword"></span>--%>
                <%--</li>--%>
                <%--<li class="register-lin">--%>
                    <%--<lable>邮箱:</lable>--%>
                    <%--<input type="text" name="email" maxlength="30" onchange="checkemail()"/><span id="spemail"></span>--%>
                <%--</li>--%>
                <%--<li class="register-lin">--%>
                    <%--<lable>手机号码:</lable>--%>
                    <%--<input type="text" name="phone" maxlength="11" onchange="checkphone()"/><span id="spphone"></span>--%>
                <%--</li>--%>
                <%--<li>--%>
                    <%--<input type="button" value="注册" onclick="sub()">--%>
                <%--</li>--%>
            <%--</ul>--%>
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
