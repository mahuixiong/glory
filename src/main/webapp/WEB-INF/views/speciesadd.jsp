<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
	<head>
		<meta charset="UTF-8">
		<title>新增大类别</title>
		<link rel="stylesheet" href="../../static/css/reset.css" />
		<link rel="stylesheet" href="../../static/css/adddlb.css" />
	</head>
	<body>
		<div class="user-content">
			<p class="user-admin"><!-- <span>当前页面 : <span><a>大类别管理/</a><a class="active">新增类别</a> --></p>
		    <div class="user-add-infolist">
		    	<p class="user-add-title">新增类别</p>
		    	<form action="speciesadd" method="post">
		    	<ul class="add-list">
		    		<li class="list-item">
		    			<label>类别名称</label>
		    			<input type="text" name="crop_species" id="speciesname">
		    		</li>
		    		
			    		<li class="list-item">
			    			<label>毒素名称</label>
			    			<input type="text" name="toxin_name" id="speciesname" readonly="readonly" value="伏马菌素">
			    			<input type="hidden" name="toxin_id" id="speciesname" readonly="readonly" value="2">
			    		</li>
			    		<li class="list-item">
			    			<label>标准含量</label>
			    			<input type="text" name="par" id="speciesname" value="0">
			    		</li>
		    		
			    		<li class="list-item">
			    			<label>毒素名称</label>
			    			<input type="text" name="toxin_name" id="speciesname" readonly="readonly" value="玉米赤霉烯酮">
			    			<input type="hidden" name="toxin_id" id="speciesname" readonly="readonly" value="3">
			    		</li>
			    		<li class="list-item">
			    			<label>标准含量</label>
			    			<input type="text" name="par" id="speciesname" value="0">
			    		</li>
		    		
			    		<li class="list-item">
			    			<label>毒素名称</label>
			    			<input type="text" name="toxin_name" id="speciesname" readonly="readonly" value="黄曲霉毒素总量">
			    			<input type="hidden" name="toxin_id" id="speciesname" readonly="readonly" value="4">
			    		</li>
			    		<li class="list-item">
			    			<label>标准含量</label>
			    			<input type="text" name="par" id="speciesname" value="0">
			    		</li>
		    		
			    		<li class="list-item">
			    			<label>毒素名称</label>
			    			<input type="text" name="toxin_name" id="speciesname" readonly="readonly" value="黄曲霉毒素B1">
			    			<input type="hidden" name="toxin_id" id="speciesname" readonly="readonly" value="5">
			    		</li>
			    		<li class="list-item">
			    			<label>标准含量</label>
			    			<input type="text" name="par" id="speciesname" value="0">
			    		</li>
		    		
			    		<li class="list-item">
			    			<label>毒素名称</label>
			    			<input type="text" name="toxin_name" id="speciesname" readonly="readonly" value="黄曲霉毒素G1">
			    			<input type="hidden" name="toxin_id" id="speciesname" readonly="readonly" value="7">
			    		</li>
			    		<li class="list-item">
			    			<label>标准含量</label>
			    			<input type="text" name="par" id="speciesname" value="0">
			    		</li>
		    		
			    		<li class="list-item">
			    			<label>毒素名称</label>
			    			<input type="text" name="toxin_name" id="speciesname" readonly="readonly" value="黄曲霉毒素G2">
			    			<input type="hidden" name="toxin_id" id="speciesname" readonly="readonly" value="8">
			    		</li>
			    		<li class="list-item">
			    			<label>标准含量</label>
			    			<input type="text" name="par" id="speciesname" value="0">
			    		</li>
		    		
			    		<li class="list-item">
			    			<label>毒素名称</label>
			    			<input type="text" name="toxin_name" id="speciesname" readonly="readonly" value="黄曲霉毒素M1">
			    			<input type="hidden" name="toxin_id" id="speciesname" readonly="readonly" value="9">
			    		</li>
			    		<li class="list-item">
			    			<label>标准含量</label>
			    			<input type="text" name="par" id="speciesname" value="0">
			    		</li>
		    		
			    		<li class="list-item">
			    			<label>毒素名称</label>
			    			<input type="text" name="toxin_name" id="speciesname" readonly="readonly" value="黄曲霉毒素M2">
			    			<input type="hidden" name="toxin_id" id="speciesname" readonly="readonly" value="10">
			    		</li>
			    		<li class="list-item">
			    			<label>标准含量</label>
			    			<input type="text" name="par" id="speciesname" value="0">
			    		</li>
		    		
			    		<li class="list-item">
			    			<label>毒素名称</label>
			    			<input type="text" name="toxin_name" id="speciesname" readonly="readonly" value="展青霉毒素">
			    			<input type="hidden" name="toxin_id" id="speciesname" readonly="readonly" value="11">
			    		</li>
			    		<li class="list-item">
			    			<label>标准含量</label>
			    			<input type="text" name="par" id="speciesname" value="0">
			    		</li>
		    		
			    		<li class="list-item">
			    			<label>毒素名称</label>
			    			<input type="text" name="toxin_name" id="speciesname" readonly="readonly" value="赭曲霉毒素A">
			    			<input type="hidden" name="toxin_id" id="speciesname" readonly="readonly" value="12">
			    		</li>
			    		<li class="list-item">
			    			<label>标准含量</label>
			    			<input type="text" name="par" id="speciesname" value="0">
			    		</li>
		    		
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
	<script type="text/javascript" src="../../static/js/jquery-2.1.0.js"></script>
	<script type="text/javascript">
	   function baocun(){
	   var speciesname=$("#speciesname").val();
	   var url="jiaoyanspecies";
	   var parms={"speciesname":speciesname};
	   $.post(url,parms,function(date){
	      var  name=JSON.parse(date);
	      if(name!=true){
	        document.forms[0].submit();
	      }else{
	        alert("该类别名已经存在！");
	        return false;
	      }
	   })
	    
	   }
	</script>
</html>
