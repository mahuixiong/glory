<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
	<head>
		<meta charset="utf-8" />
		<title>用户管理</title>
		<link rel="stylesheet" href="../../static/css/reset.css" />
		<link rel="stylesheet" href="../../static/css/dlb.css" />
		<link rel="stylesheet" href="../../static/css/page-con.css" />
	</head>
	<body>
		<div class="user-content">
			<p class="user-admin"><!-- <span>当前页面 : <span><a class="active">毒素管理</a> --></p>
			<div class="user-search">
				<p><a class="user-add" href="toxinadd.html">新增毒素</a></p>
			</div>
			<table class="user-info">
				<tbody><tr class="info-first info-item">
					<td>序号</td>
					<td>毒素名称</td>
					<td>操作</td>
				</tr>
				
				<tr class="info-item">
					<td>1</td>
					<td>DON</td>
					<td><a href="toxinedit.html" class="edit">编辑</a>
					<a href="javascript:if(confirm('确实要删除吗?'))location=''" class="delete">删除</a></td>
				</tr>
			
				<tr class="info-item">
					<td>2</td>
					<td>伏马菌素</td>
					<td><a href="toxinedit.html" class="edit">编辑</a>
					<a href="javascript:if(confirm('确实要删除吗?'))location=''" class="delete">删除</a></td>
				</tr>
			
				<tr class="info-item">
					<td>3</td>
					<td>玉米赤霉烯酮</td>
					<td><a href="toxinedit.html" class="edit">编辑</a>
					<a href="javascript:if(confirm('确实要删除吗?'))location=''" class="delete">删除</a></td>
				</tr>
			
				<tr class="info-item">
					<td>4</td>
					<td>黄曲霉毒素总量</td>
					<td><a href="straininfoByid?id=4" class="edit">编辑</a>
					<a href="javascript:if(confirm('确实要删除吗?'))location=''" class="delete">删除</a></td>
				</tr>
			
				<tr class="info-item">
					<td>5</td>
					<td>黄曲霉毒素B1</td>
					<td><a href="straininfoByid?id=5" class="edit">编辑</a>
					<a href="javascript:if(confirm('确实要删除吗?'))location=''" class="delete">删除</a></td>
				</tr>
			
				<tr class="info-item">
					<td>6</td>
					<td>黄曲霉毒素B2</td>
					<td><a href="straininfoByid?id=6" class="edit">编辑</a>
					<a href="javascript:if(confirm('确实要删除吗?'))location=''" class="delete">删除</a></td>
				</tr>
			
				<tr class="info-item">
					<td>7</td>
					<td>黄曲霉毒素G1</td>
					<td><a href="straininfoByid?id=7" class="edit">编辑</a>
					<a href="javascript:if(confirm('确实要删除吗?'))location=''"class="delete">删除</a></td>
				</tr>
			
				<tr class="info-item">
					<td>8</td>
					<td>黄曲霉毒素G2</td>
					<td><a href="straininfoByid?id=8" class="edit">编辑</a>
					<a href="javascript:if(confirm('确实要删除吗?'))location=''" class="delete">删除</a></td>
				</tr>
			
				<tr class="info-item">
					<td>9</td>
					<td>黄曲霉毒素M1</td>
					<td><a href="straininfoByid?id=9" class="edit">编辑</a>
					<a href="javascript:if(confirm('确实要删除吗?'))location=''" class="delete">删除</a></td>
				</tr>
			
				<tr class="info-item">
					<td>10</td>
					<td>黄曲霉毒素M2</td>
					<td><a href="straininfoByid?id=10" class="edit">编辑</a>
					<a href="javascript:if(confirm('确实要删除吗?'))location=''" class="delete">删除</a></td>
				</tr>
			
				<tr class="info-item">
					<td>11</td>
					<td>展青霉毒素</td>
					<td><a href="straininfoByid?id=11" class="edit">编辑</a>
					<a href="javascript:if(confirm('确实要删除吗?'))location=''"class="delete">删除</a></td>
				</tr>
			
				<tr class="info-item">
					<td>12</td>
					<td>赭曲霉毒素A</td>
					<td><a href="straininfoByid?id=12" class="edit">编辑</a>
					<a href="javascript:if(confirm('确实要删除吗?'))location=''" class="delete">删除</a></td>
				</tr>
			
			</tbody></table>
		</div>
	</body>
	<script type="text/javascript">
	  function delte(id){
	    if(confirm("你确定要删除吗？")){
	       window.location.href="#;
	    }else{
	       return false;
	    }
	  }
	</script>
</html>
