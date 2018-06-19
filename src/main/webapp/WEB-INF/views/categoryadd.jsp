<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
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
			<p class="user-admin"><!-- <span>当前页面 : <span><a>大类别管理/</a><a class="active">新增大类别</a> --></p>
		     <form action="categoryAdd" method="post">
		    <div class="user-add-infolist">
		    	<p class="user-add-title">新增大类别</p>
		    	<ul class="add-list">
		    		<li class="list-item">
		    			<label>类别名称</label>
		    			<input type="text" name="crop_category" class="cate" id="cate" />
		    			<span id="cateid"></span>
		    		</li>
		    		
		    		<li class="list-item">
		    			<label>状态</label>
		    			<input type="radio" name="state" value="1" checked="checked" />启用
		    			<input type="radio" name="state" value="0" />禁用
		    		</li>
		    	</ul>
		    	<div class="add-option">
		    		<a class="user-save" onclick="bacun()">保存</a><a class="add-back" onclick="history.go(-1)">返回</a>
		    	</div>
		    </div>
		    </form>
		</div>
	</body>
<script type="text/javascript" src="../../app/js/jquery-2.1.0.js"></script>
	<script type="text/javascript">	

	
	  function bacun(){
		  var radio=document.getElementsByName("state");
			var selectvalue=null; 
			for(var i=0;i<radio.length;i++){
		       if(radio[i].checked==true) {
		            selectvalue=radio[i].value;
		            break;
		       }
		}
	   var cate=document.getElementById("cate").value;
	   var state=selectvalue;
	   $.ajax({
		   url:"categoryadds",
		   data:{"cropcategory":cate,"state":state},
		   dataType: "JSON",
		   type:"GET",
		   success:data
	   })
	   function data(data){
		   if(data.code==200){
		  alert("类别已添加");
      	   }else{
          alert("类别已经存在");
       }
	   }
	  }
	  
	</script>
</html>