<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    <%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
	<head>
		<meta charset="utf-8" />
		<title>用户管理</title>
		<link rel="stylesheet" href="../../app/css/reset.css" />
		<link rel="stylesheet" href="../../app/css/dlb.css" />
		<link rel="stylesheet" href="../../app/css/page-con.css" />
	
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
	<script type="text/javascript" src="../../app/js/jquery1.11.3-jquery.min.js">
	
	</script>
	
		<body  data-genuitec-lp-enabled="false" data-genuitec-file-id="wc1-16" data-genuitec-path="/glory/src/main/webapp/WEB-INF/views/categorylist.jsp" style="height: 270px; width: 1126px;">
		<div class="user-content" data-genuitec-lp-enabled="false" data-genuitec-file-id="wc1-16" data-genuitec-path="/glory/src/main/webapp/WEB-INF/views/categorylist.jsp">
			<p class="user-admin"><!-- <span>当前页面 : <span><a class="active">类别管理</a> --></p>
			<div class="user-search">
				<p><a class="user-add" href="categoryadd">新增种类</a></p>
			</div>
			<table id="table1" class="user-info">
				<tbody class='tbody1'><tr class='info-first info-item'>
					<td>序号</td>
					<td>大类别名称</td>
					<td>操作</td>
					</tr>
				<!-- 	<tr class="info-item">
					<td>1</td>
					<td>谷物类</td>
					<td><a href="categoryedit.html" class="edit">编辑</a><a class="delete" href="javascript:if(confirm('确实要删除吗?'))location=''">删除</a></td>
				</tr> -->
				 <c:forEach items="${catelist.list}" var="cate" varStatus="num">
				<tr class="info-item">
				<td>${num.count}</td>
				<td>${cate.cropCategory}</td>
				<td><a href="categoryedits?Id=${cate.id}" class="edit">编辑</a><a class="delete" onclick="delte(${cate.id})" href="javascript:location=''">删除</a></td>
				</c:forEach>
				</tbody>
			</table>
		     <div class="page">
		    	<div class="pageing-con">
				<ul class="pageing-info">
					<li class="pageing-item head"><a data-id="" href="categorylists?page=1" title="">首页</a></li>
					<!--上一页--> 
					<li class="pageing-item prev">  
                        <c:if test="${catelist.hasPreviousPage}">  
                            <a href="categorylists?page=${catelist.pageNum-1}" > 上一页
                            </a>  
                        </c:if>  
                    </li> 
					<!--循环遍历连续显示的页面，若是当前页就高亮显示，并且没有链接-->  
                    <c:forEach items="${catelist.navigatepageNums}" var="page_num">  
                        <c:if test="${page_num == catelist.pageNum}">  
                            <li class="pageing-item prev"><a href="#">${page_num}</a></li>  
                        </c:if>  
                        <c:if test="${page_num != catelist.pageNum}">  
                            <li class="pageing-item prev"><a href="categorylists?page=${page_num}">${page_num}</a></li>  
                        </c:if>  
                    </c:forEach>  
					<!--下一页-->  
                    <li class="pageing-item prev">  
                        <c:if test="${catelist.hasNextPage}">  
                            <a href="categorylists?page=${catelist.pageNum+1}">  
                                <span>下一页</span>  
                            </a>  
                        </c:if>  
                    </li>  
					<li class="pageing-item prev"><a href="categorylists?page=${catelist.pages}">尾页</a></li>  
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
 <script type="text/javascript" >

/* function load(){
	window.location.href="categorylists?page=1"
}
 */
 //window.location.href="categorylists?page=1"
 
	/*function data(data){
		for(var i=0;i<data.length;i++){
			$(".tbody1").append(
				"<tr class='info-item'>"+
					"<td>"+data[i].id+"</td>"+
					"<td>"+data[i].cropCategory+"</td>"+
				 "<td>"+"<a href='categoryedit' class='edit'"+">"+
					"编辑"+"</a>"+"<a class='delete' href='javascript:if(confirm('确实要删除吗?'))location=''"+">"+
					"删除"+"</a></td></tr>"
					
			)
		}
	}
}); */
</script> 

<!-- <script>"undefined"==typeof CODE_LIVE&&(!function(e){var t={nonSecure:"50575",secure:"50580"},c={nonSecure:"http://",secure:"https://"},r={nonSecure:"127.0.0.1",secure:"gapdebug.local.genuitec.com"},n="https:"===window.location.protocol?"secure":"nonSecure";script=e.createElement("script"),script.type="text/javascript",script.async=!0,script.src=c[n]+r[n]+":"+t[n]+"/codelive-assets/bundle.js",e.getElementsByTagName("head")[0].appendChild(script)}(document),CODE_LIVE=!0);</script>
 -->

	
	<script type="text/javascript">
	  function delte(Id){
		  if(confirm("你确定要删除吗？")){
		  $.ajax({
			   url:"categorydelete",
			   data:{"Id":Id},
			   dataType: "JSON",
			   type:"GET",
			   success:data
		   })
		   function data(data){
			   if(data.code==200){
			   alert("类别已删除");
	      	   }else{
	          alert("类别删除失败,大类别中含有小类别");
	       }
		   }
		  }else{
		       return false;
		    }
	  }
	</script>
 
</body>
</html>