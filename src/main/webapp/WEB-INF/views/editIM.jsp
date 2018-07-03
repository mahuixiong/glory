<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    <%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
	<head>
		<meta charset="UTF-8">
		<title>编辑信息</title>
		<link rel="stylesheet" type="text/css" href="../../app/css/reset.css"/>
		<link rel="stylesheet" type="text/css" href="../../app/css/editIM.css"?/>		
		<link rel="stylesheet" href="../../app/css/calendar.css" />
		
		<script src="../../app/js/jquery.js"></script>
		<script type="text/javascript" src="../../app/js/calendar.js"></script>
		<script src="../../app/js/editIM.js"></script>
		<script src="../../app/js/checkUpdateIM.js"></script>
		 

	</head>
	<body data-genuitec-lp-enabled="false" data-genuitec-file-id="wc1-30" data-genuitec-path="/glory/src/main/webapp/WEB-INF/views/editIM.jsp" class="" style="height: 310px; width: 1126px;">
		<div class="contaner" data-genuitec-lp-enabled="false" data-genuitec-file-id="wc1-30" data-genuitec-path="/glory/src/main/webapp/WEB-INF/views/editIM.jsp">
			
			<div class="im-content">
				<div class="im-heade">
					<div class="imhead-title">当前页面：<a>修改信息</a></div>
				</div>
	<form id="search_form" enctype="multipart/form-data" method="post" accept-charset="utf-8">			
				<div class="editim-table">
					<ul class="table-con">
						<li class="edittable-top">
							<div class="edittable-left">采样信息</div>
							<div class="edittable-right">
								<ul>
									<li>
										<lable>样品编号</lable>
										<input type="" name="sample_id" placeholder="首字母为英文，长度为5-15位" id="" class="ypbh" value="${sampleid}" >
										<span id="sample_id"></span>
									</li>
									<li>
										<lable>农产品加工原料类别</lable>
										<select class="sel" onchange="cptypes()" name="crop_category_id" id="cptype">
										
								        	<c:forEach items="${cropcategories}" var="cropcategories">
								        	<c:if test="${cropcategories.id==sampleinfos[0].cropCategoryId}">
								        	<option value="${cropcategories.id}" selected="selected">${cropcategories.cropCategory}</option>
								        	</c:if>
								        	<c:if test="${cropcategories.id!=sampleinfos[0].cropCategoryId}">
								        	<option value="${cropcategories.id}">${cropcategories.cropCategory}</option>
								        	</c:if>
								        
								        </c:forEach>
										</select> 
										<span id="crop_category_id"></span>
									</li>
									<li>
										<lable>品种</lable>
										<select name="breed" class="sele" id="cptypess" >
											
										</select>
										<span id="breed"></span>
									</li>
									<li>
										<div class="width">
											 <lable>地点</lable>
							  <input type="hidden" value="安徽" id="shengs">
							  <input type="hidden" value="合肥" id="shisss">
							  <input type="hidden" value="肥东" id="xiansss">
							  <input type="hidden" value="安徽" name="province" id="provinces">
							  <input type="hidden" value="合肥" name="city" id="city">
							  <input type="hidden" value="肥东" name="county" id="county">
							   <input type="hidden" value="123" id="wsx">
	                             <select  class="province" id="shen" " onchange="changesheng()">
							       <c:forEach items="${addressprovinces}" var="addressprovinces">
							       <c:if test="${addressprovinces.name==sampleinfos[0].province}">
							       <option class="shengde" selected="selected" value="${addressprovinces.code}">${addressprovinces.name}</option>
							       </c:if>
							       <c:if test="${addressprovinces.name!=sampleinfos[0].province}">
							       <option class="shengde"  value="${addressprovinces.code}">${addressprovinces.name}</option>
							       </c:if>
							       </c:forEach>
								</select><span>省</span>
				        		<select class="city" id="shi" onchange="changeShi()">
				        		<option value="0" class="shide">请选择</option>
				        		</select><span>市</span>
				        		
				        		
				        		<select  class="county" id="xian" onchange="xianwsx()">
				        		<option value="0" class="xiande">请选择</option>
				        		</select><span>县</span>
										</div>
										<span class="xc">
											<input type="text" placeholder="可为空" id="xiang" name="township" value="${sampleinfos[0].township}">乡
											<input type="text" placeholder="可为空" id="cun" name="village" value="${sampleinfos[0].village}">村
											<input type="text" placeholder="可为空" id="hu" name="household" value="${sampleinfos[0].household}"><span>户</span>
										</span>
										<span id="province"></span>
									</li>
									<li>
										<lable>收获时间</lable>
										<input  type="text" name="harvest_time" value="${havtime}" id="dt" placeholder="选择日期" readonly="readonly">
  										<div id="dd" class="calendar calendar-modal calendar-d" style="width: 280px; height: 330px; left: 499.641px; top: 357px; z-index: 999; display: none;"><div class="calendar-inner" style="width: 280px;"><div class="calendar-views"><div class="view view-date" style="width: 280px;"><div class="calendar-hd"><a href="javascript:;" data-calendar-display-date="" class="calendar-display">2018/<span class="m">4</span></a><div class="calendar-arrow"><span class="prev" title="上一月" data-calendar-arrow-date="">&lt;</span><span class="next" title="下一月" data-calendar-arrow-date="">&gt;</span></div></div><div class="calendar-ct" style="width: 280px; height: 280px;"><ol class="week"><li style="width:40px;height:40px;line-height:40px">日</li><li style="width:40px;height:40px;line-height:40px">一</li><li style="width:40px;height:40px;line-height:40px">二</li><li style="width:40px;height:40px;line-height:40px">三</li><li style="width:40px;height:40px;line-height:40px">四</li><li style="width:40px;height:40px;line-height:40px">五</li><li style="width:40px;height:40px;line-height:40px">六</li></ol><ul class="date-items"><li style="width: 280px;"><ol class="days"><li style="width:40px;height:40px;line-height:40px" class="old" data-calendar-day="">25</li><li style="width:40px;height:40px;line-height:40px" class="old" data-calendar-day="">26</li><li style="width:40px;height:40px;line-height:40px" class="old" data-calendar-day="">27</li><li style="width:40px;height:40px;line-height:40px" class="old" data-calendar-day="">28</li><li style="width:40px;height:40px;line-height:40px" class="" data-calendar-day="">1</li><li style="width:40px;height:40px;line-height:40px" class="" data-calendar-day="">2</li><li style="width:40px;height:40px;line-height:40px" class="" data-calendar-day="">3</li><li style="width:40px;height:40px;line-height:40px" class="" data-calendar-day="">4</li><li style="width:40px;height:40px;line-height:40px" class="" data-calendar-day="">5</li><li style="width:40px;height:40px;line-height:40px" class="" data-calendar-day="">6</li><li style="width:40px;height:40px;line-height:40px" class="" data-calendar-day="">7</li><li style="width:40px;height:40px;line-height:40px" class="" data-calendar-day="">8</li><li style="width:40px;height:40px;line-height:40px" class="" data-calendar-day="">9</li><li style="width:40px;height:40px;line-height:40px" class="" data-calendar-day="">10</li><li style="width:40px;height:40px;line-height:40px" class="" data-calendar-day="">11</li><li style="width:40px;height:40px;line-height:40px" class="" data-calendar-day="">12</li><li style="width:40px;height:40px;line-height:40px" class="" data-calendar-day="">13</li><li style="width:40px;height:40px;line-height:40px" class="" data-calendar-day="">14</li><li style="width:40px;height:40px;line-height:40px" class="" data-calendar-day="">15</li><li style="width:40px;height:40px;line-height:40px" class="" data-calendar-day="">16</li><li style="width:40px;height:40px;line-height:40px" class="" data-calendar-day="">17</li><li style="width:40px;height:40px;line-height:40px" class="" data-calendar-day="">18</li><li style="width:40px;height:40px;line-height:40px" class="" data-calendar-day="">19</li><li style="width:40px;height:40px;line-height:40px" class="" data-calendar-day="">20</li><li style="width:40px;height:40px;line-height:40px" class="" data-calendar-day="">21</li><li style="width:40px;height:40px;line-height:40px" class="" data-calendar-day="">22</li><li style="width:40px;height:40px;line-height:40px" class="" data-calendar-day="">23</li><li style="width:40px;height:40px;line-height:40px" class="" data-calendar-day="">24</li><li style="width:40px;height:40px;line-height:40px" class="" data-calendar-day="">25</li><li style="width:40px;height:40px;line-height:40px" class="" data-calendar-day="">26</li><li style="width:40px;height:40px;line-height:40px" class="" data-calendar-day="">27</li><li style="width:40px;height:40px;line-height:40px" class="" data-calendar-day="">28</li><li style="width:40px;height:40px;line-height:40px" class="" data-calendar-day="">29</li><li style="width:40px;height:40px;line-height:40px" class="" data-calendar-day="">30</li><li style="width:40px;height:40px;line-height:40px" class="" data-calendar-day="">31</li><li style="width:40px;height:40px;line-height:40px" class="new" data-calendar-day="">1</li><li style="width:40px;height:40px;line-height:40px" class="new" data-calendar-day="">2</li><li style="width:40px;height:40px;line-height:40px" class="new" data-calendar-day="">3</li><li style="width:40px;height:40px;line-height:40px" class="new" data-calendar-day="">4</li><li style="width:40px;height:40px;line-height:40px" class="new" data-calendar-day="">5</li><li style="width:40px;height:40px;line-height:40px" class="new" data-calendar-day="">6</li><li style="width:40px;height:40px;line-height:40px" class="new" data-calendar-day="">7</li></ol></li><li style="width: 280px;"><ol class="days"><li style="width:40px;height:40px;line-height:40px" class="old" data-calendar-day="">25</li><li style="width:40px;height:40px;line-height:40px" class="old" data-calendar-day="">26</li><li style="width:40px;height:40px;line-height:40px" class="old" data-calendar-day="">27</li><li style="width:40px;height:40px;line-height:40px" class="old" data-calendar-day="">28</li><li style="width:40px;height:40px;line-height:40px" class="old" data-calendar-day="">29</li><li style="width:40px;height:40px;line-height:40px" class="old" data-calendar-day="">30</li><li style="width:40px;height:40px;line-height:40px" class="old" data-calendar-day="">31</li><li style="width:40px;height:40px;line-height:40px" class="" data-calendar-day="">1</li><li style="width:40px;height:40px;line-height:40px" class="" data-calendar-day="">2</li><li style="width:40px;height:40px;line-height:40px" class="" data-calendar-day="">3</li><li style="width:40px;height:40px;line-height:40px" class="" data-calendar-day="">4</li><li style="width:40px;height:40px;line-height:40px" class="" data-calendar-day="">5</li><li style="width:40px;height:40px;line-height:40px" class="" data-calendar-day="">6</li><li style="width:40px;height:40px;line-height:40px" class="" data-calendar-day="">7</li><li style="width:40px;height:40px;line-height:40px" class="" data-calendar-day="">8</li><li style="width:40px;height:40px;line-height:40px" class="" data-calendar-day="">9</li><li style="width:40px;height:40px;line-height:40px" class=" now" data-calendar-day="">10</li><li style="width:40px;height:40px;line-height:40px" class="" data-calendar-day="">11</li><li style="width:40px;height:40px;line-height:40px" class="" data-calendar-day="">12</li><li style="width:40px;height:40px;line-height:40px" class="" data-calendar-day="">13</li><li style="width:40px;height:40px;line-height:40px" class="" data-calendar-day="">14</li><li style="width:40px;height:40px;line-height:40px" class="" data-calendar-day="">15</li><li style="width:40px;height:40px;line-height:40px" class="" data-calendar-day="">16</li><li style="width:40px;height:40px;line-height:40px" class="" data-calendar-day="">17</li><li style="width:40px;height:40px;line-height:40px" class="" data-calendar-day="">18</li><li style="width:40px;height:40px;line-height:40px" class="" data-calendar-day="">19</li><li style="width:40px;height:40px;line-height:40px" class="" data-calendar-day="">20</li><li style="width:40px;height:40px;line-height:40px" class="" data-calendar-day="">21</li><li style="width:40px;height:40px;line-height:40px" class="" data-calendar-day="">22</li><li style="width:40px;height:40px;line-height:40px" class="" data-calendar-day="">23</li><li style="width:40px;height:40px;line-height:40px" class="" data-calendar-day="">24</li><li style="width:40px;height:40px;line-height:40px" class="" data-calendar-day="">25</li><li style="width:40px;height:40px;line-height:40px" class="" data-calendar-day="">26</li><li style="width:40px;height:40px;line-height:40px" class="" data-calendar-day="">27</li><li style="width:40px;height:40px;line-height:40px" class="" data-calendar-day="">28</li><li style="width:40px;height:40px;line-height:40px" class="" data-calendar-day="">29</li><li style="width:40px;height:40px;line-height:40px" class="" data-calendar-day="">30</li><li style="width:40px;height:40px;line-height:40px" class="new" data-calendar-day="">1</li><li style="width:40px;height:40px;line-height:40px" class="new" data-calendar-day="">2</li><li style="width:40px;height:40px;line-height:40px" class="new" data-calendar-day="">3</li><li style="width:40px;height:40px;line-height:40px" class="new" data-calendar-day="">4</li><li style="width:40px;height:40px;line-height:40px" class="new" data-calendar-day="">5</li></ol></li><li style="width: 280px;"><ol class="days"><li style="width:40px;height:40px;line-height:40px" class="old" data-calendar-day="">29</li><li style="width:40px;height:40px;line-height:40px" class="old" data-calendar-day="">30</li><li style="width:40px;height:40px;line-height:40px" class="" data-calendar-day="">1</li><li style="width:40px;height:40px;line-height:40px" class="" data-calendar-day="">2</li><li style="width:40px;height:40px;line-height:40px" class="" data-calendar-day="">3</li><li style="width:40px;height:40px;line-height:40px" class="" data-calendar-day="">4</li><li style="width:40px;height:40px;line-height:40px" class="" data-calendar-day="">5</li><li style="width:40px;height:40px;line-height:40px" class="" data-calendar-day="">6</li><li style="width:40px;height:40px;line-height:40px" class="" data-calendar-day="">7</li><li style="width:40px;height:40px;line-height:40px" class="" data-calendar-day="">8</li><li style="width:40px;height:40px;line-height:40px" class="" data-calendar-day="">9</li><li style="width:40px;height:40px;line-height:40px" class="" data-calendar-day="">10</li><li style="width:40px;height:40px;line-height:40px" class="" data-calendar-day="">11</li><li style="width:40px;height:40px;line-height:40px" class="" data-calendar-day="">12</li><li style="width:40px;height:40px;line-height:40px" class="" data-calendar-day="">13</li><li style="width:40px;height:40px;line-height:40px" class="" data-calendar-day="">14</li><li style="width:40px;height:40px;line-height:40px" class="" data-calendar-day="">15</li><li style="width:40px;height:40px;line-height:40px" class="" data-calendar-day="">16</li><li style="width:40px;height:40px;line-height:40px" class="" data-calendar-day="">17</li><li style="width:40px;height:40px;line-height:40px" class="" data-calendar-day="">18</li><li style="width:40px;height:40px;line-height:40px" class="" data-calendar-day="">19</li><li style="width:40px;height:40px;line-height:40px" class="" data-calendar-day="">20</li><li style="width:40px;height:40px;line-height:40px" class="" data-calendar-day="">21</li><li style="width:40px;height:40px;line-height:40px" class="" data-calendar-day="">22</li><li style="width:40px;height:40px;line-height:40px" class="" data-calendar-day="">23</li><li style="width:40px;height:40px;line-height:40px" class="" data-calendar-day="">24</li><li style="width:40px;height:40px;line-height:40px" class="" data-calendar-day="">25</li><li style="width:40px;height:40px;line-height:40px" class="" data-calendar-day="">26</li><li style="width:40px;height:40px;line-height:40px" class="" data-calendar-day="">27</li><li style="width:40px;height:40px;line-height:40px" class="" data-calendar-day="">28</li><li style="width:40px;height:40px;line-height:40px" class="" data-calendar-day="">29</li><li style="width:40px;height:40px;line-height:40px" class="" data-calendar-day="">30</li><li style="width:40px;height:40px;line-height:40px" class="" data-calendar-day="">31</li><li style="width:40px;height:40px;line-height:40px" class="new" data-calendar-day="">1</li><li style="width:40px;height:40px;line-height:40px" class="new" data-calendar-day="">2</li><li style="width:40px;height:40px;line-height:40px" class="new" data-calendar-day="">3</li><li style="width:40px;height:40px;line-height:40px" class="new" data-calendar-day="">4</li><li style="width:40px;height:40px;line-height:40px" class="new" data-calendar-day="">5</li><li style="width:40px;height:40px;line-height:40px" class="new" data-calendar-day="">6</li><li style="width:40px;height:40px;line-height:40px" class="new" data-calendar-day="">7</li><li style="width:40px;height:40px;line-height:40px" class="new" data-calendar-day="">8</li><li style="width:40px;height:40px;line-height:40px" class="new" data-calendar-day="">9</li></ol></li></ul></div></div><div class="view view-month" style="width: 280px;"><div class="calendar-hd"><a href="javascript:;" data-calendar-display-month="" class="calendar-display">2018</a><div class="calendar-arrow"><span class="prev" title="上一年" data-calendar-arrow-month="">&lt;</span><span class="next" title="下一年" data-calendar-arrow-month="">&gt;</span></div></div><ol class="calendar-ct month-items" style="width: 280px; height: 280px;"><li style="width:70px;height:70px;line-height:70px" data-calendar-month="">1月</li><li style="width:70px;height:70px;line-height:70px" data-calendar-month="">2月</li><li style="width:70px;height:70px;line-height:70px" data-calendar-month="">3月</li><li style="width:70px;height:70px;line-height:70px" data-calendar-month="" class="now">4月</li><li style="width:70px;height:70px;line-height:70px" data-calendar-month="">5月</li><li style="width:70px;height:70px;line-height:70px" data-calendar-month="">6月</li><li style="width:70px;height:70px;line-height:70px" data-calendar-month="">7月</li><li style="width:70px;height:70px;line-height:70px" data-calendar-month="">8月</li><li style="width:70px;height:70px;line-height:70px" data-calendar-month="">9月</li><li style="width:70px;height:70px;line-height:70px" data-calendar-month="">10月</li><li style="width:70px;height:70px;line-height:70px" data-calendar-month="">11月</li><li style="width:70px;height:70px;line-height:70px" data-calendar-month="">12月</li></ol></div></div></div><div class="calendar-label"><p>HelloWorld</p><i></i></div></div>
										<span id="harvest_time"></span>
									</li>
									<li>
										<lable>取样时间</lable>
										<input type="text" name="sampling_time" value="${sampletime}" id="dt-b" placeholder="选择日期" readonly="readonly"">
  										<div id="dd-b" class="calendar calendar-modal calendar-d" style="width: 280px; height: 330px; left: 499.641px; top: 401px; z-index: 999; display: none;"><div class="calendar-inner" style="width: 280px;"><div class="calendar-views"><div class="view view-date" style="width: 280px;"><div class="calendar-hd"><a href="javascript:;" data-calendar-display-date="" class="calendar-display">2018/<span class="m">4</span></a><div class="calendar-arrow"><span class="prev" title="上一月" data-calendar-arrow-date="">&lt;</span><span class="next" title="下一月" data-calendar-arrow-date="">&gt;</span></div></div><div class="calendar-ct" style="width: 280px; height: 280px;"><ol class="week"><li style="width:40px;height:40px;line-height:40px">日</li><li style="width:40px;height:40px;line-height:40px">一</li><li style="width:40px;height:40px;line-height:40px">二</li><li style="width:40px;height:40px;line-height:40px">三</li><li style="width:40px;height:40px;line-height:40px">四</li><li style="width:40px;height:40px;line-height:40px">五</li><li style="width:40px;height:40px;line-height:40px">六</li></ol><ul class="date-items"><li style="width: 280px;"><ol class="days"><li style="width:40px;height:40px;line-height:40px" class="old" data-calendar-day="">25</li><li style="width:40px;height:40px;line-height:40px" class="old" data-calendar-day="">26</li><li style="width:40px;height:40px;line-height:40px" class="old" data-calendar-day="">27</li><li style="width:40px;height:40px;line-height:40px" class="old" data-calendar-day="">28</li><li style="width:40px;height:40px;line-height:40px" class="" data-calendar-day="">1</li><li style="width:40px;height:40px;line-height:40px" class="" data-calendar-day="">2</li><li style="width:40px;height:40px;line-height:40px" class="" data-calendar-day="">3</li><li style="width:40px;height:40px;line-height:40px" class="" data-calendar-day="">4</li><li style="width:40px;height:40px;line-height:40px" class="" data-calendar-day="">5</li><li style="width:40px;height:40px;line-height:40px" class="" data-calendar-day="">6</li><li style="width:40px;height:40px;line-height:40px" class="" data-calendar-day="">7</li><li style="width:40px;height:40px;line-height:40px" class="" data-calendar-day="">8</li><li style="width:40px;height:40px;line-height:40px" class="" data-calendar-day="">9</li><li style="width:40px;height:40px;line-height:40px" class="" data-calendar-day="">10</li><li style="width:40px;height:40px;line-height:40px" class="" data-calendar-day="">11</li><li style="width:40px;height:40px;line-height:40px" class="" data-calendar-day="">12</li><li style="width:40px;height:40px;line-height:40px" class="" data-calendar-day="">13</li><li style="width:40px;height:40px;line-height:40px" class="" data-calendar-day="">14</li><li style="width:40px;height:40px;line-height:40px" class="" data-calendar-day="">15</li><li style="width:40px;height:40px;line-height:40px" class="" data-calendar-day="">16</li><li style="width:40px;height:40px;line-height:40px" class="" data-calendar-day="">17</li><li style="width:40px;height:40px;line-height:40px" class="" data-calendar-day="">18</li><li style="width:40px;height:40px;line-height:40px" class="" data-calendar-day="">19</li><li style="width:40px;height:40px;line-height:40px" class="" data-calendar-day="">20</li><li style="width:40px;height:40px;line-height:40px" class="" data-calendar-day="">21</li><li style="width:40px;height:40px;line-height:40px" class="" data-calendar-day="">22</li><li style="width:40px;height:40px;line-height:40px" class="" data-calendar-day="">23</li><li style="width:40px;height:40px;line-height:40px" class="" data-calendar-day="">24</li><li style="width:40px;height:40px;line-height:40px" class="" data-calendar-day="">25</li><li style="width:40px;height:40px;line-height:40px" class="" data-calendar-day="">26</li><li style="width:40px;height:40px;line-height:40px" class="" data-calendar-day="">27</li><li style="width:40px;height:40px;line-height:40px" class="" data-calendar-day="">28</li><li style="width:40px;height:40px;line-height:40px" class="" data-calendar-day="">29</li><li style="width:40px;height:40px;line-height:40px" class="" data-calendar-day="">30</li><li style="width:40px;height:40px;line-height:40px" class="" data-calendar-day="">31</li><li style="width:40px;height:40px;line-height:40px" class="new" data-calendar-day="">1</li><li style="width:40px;height:40px;line-height:40px" class="new" data-calendar-day="">2</li><li style="width:40px;height:40px;line-height:40px" class="new" data-calendar-day="">3</li><li style="width:40px;height:40px;line-height:40px" class="new" data-calendar-day="">4</li><li style="width:40px;height:40px;line-height:40px" class="new" data-calendar-day="">5</li><li style="width:40px;height:40px;line-height:40px" class="new" data-calendar-day="">6</li><li style="width:40px;height:40px;line-height:40px" class="new" data-calendar-day="">7</li></ol></li><li style="width: 280px;"><ol class="days"><li style="width:40px;height:40px;line-height:40px" class="old" data-calendar-day="">25</li><li style="width:40px;height:40px;line-height:40px" class="old" data-calendar-day="">26</li><li style="width:40px;height:40px;line-height:40px" class="old" data-calendar-day="">27</li><li style="width:40px;height:40px;line-height:40px" class="old" data-calendar-day="">28</li><li style="width:40px;height:40px;line-height:40px" class="old" data-calendar-day="">29</li><li style="width:40px;height:40px;line-height:40px" class="old" data-calendar-day="">30</li><li style="width:40px;height:40px;line-height:40px" class="old" data-calendar-day="">31</li><li style="width:40px;height:40px;line-height:40px" class="" data-calendar-day="">1</li><li style="width:40px;height:40px;line-height:40px" class="" data-calendar-day="">2</li><li style="width:40px;height:40px;line-height:40px" class="" data-calendar-day="">3</li><li style="width:40px;height:40px;line-height:40px" class="" data-calendar-day="">4</li><li style="width:40px;height:40px;line-height:40px" class="" data-calendar-day="">5</li><li style="width:40px;height:40px;line-height:40px" class="" data-calendar-day="">6</li><li style="width:40px;height:40px;line-height:40px" class="" data-calendar-day="">7</li><li style="width:40px;height:40px;line-height:40px" class="" data-calendar-day="">8</li><li style="width:40px;height:40px;line-height:40px" class="" data-calendar-day="">9</li><li style="width:40px;height:40px;line-height:40px" class=" now" data-calendar-day="">10</li><li style="width:40px;height:40px;line-height:40px" class="" data-calendar-day="">11</li><li style="width:40px;height:40px;line-height:40px" class="" data-calendar-day="">12</li><li style="width:40px;height:40px;line-height:40px" class="" data-calendar-day="">13</li><li style="width:40px;height:40px;line-height:40px" class="" data-calendar-day="">14</li><li style="width:40px;height:40px;line-height:40px" class="" data-calendar-day="">15</li><li style="width:40px;height:40px;line-height:40px" class="" data-calendar-day="">16</li><li style="width:40px;height:40px;line-height:40px" class="" data-calendar-day="">17</li><li style="width:40px;height:40px;line-height:40px" class="" data-calendar-day="">18</li><li style="width:40px;height:40px;line-height:40px" class="" data-calendar-day="">19</li><li style="width:40px;height:40px;line-height:40px" class="" data-calendar-day="">20</li><li style="width:40px;height:40px;line-height:40px" class="" data-calendar-day="">21</li><li style="width:40px;height:40px;line-height:40px" class="" data-calendar-day="">22</li><li style="width:40px;height:40px;line-height:40px" class="" data-calendar-day="">23</li><li style="width:40px;height:40px;line-height:40px" class="" data-calendar-day="">24</li><li style="width:40px;height:40px;line-height:40px" class="" data-calendar-day="">25</li><li style="width:40px;height:40px;line-height:40px" class="" data-calendar-day="">26</li><li style="width:40px;height:40px;line-height:40px" class="" data-calendar-day="">27</li><li style="width:40px;height:40px;line-height:40px" class="" data-calendar-day="">28</li><li style="width:40px;height:40px;line-height:40px" class="" data-calendar-day="">29</li><li style="width:40px;height:40px;line-height:40px" class="" data-calendar-day="">30</li><li style="width:40px;height:40px;line-height:40px" class="new" data-calendar-day="">1</li><li style="width:40px;height:40px;line-height:40px" class="new" data-calendar-day="">2</li><li style="width:40px;height:40px;line-height:40px" class="new" data-calendar-day="">3</li><li style="width:40px;height:40px;line-height:40px" class="new" data-calendar-day="">4</li><li style="width:40px;height:40px;line-height:40px" class="new" data-calendar-day="">5</li></ol></li><li style="width: 280px;"><ol class="days"><li style="width:40px;height:40px;line-height:40px" class="old" data-calendar-day="">29</li><li style="width:40px;height:40px;line-height:40px" class="old" data-calendar-day="">30</li><li style="width:40px;height:40px;line-height:40px" class="" data-calendar-day="">1</li><li style="width:40px;height:40px;line-height:40px" class="" data-calendar-day="">2</li><li style="width:40px;height:40px;line-height:40px" class="" data-calendar-day="">3</li><li style="width:40px;height:40px;line-height:40px" class="" data-calendar-day="">4</li><li style="width:40px;height:40px;line-height:40px" class="" data-calendar-day="">5</li><li style="width:40px;height:40px;line-height:40px" class="" data-calendar-day="">6</li><li style="width:40px;height:40px;line-height:40px" class="" data-calendar-day="">7</li><li style="width:40px;height:40px;line-height:40px" class="" data-calendar-day="">8</li><li style="width:40px;height:40px;line-height:40px" class="" data-calendar-day="">9</li><li style="width:40px;height:40px;line-height:40px" class="" data-calendar-day="">10</li><li style="width:40px;height:40px;line-height:40px" class="" data-calendar-day="">11</li><li style="width:40px;height:40px;line-height:40px" class="" data-calendar-day="">12</li><li style="width:40px;height:40px;line-height:40px" class="" data-calendar-day="">13</li><li style="width:40px;height:40px;line-height:40px" class="" data-calendar-day="">14</li><li style="width:40px;height:40px;line-height:40px" class="" data-calendar-day="">15</li><li style="width:40px;height:40px;line-height:40px" class="" data-calendar-day="">16</li><li style="width:40px;height:40px;line-height:40px" class="" data-calendar-day="">17</li><li style="width:40px;height:40px;line-height:40px" class="" data-calendar-day="">18</li><li style="width:40px;height:40px;line-height:40px" class="" data-calendar-day="">19</li><li style="width:40px;height:40px;line-height:40px" class="" data-calendar-day="">20</li><li style="width:40px;height:40px;line-height:40px" class="" data-calendar-day="">21</li><li style="width:40px;height:40px;line-height:40px" class="" data-calendar-day="">22</li><li style="width:40px;height:40px;line-height:40px" class="" data-calendar-day="">23</li><li style="width:40px;height:40px;line-height:40px" class="" data-calendar-day="">24</li><li style="width:40px;height:40px;line-height:40px" class="" data-calendar-day="">25</li><li style="width:40px;height:40px;line-height:40px" class="" data-calendar-day="">26</li><li style="width:40px;height:40px;line-height:40px" class="" data-calendar-day="">27</li><li style="width:40px;height:40px;line-height:40px" class="" data-calendar-day="">28</li><li style="width:40px;height:40px;line-height:40px" class="" data-calendar-day="">29</li><li style="width:40px;height:40px;line-height:40px" class="" data-calendar-day="">30</li><li style="width:40px;height:40px;line-height:40px" class="" data-calendar-day="">31</li><li style="width:40px;height:40px;line-height:40px" class="new" data-calendar-day="">1</li><li style="width:40px;height:40px;line-height:40px" class="new" data-calendar-day="">2</li><li style="width:40px;height:40px;line-height:40px" class="new" data-calendar-day="">3</li><li style="width:40px;height:40px;line-height:40px" class="new" data-calendar-day="">4</li><li style="width:40px;height:40px;line-height:40px" class="new" data-calendar-day="">5</li><li style="width:40px;height:40px;line-height:40px" class="new" data-calendar-day="">6</li><li style="width:40px;height:40px;line-height:40px" class="new" data-calendar-day="">7</li><li style="width:40px;height:40px;line-height:40px" class="new" data-calendar-day="">8</li><li style="width:40px;height:40px;line-height:40px" class="new" data-calendar-day="">9</li></ol></li></ul></div></div><div class="view view-month" style="width: 280px;"><div class="calendar-hd"><a href="javascript:;" data-calendar-display-month="" class="calendar-display">2018</a><div class="calendar-arrow"><span class="prev" title="上一年" data-calendar-arrow-month="">&lt;</span><span class="next" title="下一年" data-calendar-arrow-month="">&gt;</span></div></div><ol class="calendar-ct month-items" style="width: 280px; height: 280px;"><li style="width:70px;height:70px;line-height:70px" data-calendar-month="">1月</li><li style="width:70px;height:70px;line-height:70px" data-calendar-month="">2月</li><li style="width:70px;height:70px;line-height:70px" data-calendar-month="">3月</li><li style="width:70px;height:70px;line-height:70px" data-calendar-month="" class="now">4月</li><li style="width:70px;height:70px;line-height:70px" data-calendar-month="">5月</li><li style="width:70px;height:70px;line-height:70px" data-calendar-month="">6月</li><li style="width:70px;height:70px;line-height:70px" data-calendar-month="">7月</li><li style="width:70px;height:70px;line-height:70px" data-calendar-month="">8月</li><li style="width:70px;height:70px;line-height:70px" data-calendar-month="">9月</li><li style="width:70px;height:70px;line-height:70px" data-calendar-month="">10月</li><li style="width:70px;height:70px;line-height:70px" data-calendar-month="">11月</li><li style="width:70px;height:70px;line-height:70px" data-calendar-month="">12月</li></ol></div></div></div><div class="calendar-label"><p>HelloWorld</p><i></i></div></div>
  										<span id="sampling_time" class="err"></span>
									</li>
									<li>
										<lable>取样人</lable>
										<input type="" placeholder="请输入取样人姓名" name="sampling_people" id="" value="${sampleinfos[0].samplingPeople}">
										<span id="sampling_people"></span>
									</li>
									<li class="jijie">
										<lable>采集季节及气候特征</lable>
										<textarea name="seasonal" id="seasonal1"  rows="${sampleinfos[0].seasonal}" cols="" ></textarea>	
										<span id="seasonal"></span>
									</li>
									<li class="huanjing">
										<lable>采集地、环境信息描述</lable>
										<textarea name="description" id="description1" rows="${sampleinfos[0].description}" cols="" ></textarea>
										<span id="description"></span>
									</li>
									<li>
										<lable>真菌污染率</lable>
										<input type="" name="pollution_rate" id="" value="${sampleinfos[0].pollutionRate}">
										<span id="pollution_rate"></span>
									</li>
								</ul>
							</div>
						</li>
						<div class="addds">
						<c:forEach items="${sampletoxins}" var="sampletoxins">
						<li class="edittable-middle">
						<div class="editmiddle-left">毒素信息</div>
						<div class="editmiddle-right">
						<ul>
						<li><lable>毒素种类</lable>
						<select name="toxinid" class="toxin_id1" onblur="checktoxin_id()">
						<c:forEach items="${toxininfo}" var="toxininfo">
						<c:if test="${sampletoxins.toxinId==toxininfo.id}">
						<option value="${sampletoxins.toxinId}" selected="selected" >${toxininfo.toxinType}</option>
						</c:if>
						<c:if test="${sampletoxins.toxinId!=toxininfo.id}">
						<option value="${toxininfo.id}">${toxininfo.toxinType}</option>
						</c:if>
						</c:forEach>
						</select><span id="toxin_id" ></span></li>
						<li><lable>毒素含量</lable>
						<input name="toxincount" id="toxincount" value="${sampletoxins.toxinCount}" class="toxincount" type="text"  onblur="checktoxin_count()"  maxlength="10" placeholder="毒素含量最大可输入十位"/>
						<span id="toxin_count" ></span></li><li><a class="del">删除</a></li></ul></div></li>
						</c:forEach>
						</div>
						<div class="add-dsxx">+添加毒素信息</div>
						<div class="add-con">
						<c:forEach items="${bacterialstraininfos}" var="bacterialstraininfos">
						<li class="edittable-bottom">
						<div class="editbottom-left">产毒菌株信息</div>
						<div class='editbottom-right'>
						<ul><li>
						<lable>样品编号</lable>
						<input id="originaId" name="originaId" type="hidden" class="sample" readonly="readonly" value="${bacterialstraininfos.id}"/>
						<input id="samplenum" name="samplenum"type="text" class="sample" readonly="readonly" value="${bacterialstraininfos.sampleNum}"/>
						</li><li>
						<lable>菌株原始编号</lable>
						<input class='num' id='originalnum' name='originalnum' type='text' value="${bacterialstraininfos.originalNum}" />
						<span class='err'></span></li><li class='form-a'>
						<lable>文献信息</lable><a class='xz-btn-a'>选择文件</a> 
						<input type='text' name='docadd' id='' value='${bacterialstraininfos.wordAddr}' class='file-name-a'  readonly='readonly' placeholder='仅支持doc/docx格式文档'/><input  onchange='getPhotoSizes(this)' name='wordaddr' type='file' class='file-info-a' accept='.doc,.docx'/></li><li class='form-c'>
						<lable>文本信息</lable><a class='xz-btn-c'>选择文件</a> 
						<input   type='text' name='txtadd' id='' value='${bacterialstraininfos.txtAddr}' class='file-name-c'  readonly='readonly' placeholder='仅支持txt格式'/><input onchange='getTextSize(this)' name='txtaddr' type='file' class='file-info-c' accept='.txt'/></li><li class='form-b'>
						<lable>图片信息</lable><a class='xz-btn-b'>选择文件</a> 
						<input type='text' name='imgadd' id='' value='${bacterialstraininfos.pictureAddr}' class='file-name-b'  readonly='readonly' placeholder='仅支持jpg/png格式'/><input onchange='getPhotoSize(this)' name='pictureaddr' type='file' class='file-info-b' accept='.png,.jpg,.jpeg'/>
						</li><li><a class='del'>删除</a></li></ul></div></li>
						</c:forEach>
						</div>
					</ul>
					<div class="add-ds">+添加产毒菌株信息</div>
					<div class="footer">
						<a onclick="sub()" class="baocun">修改</a>
						<a onclick="history.go(-1)" class="marginl">返回</a>
					</div>
					<div class="footer1"> </div>
				</div>
			</form>	
			</div>
		</div>	
	
	

	<script type="text/javascript" src="../../app/js/linkage5.js"></script>
	
<script type="text/javascript">
//添加毒素信息
/*   $(".add-dsxx").click(function(){
	$('.addds').append('<li class="edittable-middle"><div class="editmiddle-left">毒素信息</div><div class="editmiddle-right"><ul><li><lable>毒素种类</lable><select name="toxinid" class="toxin_id1" onblur="checktoxin_id()"><option value="0" >请选择</option></select><span id="toxin_id" ></span></li><li><lable>毒素含量</lable><input name="toxincount" id="toxincount" class="toxincount" type="text"  onblur="checktoxin_count()"  maxlength="10" placeholder="毒素含量最大可输入十位"/><span id="toxin_count" ></span></li><li><a class="del">删除</a></li></ul></div></li>')
	var j=$(".edittable-middle");
	$.ajax({
		url:"selectAlltoininfo",
		type:"post",
		dataType:"json",
		success:function(res){
			j.find('select').empty();
			for(var i=0;i<res.length;i++){
			j.find('select').append('<option value='+res[i].id+'>'+res[i].toxinType+'</option>');
			}
		}
	});
}); */

//谷物类变化
$(document).ready(function(){
	var a=document.getElementById("cptype").value;
	var b=${sampleinfos[0].breed};
	$.ajax({
		url:"selectspeciesBycateID",
		data:{"cateId":a},
		success:function(data){
			$("#cptypess").empty();
			for(var i=0;i<data.length;i++){
				if(data[i].id==b){
					$("#cptypess").append("<option class='selec'"+"value="+data[i].id+"selected"+">"+data[i].cropSpecies+"</option>")
				}/* else if(data[i].id!=b){
					$("#cptypess").append("<option class="+"selec"+"value="+data[i].id+">"+data[i].cropSpecies+"</option>")
				} */
			}
			for(var i=0;i<data.length;i++){
					$("#cptypess").append("<option class="+"selec"+"value="+data[i].id+">"+data[i].cropSpecies+"</option>")
			}
		}
	})
})
 function cptypes(){
	var a=document.getElementById("cptype").value;
	$.ajax({
		url:"selectspeciesBycateID",
		data:{"cateId":a},
		success:data
	})
	function data(data){
		$("#cptypess").empty();
		for(var i=0;i<data.length;i++){
				$("#cptypess").append("<option class="+"selec"+"value="+data[i].id+"selected='selected'"+">"+data[i].cropSpecies+"</option>")
		}
	}
} 

</script>
<script type="text/javascript">
//城市变化
$(document).ready(function(){
	var c=${townaddressList[0].code};
	var b=${addresscities2[0].code};
	$.ajax({
		url:"selectxianBycityCode",
		data:{"cityId":b},
		success:function(data){
			$("#xian").empty();
			for(var i=0;i<data.length;i++){
				if(data[i].code==c){
				$("#xian").append("<option value="+data[i].code+"selected='selected'"+"class='xiande'"+">"+data[i].name+"</option>");
				}
			}
			for(var i=0;i<data.length;i++){
				$("#xian").append("<option value="+data[i].code+"class='xiande'"+">"+data[i].name+"</option>");
			}
		}
	}) 
})
$(document).ready(function(){
	var a=document.getElementById("shen").value;
	var b=${addresscities2[0].code};
	$.ajax({
		url:"selectcityByprivinceCode",
		data:{"shengId":a},
		success:function(data){
			$("#shi").empty();
			for(var i=0;i<data.length;i++){
				if(data[i].code==b){
					$("#shi").append("<option class='shide'"+"value="+data[i].code+"selected='selected'"+">"+data[i].name+"</option>")
				}
				/* if(data[i].code!=b){
				 	 $("#shi").append("<option class="+"selec"+"value="+data[i].code+">"+data[i].name+"</option>")  
				} */
				}
			for(var i=0;i<data.length;i++){
				 	 $("#shi").append("<option class='shide'"+"value="+data[i].code+">"+data[i].name+"</option>")  
				}
		}
	})
	 
})
  function changeShi(){
	var a=$("#shi option:selected").val(); 
	$.ajax({
		url:"selectxianBycityCode",
		data:{"cityId":a},
		success:function(data){
			$("#xian").empty();
			for(var i=0;i<data.length;i++){
				$("#xian").append("<option value="+data[i].code+"selected='selected'"+"class='xiande'"+">"+data[i].name+"</option>");
			}
		}
	}) 
}
  function changesheng(){
	var a=document.getElementById("shen").value;
	$.ajax({
		url:"selectcityByprivinceCode",
		data:{"shengId":a},
		success:data
	})
	function data(data){
		$("#shi").empty();
		for(var i=0;i<data.length;i++){
				$("#shi").append("<option class='shide'"+"value="+data[i].code+"selected='selected'"+">"+data[i].name+"</option>")
		}
	}
}  

</script>
<script type="text/javascript">
function sub(){
	$.ajax({
		url:"",
		data:$("#search_form").serialize(),
		success:data
	})
	function data(data){
		
	}
}
</script>
</html>
