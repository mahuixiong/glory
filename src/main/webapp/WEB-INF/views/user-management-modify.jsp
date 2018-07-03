<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%
    String path=request.getContextPath();
    String basePath=request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
	<head>
		<meta charset="UTF-8">
		<title>修改用户</title>
		<link rel="stylesheet" href="../../app/css/reset.css" />
		<link rel="stylesheet" href="../../app/css/user-management-modify.css" />
        <script type="text/javascript" src="<%=basePath %>app/js/jquery1.11.3-jquery.min.js"></script>
	</head>
	<body>
	
		<div class="user-content">
		    <div class="user-modify-infolist">
		    	<p class="user-modify-title">修改用户</p>
				<form action="/rest/user/updateUser" method="post" id="form1">
		    	<ul class="modify-list">
                    <input type="hidden" name="id" value="${user.id}"/>
		    		<li class="list-item">
		    			<label>登录名</label>
		    			<input type="text" name="loginName" value="${user.loginName}"/>
		    		</li> 
		    		<li class="list-item">
		    			<label>密码</label>
		    			<input type="text" name="password" value="${user.password}"/>
		    		</li>
		    		<li class="list-item">
		    			<label>用户名</label>
		    			<input type="text" name="username" value="${user.username}"/>
		    		</li>
		    		<li class="list-item">
		    			<label>角色</label>
						<select name="role" id="role">
							<option value="0">请选择</option>
							<option value="1">系统管理员</option>
							<option value="2">信息管理员</option>
							<option value="3">客户管理员</option>
                            <option value="4">信息权限管理员</option>
                            <option value="5">客户</option>
                            <option value="6">超级用户</option>
							<!--  <option value="4">信息权限管理员</option>-->
						</select>
		    		</li>
		    		<li class="list-item">
		    			<label>状态</label>
                        <%--<c:if test="${user.state==1}">--%>
		    			<%--<input type="radio" name="state" value="use" checked="checked" />启用--%>
                        <%--</c:if>--%>
                        <%--<c:if test="${user.state!=1}">--%>
                            <%--<input type="radio" name="state" value="use"/>启用--%>
                        <%--</c:if>--%>
                        <%--<c:if test="${user.state==0}">--%>
                            <%--<input type="radio" name="state" value="nouse"checked="checked" />禁用--%>
                        <%--</c:if>--%>
                        <%--<c:if test="${user.state!=0}">--%>
                            <%--<input type="radio" name="state" value="nouse" />禁用--%>
                        <%--</c:if>--%>
                        <input type="radio" name="state" value="1"/>启用
                        <input type="radio" name="state" value="0"/>禁用
		    		</li>
		    	</ul>
					<div class="modify-option">
						<a class="user-modify" onclick="sub()">修改</a><a class="modify-back" onclick="history.go(-1)">返回</a>
					</div>
				</form>

		    </div>
		</div>
	</body>

	<script>
        window.onload=start()
        function start()
        {
            if(${user.state==1})
            {
                $("input[name='state']").eq(0).attr("checked","checked");
//                $("#rdo1").prop("checked",true);
            }
            if(${user.state==0})
            {
                $("input[name='state']").eq(1).attr("checked",true);
            }
            if(${user.role==1}){
                $('#role option:eq(1)').prop('selected',true);
            }
            if(${user.role==2}){
                $('#role option:eq(2)').prop('selected',true);
            }
            if(${user.role==3}){
                $('#role option:eq(3)').prop('selected',true);
            }
            if(${user.role==4}){
                $('#role option:eq(4)').prop('selected',true);
            }
            if(${user.role==5}){
                $('#role option:eq(5)').prop('selected',true);
            }
            if(${user.role==6})
            {
                $('#role option:eq(6)').prop('selected',true);
            }
            if(${user.role!=1&&user.role!=2&&user.role!=3&&user.role!=4&&user.role!=5&&user.role!=6})
            {
                $('#role option:eq(0)').prop('selected',true);
            }

        }

        function sub()
        {
            $("form").submit()
        }

	</script>
</html>
