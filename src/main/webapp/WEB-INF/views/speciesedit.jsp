<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">

<html>
<head>
<meta charset="UTF-8">
<title>修改用户</title>
<link rel="stylesheet" href="../../app/css/reset.css" />
<link rel="stylesheet" href="../../app/css/editdlb.css" />
</head>
<body>
	<div class="user-content">
		<p class="user-admin">
			<!-- <span>当前页面 : <span><a>大类别管理/</a><a class="active">修改类别</a> -->
		</p>
		<div class="user-modify-infolist">
			<p class="user-modify-title">修改类别</p>
			<form id="form1" method="post">
				<ul class="modify-list">
					<li class="list-item"><label>类别名称</label> <input type="text"
						name="parname" id="parname" value="${par[0].breedName}"> <%--  --%>
						<input type="hidden" name="breedid" id="breedid"
						readonly="readonly" value="${par[0].breedId}"></li>

					<c:forEach items="${par}" var="pars">
						<li class="list-item"><label>毒素名称</label> <input type="text"
							name="speciesname" id="speciesname" readonly="readonly"
							value="${pars.toxinName}"> <input type="hidden"
							name="parid" id="parid" readonly="readonly"
							value="${pars.toxinId}"></li>
						<li class="list-item"><label>标准含量</label> <input type="text"
							name="par" id="par" value="${pars.par}"></li>
					</c:forEach>



					<li class="list-item"><label>状态</label> <input type="radio"
						name="state" value="1" checked="checked">启用 <input
						type="radio" name="state" value="0">禁用</li>
				</ul>
				<div class="modify-option moption">
					<a onclick="xiugai()" class="user-modify">修改</a><a
						class="modify-back" onclick="history.go(-1)">返回</a>
				</div>
			</form>
		</div>
	</div>
</body>
<script type="text/javascript"
	src="../../app/js/jquery1.11.3-jquery.min.js"></script>
<script type="text/javascript">
	function xiugai() {
		$.ajax({
			url : "paredit",
			data : $('#form1').serialize(),
			success : data
		})
		function data(data) {
			if (data.code == 200) {
				alert("修改成功");
			}
		}

	}
</script>
</html>
