<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    <%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
	<head>
		<meta charset="UTF-8">
		<title>新增大类别</title>
		<link rel="stylesheet" href="../../app/css/reset.css" />
		<link rel="stylesheet" href="../../app/css/adddlb.css" />
	</head>
	<body>
		<div class="user-content">
			<p class="user-admin"><!-- <span>当前页面 : <span><a>大类别管理/</a><a class="active">新增类别</a> --></p>
		    <div class="user-add-infolist">
		    	<p class="user-add-title">新增类别</p>
		    	<form id="form1" method="post">
		    	<ul class="add-list">
		    		<li class="list-item">
		    			<label for="leibiemingcheng">类别名称</label>
		    			<input type="text" name="breedname" id="breedname" value="">
		    			<input type="hidden"name="cateid" id="cateid" readonly="readonly"value="${cateid}">
		    		</li>
		    		
			    		<c:forEach items="${toxininfo}" var="toxininfo">
						<li class="list-item"><label>毒素名称</label> 
						<input type="text"name="toxintype" id="toxintype" readonly="readonly"value="${toxininfo.toxinType}"> 
						<input type="hidden"name="toxinid" id="toxinid" readonly="readonly"value="${toxininfo.id}"></li>
						<li class="list-item"><label>标准含量</label>
						 <input type="text" name="par" id="par" value="0"></li>
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
		    	</form>
		    </div>
		</div>
	</body>
	<script type="text/javascript" src="../../app/js/jquery1.11.3-jquery.min.js"></script>
	<script type="text/javascript">
	   function baocun(){
	  $.ajax({
		  url:"addpar",
		  data:$('#form1').serialize(),
		  dataType: "JSON",
		  success:data
	  })
	  function data(data){
		  if(data.code==200){
			  alert("保存成功");
		  }else if(data.code==250){
			  alert("类别名称不能为空");
		  }else{
			  alert("类别名存在");
		  }
	  }
	    
	   }
	</script>
</html>
