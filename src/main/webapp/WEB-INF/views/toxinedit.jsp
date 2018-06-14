<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding=UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
	<head>
		<meta charset="UTF-8">
		<title>修改毒素</title>
		<link rel="stylesheet" href="../../app/css/reset.css" />
		<link rel="stylesheet" href="../../app/css/editdlb.css" />
	</head>
<body data-genuitec-lp-enabled="false" data-genuitec-file-id="wc1-72" data-genuitec-path="/glory/src/main/webapp/WEB-INF/views/tonxinedit.jsp" class="" style="height: 310px; width: 1126px;">
		<div class="user-content" data-genuitec-lp-enabled="false" data-genuitec-file-id="wc1-72" data-genuitec-path="/glory/src/main/webapp/WEB-INF/views/tonxinedit.jsp">
			<p class="user-admin"><!-- <span>当前页面 : <span><a>毒素管理/</a><a class="active">修改毒素</a> --></p>
		    <div class="user-modify-infolist">
		    	<p class="user-modify-title">修改毒素</p>
		    	<form action="straininfoedit" method="post">
		    	<ul class="modify-list">
		    	<input type="hidden" name="id" value="1">
		    		<li class="list-item">
		    			<label>毒素名称</label>
		    			<input type="text" name="toxin_type" value="DON">
		    		</li>
		    		<li class="list-item">
		    			<label>状态</label>
		    			
		    			
		    			<input type="radio" name="state" value="1">启用
		    			<input type="radio" name="state" value="0" checked="checked">禁用
		    			
		    		</li>
		    	</ul>
		    	<div class="modify-option">
		    		<a class="user-modify" onclick="xiugai()">修改</a><a class="modify-back" onclick="history.go(-1)">返回</a>
		    	</div>
		    </form></div>
		    
		    
			
		    </div>
		
	
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
