<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">

<html>
	<head>
		<meta charset="UTF-8">
		<title>新增毒素</title>
		<link rel="stylesheet" href="../../static/css/reset.css" />
		<link rel="stylesheet" href="../../static/css/adddlb.css" />
	</head>
	<body>
		<div class="user-content">
			<p class="user-admin"><!-- <span>当前页面 : <span><a>毒素管理/</a><a class="active">新增毒素</a> --></p>
		    <form action="addtoxin" method="post">
		    <div class="user-add-infolist">
		    	<p class="user-add-title">新增毒素</p>
		    	<ul class="add-list">
		    		<li class="list-item">
		    			<label>毒素名称</label>
		    			<input type="text" name="toxin_type">
		    		</li>
		    		<li class="list-item">
		    			<label>状态</label>
		    			<input type="radio" name="state" value="1" checked="checked">启用
		    			<input type="radio" name="state" value="0">禁用
		    		</li>
		    		
		    			<li class="list-item">
		    				<label>小麦</label>
		    				<input type="text" name="allbreed" value="0">
		    			</li> 
		    		
		    			<li class="list-item">
		    				<label>玉米</label>
		    				<input type="text" name="allbreed" value="0">
		    			</li> 
		    		
		    			<li class="list-item">
		    				<label>稻谷</label>
		    				<input type="text" name="allbreed" value="0">
		    			</li> 
		    		
		    			<li class="list-item">
		    				<label>花生</label>
		    				<input type="text" name="allbreed" value="0">
		    			</li> 
		    		
		    			<li class="list-item">
		    				<label>苹果</label>
		    				<input type="text" name="allbreed" value="0">
		    			</li> 
		    		
		    			<li class="list-item">
		    				<label>梨</label>
		    				<input type="text" name="allbreed" value="0">
		    			</li> 
		    		
		    			<li class="list-item">
		    				<label>葡萄</label>
		    				<input type="text" name="allbreed" value="0">
		    			</li> 
		    		
		    			<li class="list-item">
		    				<label>杏仁</label>
		    				<input type="text" name="allbreed" value="0">
		    			</li> 
		    		
		    			<li class="list-item">
		    				<label>葵花籽</label>
		    				<input type="text" name="allbreed" value="0">
		    			</li> 
		    		
		    			<li class="list-item">
		    				<label>榛子</label>
		    				<input type="text" name="allbreed" value="0">
		    			</li> 
		    		
		    			<li class="list-item">
		    				<label>核桃</label>
		    				<input type="text" name="allbreed" value="0">
		    			</li> 
		    		
		    			<li class="list-item">
		    				<label>花椒</label>
		    				<input type="text" name="allbreed" value="0">
		    			</li> 
		    		
		    			<li class="list-item">
		    				<label>八角</label>
		    				<input type="text" name="allbreed" value="0">
		    			</li> 
		    		
		    			<li class="list-item">
		    				<label>肉桂</label>
		    				<input type="text" name="allbreed" value="0">
		    			</li> 
		    		
		    			<li class="list-item">
		    				<label>辣椒</label>
		    				<input type="text" name="allbreed" value="0">
		    			</li> 
		    		
		    			<li class="list-item">
		    				<label>草果</label>
		    				<input type="text" name="allbreed" value="0">
		    			</li> 
		    		
		    			<li class="list-item">
		    				<label>豆粕</label>
		    				<input type="text" name="allbreed" value="0">
		    			</li> 
		    		
		    			<li class="list-item">
		    				<label>棉籽粕</label>
		    				<input type="text" name="allbreed" value="0">
		    			</li> 
		    		
		    			<li class="list-item">
		    				<label>麸皮</label>
		    				<input type="text" name="allbreed" value="0">
		    			</li> 
		    		
		    			<li class="list-item">
		    				<label>饲用玉米</label>
		    				<input type="text" name="allbreed" value="0">
		    			</li> 
		    		
		    			<li class="list-item">
		    				<label>饲用小麦</label>
		    				<input type="text" name="allbreed" value="0">
		    			</li> 
		    		
		    			<li class="list-item">
		    				<label>DGGS</label>
		    				<input type="text" name="allbreed" value="0">
		    			</li> 
		    		
		    			<li class="list-item">
		    				<label>薰衣草</label>
		    				<input type="text" name="allbreed" value="0">
		    			</li> 
		    		
		    			<li class="list-item">
		    				<label>猪肉</label>
		    				<input type="text" name="allbreed" value="0">
		    			</li> 
		    		
		    	</ul>
		    	<div class="add-option">
		    		<a class="user-save" onclick="baocun()">保存</a><a class="add-back" onclick="history.go(-1)">返回</a>
		    	</div>
		    </div>
		    </form>
		</div>
	</body>
	<script type="text/javascript" src="../../static/js/jquery-2.1.0.js"></script>
	
	<script type="text/javascript">
	  function baocun(){
	  var tonxinname=$("input[name='toxin_type']").val();
	  var url="jiaoyantoxin";
	  var parms={"toxinname":tonxinname};
	  $.post(url,parms,function(date){
	      var name=JSON.parse(date);
	              
	      if(name==false){
	      document.forms[0].submit();
	      }else{
	         alert("该毒素已经存在");
	         return false;
	      }
	  });
	    
	  }
	</script>
</html>