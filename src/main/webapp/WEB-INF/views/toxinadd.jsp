<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">

<html>
	<head>
		<meta charset="UTF-8">
		<title>新增毒素</title>
		<link rel="stylesheet" href="../../app/css/reset.css" />
		<link rel="stylesheet" href="../../app/css/adddlb.css" />
	</head>
	<body>
		<div class="user-content">
			<p class="user-admin"><!-- <span>当前页面 : <span><a>毒素管理/</a><a class="active">新增毒素</a> --></p>
		    <form id="form1" action="addtoxin" method="post">
		    <div class="user-add-infolist">
		    	<p class="user-add-title">新增毒素</p>
		    	<ul class="add-list">
		    		<li class="list-item">
		    			<label>毒素名称</label>
		    			<input type="text" name="toxintype">
		    		</li>
		    		<c:forEach items="${species}" var="specie" >
		    			<li class="list-item">
		    				<input type="text" name="speciesname" readonly="readonly" maxlength="5" value="${specie.cropSpecies}">
		    				<input type="text" name="par" value="0">
		    				<input type="hidden" name="speciesid" value="${specie.id }">
		    			</li> 
		    		</c:forEach>
		    		<li class="list-item">
		    			<label>状态</label>
		    			<input type="radio" name="state" value="1" checked="checked">启用
		    			<input type="radio" name="state" value="0">禁用
		    		</li>
		    		
		    	</ul>
		    	<div class="add-option">
		    		<a class="user-save" onclick="baocun()">保存</a><a class="add-back" onclick="history.go(-1)">返回</a>
		    	</div>
		    </div>
		    </form>
		</div>
	</body>
	<script type="text/javascript" src="../../app/js/jquery-2.1.0.js"></script>
	
	<script type="text/javascript">
	   function baocun(){
	  	$.ajax({
	  		url:"addtoxininfo",
	  		data:$("#form1").serialize(),
	  		success:data
	  	})
	  	function data(data){
	  		if(data.code==200){
	  			alert("保存成功");
	  		}else if(data.code==250){
	  			alert("毒素名称不能为空");
	  		}else{
	  			alert("保存失败");
	  		}
	  			
	  	}
	    
	  } 
	</script>
</html>