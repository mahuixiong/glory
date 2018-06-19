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
	</head>
	
	<body>
	
		<div class="user-content">
			<p class="user-admin"><!-- <span>当前页面 : <span><a class="active">毒素管理</a> --></p>
			<div class="user-search">
				<p><a class="user-add" href="selectAllspecies">新增毒素</a></p>
			</div>
			<table class="user-info">
				<tbody><tr class="info-first info-item">
					<td>序号</td>
					<td>毒素名称</td>
					<td>操作</td>
				</tr>
				
				<c:forEach items="${toxininfo.list}" var="cate" varStatus="num">
				<tr class="info-item">
				<td>${num.count}</td>
				<td>${cate.toxinType}</td>
				<td><a href="toxinedits?Id=${cate.id}" class="edit">编辑</a><a class="delete" onclick="delte(${cate.id})" href="javascript:location=''">删除</a></td>
				</c:forEach>
			</tbody></table>
			<div class="page">
		    	<div class="pageing-con">
				<ul class="pageing-info">
					<li class="pageing-item head"><a data-id="" href="toxinlists?Page=1" title="">首页</a></li>
					<!--上一页--> 
					<li class="pageing-item prev">  
                        <c:if test="${toxininfo.hasPreviousPage}">  
                            <a href="toxinlists?Page=${toxininfo.pageNum-1}" > 上一页
                            </a>  
                        </c:if>  
                    </li> 
					<!--循环遍历连续显示的页面，若是当前页就高亮显示，并且没有链接-->  
                    <c:forEach items="${toxininfo.navigatepageNums}" var="page_num">  
                        <c:if test="${page_num == toxininfo.pageNum}">  
                            <li class="pageing-item prev"><a href="#">${page_num}</a></li>  
                        </c:if>  
                        <c:if test="${page_num != toxininfo.pageNum}">  
                            <li class="pageing-item prev"><a href="toxinlists?Page=${page_num}">${page_num}</a></li>  
                        </c:if>  
                    </c:forEach>  
					<!--下一页-->  
                    <li class="pageing-item prev">  
                        <c:if test="${toxininfo.hasNextPage}">  
                            <a href="toxinlists?Page=${toxininfo.pageNum+1}">  
                                <span>下一页</span>  
                            </a>  
                        </c:if>  
                    </li>  
					<li class="pageing-item prev"><a href="toxinlists?Page=${toxininfo.pages}">尾页</a></li>  
				</ul>
		    </div>
		    </div> 
		</div>
	</body>
	
	<script type="text/javascript" src="../../app/js/jquery1.11.3-jquery.min.js"></script>
	<script type="text/javascript">
	  function delte(id){
		  if(confirm("你确定要删除吗？")){
			  $.ajax({
			    	url:"deletetoxininfo",
			    	data:{"Id":id},
			    	success:data
			    })
			    function data(data){
			    	if(data.code==200){
			    		alert("毒素已删除");
			    	}else{
			    		alert("毒素不存在");
			    	}
			    }
		    }else{
		       return false;
		    }
	   
	  }
	</script>
</html>
