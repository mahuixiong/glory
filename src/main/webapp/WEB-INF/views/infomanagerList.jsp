<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
	<head>
		<meta charset="utf-8" />
		<title>信息管理员管理</title>
		<link rel="stylesheet" href="../../static/css/reset.css" />
		<link rel="stylesheet" href="../../static/css/customer-management-index.css" />
		<link rel="stylesheet" href="../../static/css/page-con.css" />
	</head>
	<body>
		
		<div class="cus-content">
			<p class="cus-admin">
				<!-- <span>当前页面 : <span>
				<a class="active" href="toinfomanagerList" style="background-size: 15%;">信息管理员管理</a> -->
			</p>
			<div class="cus-search">
				<label>真实姓名</label>
				<input type="text" id="searchName" value="" maxlength="10" />
				<label>用户单位</label>
				<input type="text" id="searchCompany" value="" maxlength="20" />
				<label>审核状态</label>
				<select class="cus-examine" id="searchStatus">
					<option value="">请选择</option>
					<option value="0" >未审核</option>
					<option value="1" >审核通过</option>
					<option value="2" >驳回</option>
				</select>				
				<a href="javascript:void(0)" class="search-btn">搜索</a>
			</div>
			<table class = "cus-info">
				<tr class="info-first info-item">
					<td>序号</td>
					<td>账号</td>
					<td>真实姓名</td>
					<td>身份证号</td>
					<td>用户单位</td>
					<td>用户邮箱</td>
					<td>用户手机号码</td>
					<td>申请时间</td>
					<!-- <td>申请方向</td> -->
					<td>审核状态</td>
					<td>用户状态</td>
					<td>操作</td>
				</tr>
				<tr class="info-item">
					<td>1</td>
					<td>ads11111</td>
					<td>lijun</td>
					<td>130634199707023318</td>
					<td>ywgd</td>
					<td>1562529720@qq.com</td>
					<td>18432815656</td>
					<td>2018-04-04</td>
					
					<td class="ifexamine">驳回 </td>
					<td>启用</td>
					<td class="operation">
						
						
						<div class="ifshow"><a href="informationmanagerModify.html" class="examine">审核</a></div>
					</td>
				</tr>
				<tr class="info-item">
					<td>1</td>
					<td>ads11111</td>
					<td>lijun</td>
					<td>130634199707023318</td>
					<td>ywgd</td>
					<td>1562529720@qq.com</td>
					<td>18432815656</td>
					<td>2018-04-04</td>
					
					<td class="ifexamine">驳回 </td>
					<td>启用</td>
					<td class="operation">
						
						
						<div class="ifshow"><a href="informationmanagerModify.html" class="examine">审核</a></div>
					</td>
				</tr>
				<tr class="info-item">
					<td>1</td>
					<td>ads11111</td>
					<td>lijun</td>
					<td>130634199707023318</td>
					<td>ywgd</td>
					<td>1562529720@qq.com</td>
					<td>18432815656</td>
					<td>2018-04-04</td>
					
					<td class="ifexamine">驳回 </td>
					<td>启用</td>
					<td class="operation">
						
						
						<div class="ifshow"><a href="searchByIdXinxi?id=123" class="examine">审核</a></div>
					</td>
				</tr>
					
			
					
				
				
			</table>
		    <div class="page">
				
			</div>
		</div>
	</body>
	<script type="text/javascript" src="../../static/js/jquery.js" ></script>
	<script type="text/javascript" src="../../static/js/customer-management-index.js" ></script>
	<script type="text/javascript">
	
	</script>
</html>
