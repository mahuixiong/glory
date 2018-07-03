<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<html>
	<head>
		<meta charset="utf-8" />
		<title>用户管理</title>
		<link rel="stylesheet" href="../../app/css/reset.css" />
		<link rel="stylesheet" href="../../app/css/user-management-index.css" />
		<link rel="stylesheet" href="../../app/css/page-con.css" />
	</head>
	<body>
		<!--<div class="cus-header">-->
		<!--	<div class="cus-logo"><a href="javascript:void(0)">LOGO</a></div>
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
		</div>-->
		<div class="user-content">
			<p class="user-admin"><!-- <span>当前页面 : <span><a class="active">用户管理</a> --></p>
			<div class="user-search">
				<input placeholder="用户名" type="text" id = "user_name" value="${username}" maxlength="10" onkeyup="value=value.replace(/[^\a-\z\A-\Z0-9\u4E00-\u9FA5]/g,'')" onpaste="value=value.replace(/[^\a-\z\A-\Z0-9\u4E00-\u9FA5]/g,'')" oncontextmenu = "value=value.replace(/[^\a-\z\A-\Z0-9\u4E00-\u9FA5]/g,'')">
				<a onclick="searchuser()" class="search_"></a>
				<a class="user-add" href="/rest/page/usermanagementadd1">新增用户</a>
			</div>
			<table class = "user-info">
				<tr class="info-first info-item">
					<td>序号</td>
					<td>登录名</td>
					<td>密码</td>
					<td>用户名</td>
					<td>角色</td>
					<td>创建时间</td>
					<td>创建人</td>
					<td>状态</td>
					<td>操作</td>
				</tr>
				<c:forEach items="${userlist.page.list}" var="list">	<%--<c:forEach items="${userlist.list}" var="list">--%>
					<tr class="info-item">
						<td>${list.id}</td>
						<td>${list.loginName}</td>
						<td>${list.password}</td>
						<td>${list.username}</td>
						<td>
						<c:forEach items="${userlist.role}" var="role">
							<c:if test="${list.role==role.rid}">
								${role.chrole}
							</c:if>
						</c:forEach>
							<%--<c:if test="${list.role==1}">系统管理员</c:if>--%>
							<%--<c:if test="${list.role==2}">信息管理员</c:if>--%>
							<%--<c:if test="${list.role==3}">客户管理员</c:if>--%>
							<%--<c:if test="${list.role==4}">信息权限管理员</c:if>--%>
							<%--<c:if test="${list.role==5}">客户</c:if>--%>
							<%--<c:if test="${list.role==6}">超级用户</c:if>--%>
							<%--<c:if test="${empty list.role}">客户</c:if>--%>
						</td>
						<td><fmt:formatDate value="${list.createTime}" pattern="yyyy-MM-dd"/> </td>
						<td>${list.createpeople}</td>
						<td>
							<c:if test="${list.state==1}">启用</c:if>
							<c:if test="${list.state==0}">禁用</c:if>
							<c:if test="${list.state!=1&&list.state!=0}">未设置</c:if>
						</td>
						<%--/rest/page/usermanagementmodify--%>
						<td><a href="showUserById?id=${list.id}" class="edit">编辑</a><a href="javascript:if(confirm('确实要删除吗?'))location='deleteById?id=${list.id}'"class="delete">删除</a></td>
					</tr>
				</c:forEach>
			</table>
			<div class="pageing-con">
				<ul class="pageing-info">
					<li class="pageing-item head"><a data-id="" href="showAllData?pageNum=1&username=${username}" title="">首页</a></li>
					<li class="pageing-item prev">
						<c:if test="${userlist.page.hasPreviousPage}">
						<a data-id="" href="showAllData?pageNum=${userlist.page.pageNum-1}&username=${username}" title="">上一页</a>
						</c:if>
						<c:if test="${userlist.page.hasPreviousPage==false}">
							<a data-id="" href="javascript:void(0)" title="">上一页</a>
						</c:if>
					</li>
					<c:forEach items="${userlist.page.navigatepageNums}" var="page_num">
						<c:if test="${page_num ==userlist.page.pageNum}">
							<li class="pageing-item  disabled active">
								<a data-id="1" href="javascript:void(0)" title="">${page_num}</a>
							</li>
						</c:if>
						<c:if test="${page_num !=userlist.page.pageNum}">
							<li class="pageing-item  disabled active">
								<a data-id="1" href="showAllData?pageNum=${page_num}&username=${username}" title="">${page_num}</a>
							</li>
						</c:if>
					</c:forEach>
					<li class="pageing-item next">
						<c:if test="${userlist.page.hasNextPage}">
						<a data-id="" href="showAllData?pageNum=${userlist.page.pageNum+1}&username=${username}" title="">下一页</a>
						</c:if>
						<c:if test="${userlist.page.hasNextPage==false}">
							<a data-id="" href="javascript:void(0)" title="">下一页</a>
						</c:if>
					</li>
					<li class="pageing-item foot"><a data-id="" href="showAllData?pageNum=${userlist.page.pages}&username=${username}" title="">尾页</a></li>
				</ul>
		    </div>
		</div>
	</body>
	<script src="../../app/js/jquery-1.11.0.min.js"></script>
	<script src="../../app/js/layui.all.js"></script>
<script>
	<%--if(${empty userlist.page.list})--%>
	<%--{--%>
        <%--var username=$("#user_name").val()--%>
        <%--$.ajax({--%>
            <%--url:"http://localhost:8080/rest/user/showAllData?username="+username,--%>
            <%--type:"get",--%>
            <%--success:function () {--%>
                <%--location.href="http://localhost:8080/rest/user/showAllData?username="+username;--%>
            <%--}--%>
        <%--})--%>
	<%--}--%>
		function searchuser()
		{
		    var username=$("#user_name").val()
			$.ajax({
				url:"http://localhost:8080/rest/user/showAllData?username="+username,
				type:"get",
				success:function () {
					location.href="http://localhost:8080/rest/user/showAllData?username="+username;
                }
			})
		}
	<%--window.onload=start()--%>
	<%--function start(){--%>
        <%--if(${empty userlist.page.list})--%>
            <%--location.href="http://localhost:8080/rest/user/showAllData";--%>
	<%--}--%>
</script>
</html>
