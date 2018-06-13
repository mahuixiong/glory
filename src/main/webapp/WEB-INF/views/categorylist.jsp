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
	<!--	<style>

	a {
    text-decoration: none;
    cursor: pointer;
    font-size: 14px;;
    }
    li{
    	list-style: none;
    }
    td{
    	font-size: 14px;
    }
		</style>-->
	</head>
		<body data-genuitec-lp-enabled="false" data-genuitec-file-id="wc1-16" data-genuitec-path="/glory/src/main/webapp/WEB-INF/views/categorylist.jsp" style="height: 270px; width: 1126px;">
		<div class="user-content" data-genuitec-lp-enabled="false" data-genuitec-file-id="wc1-16" data-genuitec-path="/glory/src/main/webapp/WEB-INF/views/categorylist.jsp">
			<p class="user-admin"><!-- <span>当前页面 : <span><a class="active">类别管理</a> --></p>
			<div class="user-search">
				<p><a class="user-add" href="categoryadd.html">新增种类</a></p>
			</div>
			<table class="user-info">
				<tbody><tr class="info-first info-item">
					<td>序号</td>
					<td>大类别名称</td>
					<td>操作</td>
				</tr>
				
				
				<tr class="info-item">
					<td>1</td>
					<td>谷物类</td>
					<td><a href="categoryedit.html" class="edit">编辑</a><a class="delete" href="javascript:if(confirm('确实要删除吗?'))location=''">删除</a></td>
				</tr>
				
				<tr class="info-item">
					<td>2</td>
					<td>油料类</td>
					<td><a href="categoryedit.html" class="edit">编辑</a><a class="delete" href="javascript:if(confirm('确实要删除吗?'))location=''">删除</a></td>
				</tr>
				
				<tr class="info-item">
					<td>3</td>
					<td>水果类</td>
					<td><a href="categoryedit.html" class="edit">编辑</a><a class="delete" href="javascript:if(confirm('确实要删除吗?'))location=''">删除</a></td>
				</tr>
				
				<tr class="info-item">
					<td>4</td>
					<td>坚果类</td>
					<td><a href="categoryByid?id=4" class="edit">编辑</a><a class="delete" href="javascript:if(confirm('确实要删除吗?'))location=''">删除</a></td>
				</tr>
				
				<tr class="info-item">
					<td>5</td>
					<td>香辛类</td>
					<td><a href="categoryByid?id=5" class="edit">编辑</a><a class="delete" href="javascript:if(confirm('确实要删除吗?'))location=''">删除</a></td>
				</tr>
				
				<tr class="info-item">
					<td>6</td>
					<td>饲料类</td>
					<td><a href="categoryByid?id=6" class="edit">编辑</a><a class="delete" href="javascript:if(confirm('确实要删除吗?'))location=''">删除</a></td>
				</tr>
				
				<tr class="info-item">
					<td>7</td>
					<td>香薰类</td>
					<td><a href="categoryByid?id=20" class="edit">编辑</a><a class="delete"  href="javascript:if(confirm('确实要删除吗?'))location=''">删除</a></td>
				</tr>
				
				<tr class="info-item">
					<td>8</td>
					<td>肉类</td>
					<td><a href="categoryByid?id=21" class="edit">编辑</a><a class="delete" href="javascript:if(confirm('确实要删除吗?'))location=''">删除</a></td>
				</tr>
				
			
			</tbody></table>
			
		    <div class="page">
		    	<div class="pageing-con">
				<ul class="pageing-info">
					<li class="pageing-item head"><a data-id="" href="" title="">首页</a></li>
					<li class="pageing-item prev"><a data-id="" href="" title="">上一页</a></li>
					<li class="pageing-item  disabled active">
						<a data-id="1" href="javascript:void(0)" title="">1</a>
					</li>
					<li class="pageing-item  disabled" >
						<a data-id="2" href="javascript:void(0)" title="">2</a>
					</li>
					<li class="pageing-item  disabled" >
						<a data-id="3" href="javascript:void(0)" title="">3</a>
					</li>
					<li class="pageing-item  disabled" >
						<a data-id="4" href="javascript:void(0)" title="">4</a>
					</li>
					<li class="pageing-item  disabled" >
						<a data-id="5" href="javascript:void(0)" title="">5</a>
					</li>
					<li class="pageing-item  disabled" >
						<a data-id="6" href="javascript:void(0)" title="">6</a>
					</li>
					<li class="pageing-item  disabled" >
						<a data-id="7" href="javascript:void(0)" title="">7</a>
					</li>
					<li class="pageing-item  disabled" >
						<a data-id="8" href="javascript:void(0)" title="">8</a>
					</li>
					<li class="pageing-item next"><a data-id="" href="" title="">下一页</a></li>
					<li class="pageing-item foot"><a data-id="" href="" title="">尾页</a></li>
				</ul>
		    </div>
		    </div>
				







<style type="text/css">
.color a {
	padding: 5px;
	color: #4c4743;
	/* font-size: 20px; */
}

.color a:hover {
	color: #ed6c44;
}

/* .color2 {
	float: right;
	color: #4c4743;
	font-size: 20px;
	border: 1px black hidden;
} */

.color {
/* 	float: right; */
	border: 1px black hidden;
	width: 100%;
	text-align: center;
}

#checkOne {
	color: #000;
	font-size: 20px;
}
#checkOnediv{
	color: #ed6c44;
	
}

/* #h1 {
	color: #4c4743;
} */
</style>

<script>"undefined"==typeof CODE_LIVE&&(!function(e){var t={nonSecure:"50575",secure:"50580"},c={nonSecure:"http://",secure:"https://"},r={nonSecure:"127.0.0.1",secure:"gapdebug.local.genuitec.com"},n="https:"===window.location.protocol?"secure":"nonSecure";script=e.createElement("script"),script.type="text/javascript",script.async=!0,script.src=c[n]+r[n]+":"+t[n]+"/codelive-assets/bundle.js",e.getElementsByTagName("head")[0].appendChild(script)}(document),CODE_LIVE=!0);</script>


	
	<script type="text/javascript">
	  function delte(id){
	    if(confirm("你确定要删除吗？")){
	       window.location.href="categorydelete?id="+id;
	    }else{
	       return false;
	    }
	  }
	</script>

</body>
	<script type="text/javascript">
	  function delte(id){
	    if(confirm("你确定要删除吗？")){
	       window.location.href="categorydelete?id="+id;
	    }else{
	       return false;
	    }
	  }
	</script>
</html>