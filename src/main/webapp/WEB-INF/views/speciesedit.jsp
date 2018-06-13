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
	<body>
		<div class="user-content">
			<p class="user-admin"><!-- <span>当前页面 : <span><a>大类别管理/</a><a class="active">修改类别</a> --></p>
		    <div class="user-modify-infolist">
		    	<p class="user-modify-title">修改类别</p>
		    	<form action="speciesedit?id=1" method="post">
		    	<ul class="modify-list">
		    	<input type="hidden" name="id" value="1">
		    	<input type="hidden" name="crop_category_id" value="1">
		    		<li class="list-item">
		    			<label>类别名称</label>
		    			<input type="text" name="crop_species" value="小麦">
		    		</li>
		    		
		    		
			    		<li class="list-item">
			    			<label>毒素名称</label>
			    			<input type="text" name="toxin_name" id="speciesname" readonly="readonly" value="玉米赤霉烯酮">
			    			<input type="hidden" name="parid" id="speciesname" readonly="readonly" value="1">
			    		</li>
			    		<li class="list-item">
			    			<label>标准含量</label>
			    			<input type="text" name="par" id="speciesname" value="12.0">
			    		</li>
		    		
			    		<li class="list-item">
			    			<label>毒素名称</label>
			    			<input type="text" name="toxin_name" id="speciesname" readonly="readonly" value="伏马菌素">
			    			<input type="hidden" name="parid" id="speciesname" readonly="readonly" value="2">
			    		</li>
			    		<li class="list-item">
			    			<label>标准含量</label>
			    			<input type="text" name="par" id="speciesname" value="13.0">
			    		</li>
		    		
			    		<li class="list-item">
			    			<label>毒素名称</label>
			    			<input type="text" name="toxin_name" id="speciesname" readonly="readonly" value="黄曲霉毒素总量">
			    			<input type="hidden" name="parid" id="speciesname" readonly="readonly" value="3">
			    		</li>
			    		<li class="list-item">
			    			<label>标准含量</label>
			    			<input type="text" name="par" id="speciesname" value="34.0">
			    		</li>
		    		
			    		<li class="list-item">
			    			<label>毒素名称</label>
			    			<input type="text" name="toxin_name" id="speciesname" readonly="readonly" value="黄曲霉毒素B1">
			    			<input type="hidden" name="parid" id="speciesname" readonly="readonly" value="4">
			    		</li>
			    		<li class="list-item">
			    			<label>标准含量</label>
			    			<input type="text" name="par" id="speciesname" value="12.0">
			    		</li>
		    		
			    		<li class="list-item">
			    			<label>毒素名称</label>
			    			<input type="text" name="toxin_name" id="speciesname" readonly="readonly" value="黄曲霉毒素B2">
			    			<input type="hidden" name="parid" id="speciesname" readonly="readonly" value="5">
			    		</li>
			    		<li class="list-item">
			    			<label>标准含量</label>
			    			<input type="text" name="par" id="speciesname" value="23.0">
			    		</li>
		    		
			    		<li class="list-item">
			    			<label>毒素名称</label>
			    			<input type="text" name="toxin_name" id="speciesname" readonly="readonly" value="黄曲霉毒素G1">
			    			<input type="hidden" name="parid" id="speciesname" readonly="readonly" value="6">
			    		</li>
			    		<li class="list-item">
			    			<label>标准含量</label>
			    			<input type="text" name="par" id="speciesname" value="12.0">
			    		</li>
		    		
			    		<li class="list-item">
			    			<label>毒素名称</label>
			    			<input type="text" name="toxin_name" id="speciesname" readonly="readonly" value="黄曲霉毒素G2">
			    			<input type="hidden" name="parid" id="speciesname" readonly="readonly" value="7">
			    		</li>
			    		<li class="list-item">
			    			<label>标准含量</label>
			    			<input type="text" name="par" id="speciesname" value="32.0">
			    		</li>
		    		
			    		<li class="list-item">
			    			<label>毒素名称</label>
			    			<input type="text" name="toxin_name" id="speciesname" readonly="readonly" value="黄曲霉毒素M1">
			    			<input type="hidden" name="parid" id="speciesname" readonly="readonly" value="8">
			    		</li>
			    		<li class="list-item">
			    			<label>标准含量</label>
			    			<input type="text" name="par" id="speciesname" value="22.0">
			    		</li>
		    		
			    		<li class="list-item">
			    			<label>毒素名称</label>
			    			<input type="text" name="toxin_name" id="speciesname" readonly="readonly" value="黄曲霉毒素M2">
			    			<input type="hidden" name="parid" id="speciesname" readonly="readonly" value="9">
			    		</li>
			    		<li class="list-item">
			    			<label>标准含量</label>
			    			<input type="text" name="par" id="speciesname" value="33.0">
			    		</li>
		    		
			    		<li class="list-item">
			    			<label>毒素名称</label>
			    			<input type="text" name="toxin_name" id="speciesname" readonly="readonly" value="展青霉毒素">
			    			<input type="hidden" name="parid" id="speciesname" readonly="readonly" value="10">
			    		</li>
			    		<li class="list-item">
			    			<label>标准含量</label>
			    			<input type="text" name="par" id="speciesname" value="11.0">
			    		</li>
		    		
			    		<li class="list-item">
			    			<label>毒素名称</label>
			    			<input type="text" name="toxin_name" id="speciesname" readonly="readonly" value="赭曲霉毒素A">
			    			<input type="hidden" name="parid" id="speciesname" readonly="readonly" value="11">
			    		</li>
			    		<li class="list-item">
			    			<label>标准含量</label>
			    			<input type="text" name="par" id="speciesname" value="22.0">
			    		</li>
		    		
			    		<li class="list-item">
			    			<label>毒素名称</label>
			    			<input type="text" name="toxin_name" id="speciesname" readonly="readonly" value="DON">
			    			<input type="hidden" name="parid" id="speciesname" readonly="readonly" value="12">
			    		</li>
			    		<li class="list-item">
			    			<label>标准含量</label>
			    			<input type="text" name="par" id="speciesname" value="33.0">
			    		</li>
		    		
		    		
		    		
		    		<li class="list-item">
		    			<label>状态</label>
		    			
		    			<input type="radio" name="state" value="1" checked="checked">启用
		    			<input type="radio" name="state" value="0">禁用
		    			
		    			
		    		</li>
		    	</ul>
		    	<div class="modify-option moption">
		    		<a class="user-modify">修改</a><a class="modify-back" onclick="history.go(-1)">返回</a>
		    	</div>
		    	</form>
		    </div>
		</div>
	</body>
	<script type="text/javascript">
	   function xiugai(){
	      if(confirm("你确定要修改？")){
	        document.forms[0].submit();
	      }else{
	         return false;
	      }
	   }
	</script>
</html>
