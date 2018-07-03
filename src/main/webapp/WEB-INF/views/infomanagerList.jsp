<%@ page language="java" contentType="text/html; charset=UTF-8"
		 pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<%
	String path=request.getContextPath();
	String basePath=request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
	<meta charset="utf-8" />
	<title>信息管理员管理</title>
	<link rel="stylesheet" href="../../app/css/reset.css" />
	<link rel="stylesheet" href="../../app/css/customer-management-index.css" />
	<link rel="stylesheet" href="../../app/css/page-con.css" />
</head>
<body>

<div class="cus-content">
	<p class="cus-admin">
		<!-- <span>当前页面 : <span>
        <a class="active" href="selectAll">审核管理</a> -->
	</p>
	<div class="cus-search">
		<label>真实姓名</label>
		<input type="text" id="searchName" value="${username}" maxlength="10" />
		<label>客户单位</label>
		<input type="text" id="searchCompany" value="${company}" maxlength="20" />
		<label>审核状态</label>
		<select class="cus-examine" id="searchStatus">
			<option value="" >请选择</option>
			<option value="0" >未审核</option>
			<option value="1" >审核通过</option>
			<option value="2" >驳回</option>
		</select>
		<a href="javascript:void(0)" class="search-btn" onclick="findUser()">搜索</a>
	</div>
	<table class = "cus-info">
		<tr class="info-first info-item">
			<td>序号</td>
			<td>账号</td>
			<td>真实姓名</td>
			<td>身份证号</td>
			<td>客户单位</td>
			<td>客户邮箱</td>
			<td>客户手机号码</td>
			<td>申请时间</td>
			<!-- <td>申请方向</td> -->
			<td>审核状态</td>
			<td>客户状态</td>
			<td>操作</td>
		</tr>
		<c:forEach items="${jsonmap.user.list}" var="u">
			<tr class="info-item">
				<td>${u.id}</td>
				<td>${u.loginName}</td>
				<td>${u.username}</td>
				<td>${u.idcard}</td>
				<td>${u.company}</td>
				<td>${u.email}</td>
				<td>${u.phone}</td>
				<td><fmt:formatDate value="${u.applicationTime}" pattern="yyyy-MM-dd"/> </td>
				<c:if test="${not empty u.checkStatus}">
					<c:if test="${u.checkStatus==0}">
						<td class="ifexamine">未审核</td>
					</c:if>
					<c:if test="${u.checkStatus==1}">
						<td class="ifexamine">通过</td>
					</c:if>
					<c:if test="${u.checkStatus==2}">
						<td class="ifexamine">驳回</td>
					</c:if>
				</c:if>
				<c:if test="${empty u.checkStatus}">
					<td class="ifexamine">未设置</td>
				</c:if>
				<c:if test="${not empty u.state}">
					<c:if test="${u.state==1}">
						<td>启用</td>
					</c:if>
					<c:if test="${u.state==0}">
						<td>禁用</td>
					</c:if>
				</c:if>
				<c:if test="${empty u.state}">
					<td>未设置</td>
				</c:if>
				<td class="operation">
					<div class="ifshow"><a href="showUserById1?id=${u.id}" class="examine">审核</a></div>
				</td>
			</tr>
		</c:forEach>
	</table>
	<%--分页--%>
	<div class="pageing-con">
		<ul class="pageing-info">
			<li class="pageing-item head"><a href="selectAllUser1?pageNum=1&username=${username}&company=${company}&checkStatus=${checkStatus}" title="">首页</a></li>
			<li class="pageing-item prev">
				<c:if test="${jsonmap.user.hasPreviousPage}">
					<a href="selectAllUser1?pageNum=${jsonmap.user.pageNum-1}&username=${username}&company=${company}&checkStatus=${checkStatus}" title="">上一页</a>
				</c:if>
				<c:if test="${jsonmap.user.hasPreviousPage==false}">
					<a href="javascript:void(0)" title="">上一页</a>
				</c:if>
			</li>
			<c:forEach items="${jsonmap.user.navigatepageNums}" var="page_num">
				<c:if test="${page_num ==jsonmap.user.pageNum}">
					<li class="pageing-item  disabled active">
						<a href="javascript:void(0)" title="">${page_num}</a>
					</li>
				</c:if>
				<c:if test="${page_num !=jsonmap.user.pageNum}">
					<li class="pageing-item  disabled active">
						<a href="selectAllUser1?pageNum=${page_num}&username=${username}&company=${company}&checkStatus=${checkStatus}" title="">${page_num}</a>
					</li>
				</c:if>
			</c:forEach>
			<li class="pageing-item next">
				<c:if test="${jsonmap.user.hasNextPage}">
					<a href="selectAllUser1?pageNum=${jsonmap.user.pageNum+1}&username=${username}&company=${company}&checkStatus=${checkStatus}" title="">下一页</a>
				</c:if>
				<c:if test="${jsonmap.user.hasNextPage==false}">
					<a href="javascript:void(0)" title="">下一页</a>
				</c:if>
			</li>
			<li class="pageing-item foot"><a href="selectAllUser1?pageNum=${jsonmap.user.pages}&username=${username}&company=${company}&checkStatus=${checkStatus}" title="">尾页</a></li>
		</ul>
	</div>
	<div class="page">
	</div>
</div>
</body>
<script type="text/javascript" src="../../app/js/jquery.js" ></script>
<script type="text/javascript" src="../../app/js/customer-management-index.js" ></script>

<script>
    if(${not empty checkStatus})
    {
        if(${checkStatus==0})
        {
            $('#searchStatus option:eq(1)').prop('selected',true);
        }
        if(${checkStatus==1})
        {
            $('#searchStatus option:eq(2)').prop('selected',true);
        }
        if(${checkStatus==2})
        {
            $('#searchStatus option:eq(3)').prop('selected',true);
        }
    }
    function findUser() {
        var username=$("#searchName").val()
        var company=$("#searchCompany").val()
        var checkStatus=$("#searchStatus option:selected").val()
        <%--$.ajax({--%>
        <%--url:"<%=basePath%>rest/user/selectAllUser",--%>
        <%--type:"post",--%>
        <%--data:{"username":username,"company":company,"checkStatus":checkStatus},--%>
        <%--success:function(res)--%>
        <%--{--%>
        location.href="<%=basePath%>rest/user/selectAllUser1?username="+username+"&company="+company+"&checkStatus="+checkStatus
//				}
//			})
    }

</script>
</html>
