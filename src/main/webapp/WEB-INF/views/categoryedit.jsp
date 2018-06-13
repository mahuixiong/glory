<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
		<meta charset="UTF-8">
		<title>修改用户</title>
		<link rel="stylesheet" href="../../static/css/reset.css" />
		<link rel="stylesheet" href="../../static/css/editdlb.css" />
	</head>
	<body data-genuitec-lp-enabled="false" data-genuitec-file-id="wc1-15" data-genuitec-path="/glory/src/main/webapp/WEB-INF/views/categoryedit.jsp" style="height: 310px; width: 1126px;">
		<div class="user-content" data-genuitec-lp-enabled="false" data-genuitec-file-id="wc1-15" data-genuitec-path="/glory/src/main/webapp/WEB-INF/views/categoryedit.jsp">
			<p class="user-admin"><!-- <span>当前页面 : <span><a>大类别管理/</a><a class="active">修改大类别</a> --></p>
		    <div class="user-modify-infolist">
		    	<p class="user-modify-title">修改大类别</p>
		    	<form action="categoryedit" method="post">
		    	<ul class="modify-list">
		    	<input type="hidden" name="id" value="1">
		    		<li class="list-item">
		    			<label>大类别名称</label>
		    			<input type="text" name="crop_category" value="谷物类" id="catename">
		    		</li>
		    		<li class="list-item">
		    			<label>状态</label>
		    			
		    			<input type="radio" name="state" value="1" checked="checked">启用
		    				<input type="radio" name="state" value="0">禁用
		    			
		    			
		    		</li>
		    	</ul>
		    	<div class="modify-option">
		    		<a class="user-modify"">修改</a><a class="modify-back" onclick="history.go(-1)">返回</a>
		    	</div>
		    </form></div>
		    
		    <div class="">
		    	<div class="addlb"><a href="speciesadd.html">新增类别</a></div>
		    	<table class="user-info">
				<tbody><tr class="info-first info-item">
					<td>序号</td>
					<td>类别名称</td>
					<td>操作</td>
				</tr>
				
				<tr class="info-item">
					<td>1</td>
					<td>小麦</td>
					<td><a href="speciesedit.html" class="edit">编辑</a><a class="delete" href="javascript:if(confirm('确实要删除吗?'))location=''">删除</a></td>
				</tr>
				
				<tr class="info-item">
					<td>2</td>
					<td>玉米</td>
					<td><a href="speciesedit.html" class="edit">编辑</a><a class="delete" href="javascript:if(confirm('确实要删除吗?'))location=''">删除</a></td>
				</tr>
				
				<tr class="info-item">
					<td>3</td>
					<td>稻谷</td>
					<td><a href="speciesedit.html" class="edit">编辑</a><a  class="delete" href="javascript:if(confirm('确实要删除吗?'))location=''">删除</a></td>
				</tr>
				
			</tbody></table>
		    </div>
		</div>
	
	<script type="text/javascript" src="/glory/static/js/jquery1.11.3-jquery.min.js"></script>
	<script type="text/javascript">
	   function xiugai(){
	     if(confirm("你确定要修改吗?")){
	        document.forms[0].submit();
	     }else{
	        return false;
	     }
	   }
	   function delte(id){
	     if(confirm("你确定要删除吗？")){
	       
	        window.location.href="speciesdelete?specid="+id;
	     }else{
	        return false;
	     }
	   }
	</script>

	<script type="text/javascript" src="../../static/js/jquery-2.1.0.js"></script>
	<script type="text/javascript">
	   function xiugai(){
	     if(confirm("你确定要修改吗?")){
	        document.forms[0].submit();
	     }else{
	        return false;
	     }
	   }
	   function delte(id){
	     if(confirm("你确定要删除吗？")){
	       
	        window.location.href="speciesdelete?specid="+id;
	     }else{
	        return false;
	     }
	   }
	</script>
</html>