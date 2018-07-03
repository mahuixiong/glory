<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    <%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
 	<meta charset="UTF-8">
  <title>信息管理</title>
    
	<meta http-equiv="pragma" content="no-cache">
	<meta http-equiv="cache-control" content="no-cache">
	<meta http-equiv="expires" content="0">    
	<meta http-equiv="keywords" content="keyword1,keyword2,keyword3">
	<meta http-equiv="description" content="This is my page">
	
		<link rel="stylesheet" type="text/css" href="../../app/css/reset.css"/>
		<link rel="stylesheet" type="text/css" href="../../app/css/addIM.css"/>
		<link rel="stylesheet" type="text/css" href="../../app/css/calendar.css"/>
		<script src="../../app/js/jquery.js"></script>
		
		
		
		

		<script src="../../app/js/calendar.js"></script>
		<script src="../../app/js/addIM.js"></script>
		<script src="../../app/js/checkAddIM.js"></script>
  </head>
 <body data-genuitec-lp-enabled="false" data-genuitec-file-id="wc1-13" data-genuitec-path="/glory/src/main/webapp/WEB-INF/views/addIM.jsp" class="" style="height: 310px; width: 1126px;">
		<div class="contaner" data-genuitec-lp-enabled="false" data-genuitec-file-id="wc1-13" data-genuitec-path="/glory/src/main/webapp/WEB-INF/views/addIM.jsp">
			
			<div class="im-content">
				<div class="im-heade">
					<div class="imhead-title">当前页面：<a>新增信息</a></div>
				</div>
		<form  id="search_form" enctype="multipart/form-data" method="post" accept-charset="utf-8">		
				<div class="editim-table">
				
					<ul class="table-con">
						<li class="edittable-top">
							<div class="edittable-left">采样信息</div>
							<div class="edittable-right">
								<ul>
								
									<li>
										<lable>样品编号</lable>
										<input type="" class="ypbh" id="sampleid" name="sampleid" placeholder="首字母英文，长度为5-50位" id="sampleid" value="" maxlength="50">
										<span id="sample_id" class="ypbhxianshi"></span>
									</li>
									
									<li>
										<lable>农产品加工原料类别</lable>
										<select class="sel"  name="cropcategoryid" id="cptype" onchange="selectbreed()">
												<option value="0">请选择</option>
									      		<c:forEach items="${category}" var="category">			                        
						                        <option value="${category.id}">${category.cropCategory}</option>				
									      		</c:forEach>							                        
						                        			
									      	
										</select>
										<span id="crop_category_id"></span>
									</li>
									<li>
										<lable>品种</lable>
										<select class="sel" name="breed" id="cptypess">
											<option class="cpzl" value="">请选择</option>
										</select>
										<span id="breed"></span>
									</li>
									
									<li>
										
										 <span class="width">
									  <lable>地点</lable>
							  <input type="hidden" value="" id="shengs">
							  <input type="hidden" value="" id="shisss">
							  <input type="hidden" value="" id="xiansss">
							  <input type="hidden" value="" name="province" id="provinces">
							  <input type="hidden" value="" name="city" id="city">
							  <input type="hidden" value="" name="county" id="county">
							   <input type="hidden" value="123" id="wsx">
	                             <select onblur="checkprovince()" class="province" name="sheng" id="sheng" onchange="selectshi()">
							        <option value="0">请选择</option>
							       
				        		<option value="110000">北京</option><option value="120000">天津</option><option value="130000">河北</option><option value="140000">山西</option><option value="150000">内蒙古</option><option value="210000">辽宁</option><option value="220000">吉林</option><option value="230000">黑龙江</option><option value="310000">上海</option><option value="320000">江苏</option><option value="330000">浙江</option><option value="340000">安徽</option><option value="350000">福建</option><option value="360000">江西</option><option value="370000">山东</option><option value="410000">河南</option><option value="420000">湖北</option><option value="430000">湖南</option><option value="440000">广东</option><option value="450000">广西</option><option value="460000">海南</option><option value="500000">重庆</option><option value="510000">四川</option><option value="520000">贵州</option><option value="530000">云南</option><option value="540000">西藏</option><option value="610000">陕西</option><option value="620000">甘肃</option><option value="630000">青海</option><option value="640000">宁夏</option><option value="650000">新疆</option><option value="710000">台湾</option><option value="810000">香港</option><option value="820000">澳门</option></select><span>省</span>
				        		<select class="city" id="shi" name="shi" onblur="checkprovince()" onchange="selectxian()">
				        		</select><span>市</span>
				        		<select class="county" onblur="checkprovince()" name="xian" id="xian">
				        		</select><span>县</span>
										 </span>
										 <span class="xc">
											<input maxlength="15" type="" placeholder="可为空" name="township" id="xiang" value="" style="width: 81px;">
											<span>乡</span>
											<input maxlength="15" type="" placeholder="可为空" name="village" id="cun" value="" style="width: 81px;">
											<span>村</span>
											<input maxlength="15" type="" placeholder="可为空" name="household" id="hu" value="" style="width: 81px;">
											<span>户</span>
										</span>
										<span id="province"></span>
									</li>
									
									<li>
										<lable>收获时间</lable>
										<input type="" name="harvesttime" id="dt" value="" readonly="readonly" placeholder="选择日期">
										<div id="dd" class="calendar calendar-modal calendar-d" style="width: 280px; height: 330px; left: 499.641px; top: 351px; z-index: 999; display: none;"><div class="calendar-inner" style="width: 280px;"><div class="calendar-views"><div class="view view-date" style="width: 280px;"><div class="calendar-hd"><a href="javascript:;" data-calendar-display-date="" class="calendar-display">2018/<span class="m">4</span></a><div class="calendar-arrow"><span class="prev" title="上一月" data-calendar-arrow-date="">&lt;</span><span class="next" title="下一月" data-calendar-arrow-date="">&gt;</span></div></div><div class="calendar-ct" style="width: 280px; height: 280px;"><ol class="week"><li style="width:40px;height:40px;line-height:40px">日</li><li style="width:40px;height:40px;line-height:40px">一</li><li style="width:40px;height:40px;line-height:40px">二</li><li style="width:40px;height:40px;line-height:40px">三</li><li style="width:40px;height:40px;line-height:40px">四</li><li style="width:40px;height:40px;line-height:40px">五</li><li style="width:40px;height:40px;line-height:40px">六</li></ol><ul class="date-items"><li style="width: 280px;"><ol class="days"><li style="width:40px;height:40px;line-height:40px" class="old" data-calendar-day="">25</li><li style="width:40px;height:40px;line-height:40px" class="old" data-calendar-day="">26</li><li style="width:40px;height:40px;line-height:40px" class="old" data-calendar-day="">27</li><li style="width:40px;height:40px;line-height:40px" class="old" data-calendar-day="">28</li><li style="width:40px;height:40px;line-height:40px" class="" data-calendar-day="">1</li><li style="width:40px;height:40px;line-height:40px" class="" data-calendar-day="">2</li><li style="width:40px;height:40px;line-height:40px" class="" data-calendar-day="">3</li><li style="width:40px;height:40px;line-height:40px" class="" data-calendar-day="">4</li><li style="width:40px;height:40px;line-height:40px" class="" data-calendar-day="">5</li><li style="width:40px;height:40px;line-height:40px" class="" data-calendar-day="">6</li><li style="width:40px;height:40px;line-height:40px" class="" data-calendar-day="">7</li><li style="width:40px;height:40px;line-height:40px" class="" data-calendar-day="">8</li><li style="width:40px;height:40px;line-height:40px" class="" data-calendar-day="">9</li><li style="width:40px;height:40px;line-height:40px" class="" data-calendar-day="">10</li><li style="width:40px;height:40px;line-height:40px" class="" data-calendar-day="">11</li><li style="width:40px;height:40px;line-height:40px" class="" data-calendar-day="">12</li><li style="width:40px;height:40px;line-height:40px" class="" data-calendar-day="">13</li><li style="width:40px;height:40px;line-height:40px" class="" data-calendar-day="">14</li><li style="width:40px;height:40px;line-height:40px" class="" data-calendar-day="">15</li><li style="width:40px;height:40px;line-height:40px" class="" data-calendar-day="">16</li><li style="width:40px;height:40px;line-height:40px" class="" data-calendar-day="">17</li><li style="width:40px;height:40px;line-height:40px" class="" data-calendar-day="">18</li><li style="width:40px;height:40px;line-height:40px" class="" data-calendar-day="">19</li><li style="width:40px;height:40px;line-height:40px" class="" data-calendar-day="">20</li><li style="width:40px;height:40px;line-height:40px" class="" data-calendar-day="">21</li><li style="width:40px;height:40px;line-height:40px" class="" data-calendar-day="">22</li><li style="width:40px;height:40px;line-height:40px" class="" data-calendar-day="">23</li><li style="width:40px;height:40px;line-height:40px" class="" data-calendar-day="">24</li><li style="width:40px;height:40px;line-height:40px" class="" data-calendar-day="">25</li><li style="width:40px;height:40px;line-height:40px" class="" data-calendar-day="">26</li><li style="width:40px;height:40px;line-height:40px" class="" data-calendar-day="">27</li><li style="width:40px;height:40px;line-height:40px" class="" data-calendar-day="">28</li><li style="width:40px;height:40px;line-height:40px" class="" data-calendar-day="">29</li><li style="width:40px;height:40px;line-height:40px" class="" data-calendar-day="">30</li><li style="width:40px;height:40px;line-height:40px" class="" data-calendar-day="">31</li><li style="width:40px;height:40px;line-height:40px" class="new" data-calendar-day="">1</li><li style="width:40px;height:40px;line-height:40px" class="new" data-calendar-day="">2</li><li style="width:40px;height:40px;line-height:40px" class="new" data-calendar-day="">3</li><li style="width:40px;height:40px;line-height:40px" class="new" data-calendar-day="">4</li><li style="width:40px;height:40px;line-height:40px" class="new" data-calendar-day="">5</li><li style="width:40px;height:40px;line-height:40px" class="new" data-calendar-day="">6</li><li style="width:40px;height:40px;line-height:40px" class="new" data-calendar-day="">7</li></ol></li><li style="width: 280px;"><ol class="days"><li style="width:40px;height:40px;line-height:40px" class="old" data-calendar-day="">25</li><li style="width:40px;height:40px;line-height:40px" class="old" data-calendar-day="">26</li><li style="width:40px;height:40px;line-height:40px" class="old" data-calendar-day="">27</li><li style="width:40px;height:40px;line-height:40px" class="old" data-calendar-day="">28</li><li style="width:40px;height:40px;line-height:40px" class="old" data-calendar-day="">29</li><li style="width:40px;height:40px;line-height:40px" class="old" data-calendar-day="">30</li><li style="width:40px;height:40px;line-height:40px" class="old" data-calendar-day="">31</li><li style="width:40px;height:40px;line-height:40px" class="" data-calendar-day="">1</li><li style="width:40px;height:40px;line-height:40px" class="" data-calendar-day="">2</li><li style="width:40px;height:40px;line-height:40px" class="" data-calendar-day="">3</li><li style="width:40px;height:40px;line-height:40px" class="" data-calendar-day="">4</li><li style="width:40px;height:40px;line-height:40px" class="" data-calendar-day="">5</li><li style="width:40px;height:40px;line-height:40px" class="" data-calendar-day="">6</li><li style="width:40px;height:40px;line-height:40px" class="" data-calendar-day="">7</li><li style="width:40px;height:40px;line-height:40px" class="" data-calendar-day="">8</li><li style="width:40px;height:40px;line-height:40px" class="" data-calendar-day="">9</li><li style="width:40px;height:40px;line-height:40px" class=" now" data-calendar-day="">10</li><li style="width:40px;height:40px;line-height:40px" class="" data-calendar-day="">11</li><li style="width:40px;height:40px;line-height:40px" class="" data-calendar-day="">12</li><li style="width:40px;height:40px;line-height:40px" class="" data-calendar-day="">13</li><li style="width:40px;height:40px;line-height:40px" class="" data-calendar-day="">14</li><li style="width:40px;height:40px;line-height:40px" class="" data-calendar-day="">15</li><li style="width:40px;height:40px;line-height:40px" class="" data-calendar-day="">16</li><li style="width:40px;height:40px;line-height:40px" class="" data-calendar-day="">17</li><li style="width:40px;height:40px;line-height:40px" class="" data-calendar-day="">18</li><li style="width:40px;height:40px;line-height:40px" class="" data-calendar-day="">19</li><li style="width:40px;height:40px;line-height:40px" class="" data-calendar-day="">20</li><li style="width:40px;height:40px;line-height:40px" class="" data-calendar-day="">21</li><li style="width:40px;height:40px;line-height:40px" class="" data-calendar-day="">22</li><li style="width:40px;height:40px;line-height:40px" class="" data-calendar-day="">23</li><li style="width:40px;height:40px;line-height:40px" class="" data-calendar-day="">24</li><li style="width:40px;height:40px;line-height:40px" class="" data-calendar-day="">25</li><li style="width:40px;height:40px;line-height:40px" class="" data-calendar-day="">26</li><li style="width:40px;height:40px;line-height:40px" class="" data-calendar-day="">27</li><li style="width:40px;height:40px;line-height:40px" class="" data-calendar-day="">28</li><li style="width:40px;height:40px;line-height:40px" class="" data-calendar-day="">29</li><li style="width:40px;height:40px;line-height:40px" class="" data-calendar-day="">30</li><li style="width:40px;height:40px;line-height:40px" class="new" data-calendar-day="">1</li><li style="width:40px;height:40px;line-height:40px" class="new" data-calendar-day="">2</li><li style="width:40px;height:40px;line-height:40px" class="new" data-calendar-day="">3</li><li style="width:40px;height:40px;line-height:40px" class="new" data-calendar-day="">4</li><li style="width:40px;height:40px;line-height:40px" class="new" data-calendar-day="">5</li></ol></li><li style="width: 280px;"><ol class="days"><li style="width:40px;height:40px;line-height:40px" class="old" data-calendar-day="">29</li><li style="width:40px;height:40px;line-height:40px" class="old" data-calendar-day="">30</li><li style="width:40px;height:40px;line-height:40px" class="" data-calendar-day="">1</li><li style="width:40px;height:40px;line-height:40px" class="" data-calendar-day="">2</li><li style="width:40px;height:40px;line-height:40px" class="" data-calendar-day="">3</li><li style="width:40px;height:40px;line-height:40px" class="" data-calendar-day="">4</li><li style="width:40px;height:40px;line-height:40px" class="" data-calendar-day="">5</li><li style="width:40px;height:40px;line-height:40px" class="" data-calendar-day="">6</li><li style="width:40px;height:40px;line-height:40px" class="" data-calendar-day="">7</li><li style="width:40px;height:40px;line-height:40px" class="" data-calendar-day="">8</li><li style="width:40px;height:40px;line-height:40px" class="" data-calendar-day="">9</li><li style="width:40px;height:40px;line-height:40px" class="" data-calendar-day="">10</li><li style="width:40px;height:40px;line-height:40px" class="" data-calendar-day="">11</li><li style="width:40px;height:40px;line-height:40px" class="" data-calendar-day="">12</li><li style="width:40px;height:40px;line-height:40px" class="" data-calendar-day="">13</li><li style="width:40px;height:40px;line-height:40px" class="" data-calendar-day="">14</li><li style="width:40px;height:40px;line-height:40px" class="" data-calendar-day="">15</li><li style="width:40px;height:40px;line-height:40px" class="" data-calendar-day="">16</li><li style="width:40px;height:40px;line-height:40px" class="" data-calendar-day="">17</li><li style="width:40px;height:40px;line-height:40px" class="" data-calendar-day="">18</li><li style="width:40px;height:40px;line-height:40px" class="" data-calendar-day="">19</li><li style="width:40px;height:40px;line-height:40px" class="" data-calendar-day="">20</li><li style="width:40px;height:40px;line-height:40px" class="" data-calendar-day="">21</li><li style="width:40px;height:40px;line-height:40px" class="" data-calendar-day="">22</li><li style="width:40px;height:40px;line-height:40px" class="" data-calendar-day="">23</li><li style="width:40px;height:40px;line-height:40px" class="" data-calendar-day="">24</li><li style="width:40px;height:40px;line-height:40px" class="" data-calendar-day="">25</li><li style="width:40px;height:40px;line-height:40px" class="" data-calendar-day="">26</li><li style="width:40px;height:40px;line-height:40px" class="" data-calendar-day="">27</li><li style="width:40px;height:40px;line-height:40px" class="" data-calendar-day="">28</li><li style="width:40px;height:40px;line-height:40px" class="" data-calendar-day="">29</li><li style="width:40px;height:40px;line-height:40px" class="" data-calendar-day="">30</li><li style="width:40px;height:40px;line-height:40px" class="" data-calendar-day="">31</li><li style="width:40px;height:40px;line-height:40px" class="new" data-calendar-day="">1</li><li style="width:40px;height:40px;line-height:40px" class="new" data-calendar-day="">2</li><li style="width:40px;height:40px;line-height:40px" class="new" data-calendar-day="">3</li><li style="width:40px;height:40px;line-height:40px" class="new" data-calendar-day="">4</li><li style="width:40px;height:40px;line-height:40px" class="new" data-calendar-day="">5</li><li style="width:40px;height:40px;line-height:40px" class="new" data-calendar-day="">6</li><li style="width:40px;height:40px;line-height:40px" class="new" data-calendar-day="">7</li><li style="width:40px;height:40px;line-height:40px" class="new" data-calendar-day="">8</li><li style="width:40px;height:40px;line-height:40px" class="new" data-calendar-day="">9</li></ol></li></ul></div></div><div class="view view-month" style="width: 280px;"><div class="calendar-hd"><a href="javascript:;" data-calendar-display-month="" class="calendar-display">2018</a><div class="calendar-arrow"><span class="prev" title="上一年" data-calendar-arrow-month="">&lt;</span><span class="next" title="下一年" data-calendar-arrow-month="">&gt;</span></div></div><ol class="calendar-ct month-items" style="width: 280px; height: 280px;"><li style="width:70px;height:70px;line-height:70px" data-calendar-month="">1月</li><li style="width:70px;height:70px;line-height:70px" data-calendar-month="">2月</li><li style="width:70px;height:70px;line-height:70px" data-calendar-month="">3月</li><li style="width:70px;height:70px;line-height:70px" data-calendar-month="" class="now">4月</li><li style="width:70px;height:70px;line-height:70px" data-calendar-month="">5月</li><li style="width:70px;height:70px;line-height:70px" data-calendar-month="">6月</li><li style="width:70px;height:70px;line-height:70px" data-calendar-month="">7月</li><li style="width:70px;height:70px;line-height:70px" data-calendar-month="">8月</li><li style="width:70px;height:70px;line-height:70px" data-calendar-month="">9月</li><li style="width:70px;height:70px;line-height:70px" data-calendar-month="">10月</li><li style="width:70px;height:70px;line-height:70px" data-calendar-month="">11月</li><li style="width:70px;height:70px;line-height:70px" data-calendar-month="">12月</li></ol></div></div></div><div class="calendar-label"><p>HelloWorld</p><i></i></div></div>
										<span class="err"></span>
									</li>
									<!-- onblur="checksampling_time()" -->
									<li>
										<lable>取样时间</lable>
										<input type="" name="samplingtime" id="dt-b" value="" readonly="readonly" placeholder="选择日期">
										<div id="dd-b" class="calendar calendar-modal calendar-d" style="width: 280px; height: 330px; left: 499.641px; top: 393px; z-index: 999; display: none;"><div class="calendar-inner" style="width: 280px;"><div class="calendar-views"><div class="view view-date" style="width: 280px;"><div class="calendar-hd"><a href="javascript:;" data-calendar-display-date="" class="calendar-display">2018/<span class="m">4</span></a><div class="calendar-arrow"><span class="prev" title="上一月" data-calendar-arrow-date="">&lt;</span><span class="next" title="下一月" data-calendar-arrow-date="">&gt;</span></div></div><div class="calendar-ct" style="width: 280px; height: 280px;"><ol class="week"><li style="width:40px;height:40px;line-height:40px">日</li><li style="width:40px;height:40px;line-height:40px">一</li><li style="width:40px;height:40px;line-height:40px">二</li><li style="width:40px;height:40px;line-height:40px">三</li><li style="width:40px;height:40px;line-height:40px">四</li><li style="width:40px;height:40px;line-height:40px">五</li><li style="width:40px;height:40px;line-height:40px">六</li></ol><ul class="date-items"><li style="width: 280px;"><ol class="days"><li style="width:40px;height:40px;line-height:40px" class="old" data-calendar-day="">25</li><li style="width:40px;height:40px;line-height:40px" class="old" data-calendar-day="">26</li><li style="width:40px;height:40px;line-height:40px" class="old" data-calendar-day="">27</li><li style="width:40px;height:40px;line-height:40px" class="old" data-calendar-day="">28</li><li style="width:40px;height:40px;line-height:40px" class="" data-calendar-day="">1</li><li style="width:40px;height:40px;line-height:40px" class="" data-calendar-day="">2</li><li style="width:40px;height:40px;line-height:40px" class="" data-calendar-day="">3</li><li style="width:40px;height:40px;line-height:40px" class="" data-calendar-day="">4</li><li style="width:40px;height:40px;line-height:40px" class="" data-calendar-day="">5</li><li style="width:40px;height:40px;line-height:40px" class="" data-calendar-day="">6</li><li style="width:40px;height:40px;line-height:40px" class="" data-calendar-day="">7</li><li style="width:40px;height:40px;line-height:40px" class="" data-calendar-day="">8</li><li style="width:40px;height:40px;line-height:40px" class="" data-calendar-day="">9</li><li style="width:40px;height:40px;line-height:40px" class="" data-calendar-day="">10</li><li style="width:40px;height:40px;line-height:40px" class="" data-calendar-day="">11</li><li style="width:40px;height:40px;line-height:40px" class="" data-calendar-day="">12</li><li style="width:40px;height:40px;line-height:40px" class="" data-calendar-day="">13</li><li style="width:40px;height:40px;line-height:40px" class="" data-calendar-day="">14</li><li style="width:40px;height:40px;line-height:40px" class="" data-calendar-day="">15</li><li style="width:40px;height:40px;line-height:40px" class="" data-calendar-day="">16</li><li style="width:40px;height:40px;line-height:40px" class="" data-calendar-day="">17</li><li style="width:40px;height:40px;line-height:40px" class="" data-calendar-day="">18</li><li style="width:40px;height:40px;line-height:40px" class="" data-calendar-day="">19</li><li style="width:40px;height:40px;line-height:40px" class="" data-calendar-day="">20</li><li style="width:40px;height:40px;line-height:40px" class="" data-calendar-day="">21</li><li style="width:40px;height:40px;line-height:40px" class="" data-calendar-day="">22</li><li style="width:40px;height:40px;line-height:40px" class="" data-calendar-day="">23</li><li style="width:40px;height:40px;line-height:40px" class="" data-calendar-day="">24</li><li style="width:40px;height:40px;line-height:40px" class="" data-calendar-day="">25</li><li style="width:40px;height:40px;line-height:40px" class="" data-calendar-day="">26</li><li style="width:40px;height:40px;line-height:40px" class="" data-calendar-day="">27</li><li style="width:40px;height:40px;line-height:40px" class="" data-calendar-day="">28</li><li style="width:40px;height:40px;line-height:40px" class="" data-calendar-day="">29</li><li style="width:40px;height:40px;line-height:40px" class="" data-calendar-day="">30</li><li style="width:40px;height:40px;line-height:40px" class="" data-calendar-day="">31</li><li style="width:40px;height:40px;line-height:40px" class="new" data-calendar-day="">1</li><li style="width:40px;height:40px;line-height:40px" class="new" data-calendar-day="">2</li><li style="width:40px;height:40px;line-height:40px" class="new" data-calendar-day="">3</li><li style="width:40px;height:40px;line-height:40px" class="new" data-calendar-day="">4</li><li style="width:40px;height:40px;line-height:40px" class="new" data-calendar-day="">5</li><li style="width:40px;height:40px;line-height:40px" class="new" data-calendar-day="">6</li><li style="width:40px;height:40px;line-height:40px" class="new" data-calendar-day="">7</li></ol></li><li style="width: 280px;"><ol class="days"><li style="width:40px;height:40px;line-height:40px" class="old" data-calendar-day="">25</li><li style="width:40px;height:40px;line-height:40px" class="old" data-calendar-day="">26</li><li style="width:40px;height:40px;line-height:40px" class="old" data-calendar-day="">27</li><li style="width:40px;height:40px;line-height:40px" class="old" data-calendar-day="">28</li><li style="width:40px;height:40px;line-height:40px" class="old" data-calendar-day="">29</li><li style="width:40px;height:40px;line-height:40px" class="old" data-calendar-day="">30</li><li style="width:40px;height:40px;line-height:40px" class="old" data-calendar-day="">31</li><li style="width:40px;height:40px;line-height:40px" class="" data-calendar-day="">1</li><li style="width:40px;height:40px;line-height:40px" class="" data-calendar-day="">2</li><li style="width:40px;height:40px;line-height:40px" class="" data-calendar-day="">3</li><li style="width:40px;height:40px;line-height:40px" class="" data-calendar-day="">4</li><li style="width:40px;height:40px;line-height:40px" class="" data-calendar-day="">5</li><li style="width:40px;height:40px;line-height:40px" class="" data-calendar-day="">6</li><li style="width:40px;height:40px;line-height:40px" class="" data-calendar-day="">7</li><li style="width:40px;height:40px;line-height:40px" class="" data-calendar-day="">8</li><li style="width:40px;height:40px;line-height:40px" class="" data-calendar-day="">9</li><li style="width:40px;height:40px;line-height:40px" class=" now" data-calendar-day="">10</li><li style="width:40px;height:40px;line-height:40px" class="" data-calendar-day="">11</li><li style="width:40px;height:40px;line-height:40px" class="" data-calendar-day="">12</li><li style="width:40px;height:40px;line-height:40px" class="" data-calendar-day="">13</li><li style="width:40px;height:40px;line-height:40px" class="" data-calendar-day="">14</li><li style="width:40px;height:40px;line-height:40px" class="" data-calendar-day="">15</li><li style="width:40px;height:40px;line-height:40px" class="" data-calendar-day="">16</li><li style="width:40px;height:40px;line-height:40px" class="" data-calendar-day="">17</li><li style="width:40px;height:40px;line-height:40px" class="" data-calendar-day="">18</li><li style="width:40px;height:40px;line-height:40px" class="" data-calendar-day="">19</li><li style="width:40px;height:40px;line-height:40px" class="" data-calendar-day="">20</li><li style="width:40px;height:40px;line-height:40px" class="" data-calendar-day="">21</li><li style="width:40px;height:40px;line-height:40px" class="" data-calendar-day="">22</li><li style="width:40px;height:40px;line-height:40px" class="" data-calendar-day="">23</li><li style="width:40px;height:40px;line-height:40px" class="" data-calendar-day="">24</li><li style="width:40px;height:40px;line-height:40px" class="" data-calendar-day="">25</li><li style="width:40px;height:40px;line-height:40px" class="" data-calendar-day="">26</li><li style="width:40px;height:40px;line-height:40px" class="" data-calendar-day="">27</li><li style="width:40px;height:40px;line-height:40px" class="" data-calendar-day="">28</li><li style="width:40px;height:40px;line-height:40px" class="" data-calendar-day="">29</li><li style="width:40px;height:40px;line-height:40px" class="" data-calendar-day="">30</li><li style="width:40px;height:40px;line-height:40px" class="new" data-calendar-day="">1</li><li style="width:40px;height:40px;line-height:40px" class="new" data-calendar-day="">2</li><li style="width:40px;height:40px;line-height:40px" class="new" data-calendar-day="">3</li><li style="width:40px;height:40px;line-height:40px" class="new" data-calendar-day="">4</li><li style="width:40px;height:40px;line-height:40px" class="new" data-calendar-day="">5</li></ol></li><li style="width: 280px;"><ol class="days"><li style="width:40px;height:40px;line-height:40px" class="old" data-calendar-day="">29</li><li style="width:40px;height:40px;line-height:40px" class="old" data-calendar-day="">30</li><li style="width:40px;height:40px;line-height:40px" class="" data-calendar-day="">1</li><li style="width:40px;height:40px;line-height:40px" class="" data-calendar-day="">2</li><li style="width:40px;height:40px;line-height:40px" class="" data-calendar-day="">3</li><li style="width:40px;height:40px;line-height:40px" class="" data-calendar-day="">4</li><li style="width:40px;height:40px;line-height:40px" class="" data-calendar-day="">5</li><li style="width:40px;height:40px;line-height:40px" class="" data-calendar-day="">6</li><li style="width:40px;height:40px;line-height:40px" class="" data-calendar-day="">7</li><li style="width:40px;height:40px;line-height:40px" class="" data-calendar-day="">8</li><li style="width:40px;height:40px;line-height:40px" class="" data-calendar-day="">9</li><li style="width:40px;height:40px;line-height:40px" class="" data-calendar-day="">10</li><li style="width:40px;height:40px;line-height:40px" class="" data-calendar-day="">11</li><li style="width:40px;height:40px;line-height:40px" class="" data-calendar-day="">12</li><li style="width:40px;height:40px;line-height:40px" class="" data-calendar-day="">13</li><li style="width:40px;height:40px;line-height:40px" class="" data-calendar-day="">14</li><li style="width:40px;height:40px;line-height:40px" class="" data-calendar-day="">15</li><li style="width:40px;height:40px;line-height:40px" class="" data-calendar-day="">16</li><li style="width:40px;height:40px;line-height:40px" class="" data-calendar-day="">17</li><li style="width:40px;height:40px;line-height:40px" class="" data-calendar-day="">18</li><li style="width:40px;height:40px;line-height:40px" class="" data-calendar-day="">19</li><li style="width:40px;height:40px;line-height:40px" class="" data-calendar-day="">20</li><li style="width:40px;height:40px;line-height:40px" class="" data-calendar-day="">21</li><li style="width:40px;height:40px;line-height:40px" class="" data-calendar-day="">22</li><li style="width:40px;height:40px;line-height:40px" class="" data-calendar-day="">23</li><li style="width:40px;height:40px;line-height:40px" class="" data-calendar-day="">24</li><li style="width:40px;height:40px;line-height:40px" class="" data-calendar-day="">25</li><li style="width:40px;height:40px;line-height:40px" class="" data-calendar-day="">26</li><li style="width:40px;height:40px;line-height:40px" class="" data-calendar-day="">27</li><li style="width:40px;height:40px;line-height:40px" class="" data-calendar-day="">28</li><li style="width:40px;height:40px;line-height:40px" class="" data-calendar-day="">29</li><li style="width:40px;height:40px;line-height:40px" class="" data-calendar-day="">30</li><li style="width:40px;height:40px;line-height:40px" class="" data-calendar-day="">31</li><li style="width:40px;height:40px;line-height:40px" class="new" data-calendar-day="">1</li><li style="width:40px;height:40px;line-height:40px" class="new" data-calendar-day="">2</li><li style="width:40px;height:40px;line-height:40px" class="new" data-calendar-day="">3</li><li style="width:40px;height:40px;line-height:40px" class="new" data-calendar-day="">4</li><li style="width:40px;height:40px;line-height:40px" class="new" data-calendar-day="">5</li><li style="width:40px;height:40px;line-height:40px" class="new" data-calendar-day="">6</li><li style="width:40px;height:40px;line-height:40px" class="new" data-calendar-day="">7</li><li style="width:40px;height:40px;line-height:40px" class="new" data-calendar-day="">8</li><li style="width:40px;height:40px;line-height:40px" class="new" data-calendar-day="">9</li></ol></li></ul></div></div><div class="view view-month" style="width: 280px;"><div class="calendar-hd"><a href="javascript:;" data-calendar-display-month="" class="calendar-display">2018</a><div class="calendar-arrow"><span class="prev" title="上一年" data-calendar-arrow-month="">&lt;</span><span class="next" title="下一年" data-calendar-arrow-month="">&gt;</span></div></div><ol class="calendar-ct month-items" style="width: 280px; height: 280px;"><li style="width:70px;height:70px;line-height:70px" data-calendar-month="">1月</li><li style="width:70px;height:70px;line-height:70px" data-calendar-month="">2月</li><li style="width:70px;height:70px;line-height:70px" data-calendar-month="">3月</li><li style="width:70px;height:70px;line-height:70px" data-calendar-month="" class="now">4月</li><li style="width:70px;height:70px;line-height:70px" data-calendar-month="">5月</li><li style="width:70px;height:70px;line-height:70px" data-calendar-month="">6月</li><li style="width:70px;height:70px;line-height:70px" data-calendar-month="">7月</li><li style="width:70px;height:70px;line-height:70px" data-calendar-month="">8月</li><li style="width:70px;height:70px;line-height:70px" data-calendar-month="">9月</li><li style="width:70px;height:70px;line-height:70px" data-calendar-month="">10月</li><li style="width:70px;height:70px;line-height:70px" data-calendar-month="">11月</li><li style="width:70px;height:70px;line-height:70px" data-calendar-month="">12月</li></ol></div></div></div><div class="calendar-label"><p>HelloWorld</p><i></i></div></div>
										<span class="err"></span>
									</li>
									
									<li>
										<lable>取样人</lable>
										<input name="quyangren" class="quyangren" id="quyangren" maxlength="15" value="" placeholder="请输入取样人姓名" >
										<span id="sampling_people"></span>
									</li>
									<li class="jijie">
										<lable>采集季节及气候特征</lable>
										<textarea name="seasonal" id="seasonal1" rows="" cols=""></textarea>
										<span id="seasonal"></span>
									</li>
									<li class="huanjing">
										<lable>采集地、环境信息描述</lable>
										<textarea name="description" id="description1" rows="" cols=""></textarea>
										<span id="description"></span>
									</li>
									<li>
										<lable>真菌污染率</lable>
										<input name="pollutionrate" class="pollutionrate" type="" id="pollutionrate" value="" maxlength="5" placeholder="不需要输入'%'">
										<span id="pollution_rate"></span>
									</li>
								</ul>
							</div>
						</li>
						<div class="addds">
						<li class="edittable-middle">
							<!-- <div class="editmiddle-left">
								毒素信息
							</div>
							
							<div class="editmiddle-right">
								<ul>
									<li>
										<lable>毒素种类</lable>
										<select name="toxin_id" class="toxin_id1"  >  
												<option value="0">请选择</option>
									      								                        
						                        			
									      	
										</select>
										<span id="toxin_id"></span>
									</li>
									<li>
										<lable>毒素含量</lable>
										<input name="toxin_count" type="text" maxlength="10" placeholder="毒素含量最大可输入十位">
										<span id="toxin_count"></span>
									</li>
									<li>
										<a class="del">删除</a>	
									</li>
								</ul>
							</div> -->
						</li>
						</div>
						<div class="add-dsxx">+添加毒素信息</div>
						<div class="add-con">
						</div>
					</ul>
		
					<div class="add-ds">+添加产毒菌株信息</div>
					
					<div class="footer">
						<a class="baocun" onclick="baocun()">保存</a>
						<!-- <a onclick="history.go(-1)" class="marginl">返回</a> -->
						<a href="javascript:if(confirm('确实要放弃操作吗?返回之后，所添加数据不会保存！'))location='IM.html'" class="marginl">返回</a>
					</div>
					<div class="footer1"> </div>
		
				</div>
					</form>	
			</div>
		</div>	
	
	<script type="text/javascript" src="../../app/js/linkage4.js"></script>
	<script type="text/javascript">
	 function selectshi(){
		 var id=$("#sheng option:selected").val(); 
		$.ajax({
			url:"selectcityByprivinceCode",
			data:{"shengId":id},
			success:function(data){
				$("#shi").empty();
				for(var i=0;i<data.length;i++)
					{
						$("#shi").append("<option value="+data[i].code+">"+data[i].name+"</option>")
					}
			}  
		})
	} 
	 function selectxian(){
		 var id=$("#shi option:selected").val(); 
		$.ajax({
			url:"selectxianBycityCode",
			data:{"cityId":id},
			success:function(data){
				$("#xian").empty();
				for(var i=0;i<data.length;i++)
					{
						$("#xian").append("<option value="+data[i].code+">"+data[i].name+"</option>")
					}
			}  
		})
	}
	 function selectbreed(){
		 var id=$("#cptype option:selected").val();
		 $.ajax({
			 url:"selectCropspeciesByIDs",
			 data:{"cateporyId":id},
		 success:data
		 })
		 function data(data){
			 $("#cptypess").empty();
			 for(var i=0;i<data.length;i++){
				 $("#cptypess").append("<option value="+data[i].id+">"+data[i].cropSpecies+"</option>")
			 }
		 }
		 }
	 function baocun(){
		 $.ajax({
			 url:"AddIM",
			 data:$('#search_form').serialize(),
			 success:data
		 })
		 function data(data){
			 if(data.code==200){
				 alert("保存成功");
			 }
		 }
	 }
	 /* $(document).ready(function(){
		 $.ajax({
			 url:"selectAlltoininfo",
			 success:data
		 })
		 function data(data){
			 for (var i = 0; i < data.length; i++) {
				 $(".toxin_id1").append(
						"<option value="+data[i].id+">"+data[i].toxinType+"</option>"
				 )
			}
		 }
		 }) */
	//添加毒素信息
	$(".add-dsxx").click(function(){
		$('.addds').append('<li class="edittable-middle"><div class="editmiddle-left">毒素信息</div><div class="editmiddle-right"><ul><li><lable>毒素种类</lable><select name="toxinid" class="toxin_id1" onblur="checktoxin_id()"><option value="0" >请选择</option></select><span id="toxin_id" ></span></li><li><lable>毒素含量</lable><input name="toxincount" id="toxincount" class="toxincount" type="text"  onblur="checktoxin_count()"  maxlength="10" placeholder="毒素含量最大可输入十位"/><span id="toxin_count" ></span></li><li><a class="del">删除</a></li></ul></div></li>')
		var j=$(".edittable-middle");/* .editmiddle-right ul li */
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
	});
	
	 $(function(){
			/*添加产毒菌株信息*/
			var character = ["A","B","C","D","E","F","G","H","I","J","K","L","M","N","O","P","Q","R","S","T","U","V","W","X","Y","Z"];
			var x = $(".edittable-bottom").length;
			var i = x;
			$("body").on("click",".add-ds",function(){
				if(i<26){
					$(".add-con").append("<li class='edittable-bottom'><div class='editbottom-left'>产毒菌株信息"+character[i]+"</div><div class='editbottom-right'><ul><li><lable>样品编号</lable><input id='samplenum' name='samplenum' type='text' class='sample' readonly='readonly' value='"+$('.ypbh').val()+"'/></li><li><lable>菌株原始编号</lable><input class='num' id='originalnum' name='originalnum' type='text' /><span class='err'></span></li><li class='form-a'><lable>文献信息</lable><a class='xz-btn-a'>选择文件</a> <input type='text' name='docadd' id='' value='' class='file-name-a'  readonly='readonly' placeholder='仅支持doc/docx格式文档'/><input onchange='getPhotoSizes(this)' name='wordaddr' type='file' class='file-info-a' accept='.doc,.docx'/></li><li class='form-c'><lable>文本信息</lable><a class='xz-btn-c'>选择文件</a> <input   type='text' name='txtadd' id='' value='' class='file-name-c'  readonly='readonly' placeholder='仅支持txt格式'/><input onchange='getTextSize(this)' name='txtaddr' type='file' class='file-info-c' accept='.txt'/></li><li class='form-b'><lable>图片信息</lable><a class='xz-btn-b'>选择文件</a> <input type='text' name='imgadd' id='' value='' class='file-name-b'  readonly='readonly' placeholder='仅支持jpg/png格式'/><input onchange='getPhotoSize(this)' name='pictureaddr' type='file' class='file-info-b' accept='.png,.jpg,.jpeg'/></li><li><a class='del'>删除</a></li></ul></div></li>");
					i++;
				}else{
					if($(".edittable-bottom").length<26){
					$(".add-con").append("<li class='edittable-bottom'><div class='editbottom-left'>产毒菌株信息"+delcharacter[0]+"</div><div class='editbottom-right'><ul><li><lable>样品编号</lable><input id='samplenum' name='samplenum' type='text' class='sample' readonly='readonly' value='"+$('.ypbh').val()+"' /></li><li><lable>菌株原始编号</lable><input class='num' id='originalnum' name='originalnum' type='text'  /><span class='err'></span></li><li class='form-a'><lable>文献信息</lable><a class='xz-btn-a'>选择文件</a> <input type='text' name='docadd' id='' value='' class='file-name-a'  readonly='readonly' placeholder='仅支持doc/docx格式文档'/><input onchange='getPhotoSizes(this)' name='wordaddr' type='file' class='file-info-a' accept='.doc,.docx'/></li><li class='form-c'><lable>文本信息</lable><a class='xz-btn-c'>选择文件</a> <input  type='text' name='txtadd' id='' value='' class='file-name-c'  readonly='readonly' placeholder='仅支持txt格式'/><input onchange='getTextSize(this)' name='txtaddr' type='file' class='file-info-c' accept='.txt'/></li><li class='form-b'><lable>图片信息</lable><a class='xz-btn-b'>选择文件</a> <input type='text' name='imgadd' id='' value='' class='file-name-b' readonly='readonly' placeholder='仅支持jpg/png格式图片'/><input onchange='getPhotoSize(this)' name='pictureaddr' type='file' class='file-info-b' accept='.png,.jpg,.jpeg'/></li><li><a class='del'>删除</a></li></ul></div></li>");				
					delcharacter.shift();
					
					}
					
				};
			});
			
			var delcharacter = [];
			//样品编号联动
			$(".ypbh").on("input",function(){
				if($(".add-con").find("li").length !==0){
					$(".sample").each(function(){
						var m = $(".ypbh").val();
						$(this).val(m);
					})
				}
			})
			//删除新增信息
			$(".table-con").on("click",'.del',function(){
				var y = $(this).parents(".editbottom-right").siblings(".editbottom-left").html().substring(6,7)
				delcharacter.push(y);
				delcharacter.sort();
				$(this).parents(".edittable-bottom").remove();
			});
			$(".addds").on("click",'.del',function(){
				var y = $(this).parents(".editmiddle-right").siblings(".editmiddle-left").html().substring(6,7)
				delcharacter.push(y);
				delcharacter.sort();
				$(this).parents(".edittable-middle").remove();
			})
			
			
			//上传文件
			$(".table-con").on("click",'.xz-btn-a',function(){
				$(this).siblings(".file-info-a").trigger('click');
			})
			$(".table-con").on("change",'.file-info-a',function(){
				$(this).siblings(".file-name-a").val($(this).val());
			})
			$(".table-con").on("click",'.xz-btn-b',function(){
				$(this).siblings(".file-info-b").trigger('click');
			})
			$(".table-con").on("change",'.file-info-b',function(){
				$(this).siblings(".file-name-b").val($(this).val());
			})
			$(".table-con").on("click",'.xz-btn-c',function(){
				$(this).siblings(".file-info-c").trigger('click');
			})
			$(".table-con").on("change",'.file-info-c',function(){
				$(this).siblings(".file-name-c").val($(this).val());
			})
			
			//日历
			$('#dd').calendar({
		        trigger: '#dt',
		        zIndex: 999,
				format: 'yyyy-mm-dd',
		        onSelected: function (view, date, data) {
		           
		        },
		        onClose: function (view, date, data) {
		         
		        }
		    });
		    $('#dd-b').calendar({
		        trigger: '#dt-b',
		        zIndex: 999,
				format: 'yyyy-mm-dd',
		        onSelected: function (view, date, data) {
		            
		        },
		        onClose: function (view, date, data) {
		       
		        }
		    });
		    //时间监听
		    $("#dd .date-items").on("click",'li',function(){
				$("#dt").parent("li").find(".err").html('√').css("color","#green");
				
			})
			$("#dt").focus(function(){
				if($(this).val()==""){
					$(this).parent("li").find(".err").html('输入不能为空');
				}
			})

			$("#dd-b .date-items").on("click",'li',function(){
				var date = new Date();
				year = date.getFullYear();
				months = date.getMonth()+1
				days = date.getDate()	
				var t = setTimeout(function(){
					var sh = $("#dt-b").val();
					var attr = sh.split("-");
						if(attr[0]>=year && attr[1]>months){
							$("#dt-b").val('');
							$("#dt-b").parent("li").find(".err").html('输入不能为空');
						}else{
							if(attr[0]==year && attr[1]==months && attr[2]>days){
								$("#dt-b").val('');	
								$("#dt-b").parent("li").find(".err").html('输入不能为空');
								$("#dt-b").parent("li").find(".err").css("color","red")
							}
						}
					
				},10);
				setTimeout(function(){
					if($("#dt-b").val()!==""){
						$("#dt-b").parent("li").find(".err").html('√');
						$("#dt-b").parent("li").find(".err").css("color","green")
					}
				},10)
			})
			
		/*     //毒素菌株信息
			$(".add-con").on("focus",".sample",function(){
				$(".sample").each(function(){
						if($(this).val() =="" ){
							$(this).siblings(".err").text("内容不能为空")
						};
				})
			})
			$(".add-con").on("blur",".sample",function(){
				$(".sample").each(function(){
						if($(this).val() !=="" ){
							$(this).siblings(".err").text("√").css("color","#0f0")
						}else{
							$(this).siblings(".err").text("内容不能为空").css("color","#f00")
						};
				})
			});
				$(".add-con").on("focus",".num",function(){
				$(".num").each(function(){
						if($(this).val() =="" ){
							$(this).siblings(".err").text("内容不能为空")
						};
				})
			})
			$(".add-con").on("blur",".num",function(){
				$(".num").each(function(){
						if($(this).val() !=="" ){
							$(this).siblings(".err").text("√").css("color","#0f0")
						}else{
							$(this).siblings(".err").text("内容不能为空").css("color","#f00")
						};
				})
			}) */
		});
	//查询菌株是否存在
		/* $(".edittable-bottom").on("blur",".num",function(){
			var originalnum=document.getElementById("originalnum").value;
			$.ajax({
				url:"selectByoriginal",
				data:{"originalnum":originalnum},
				success:data
			})
			function data(data){
				$(".num").each(function(){
					if(data.code==200){
						$(this).siblings(".err").text("√").css("color","#0f0")
					}else{
						$(this).siblings(".err").text("菌株编号已经存在").css("color","#f00")
					}
				})
			}
		}) */
	</script>
<script type="text/javascript">
$(".edittable-right").on("blur",".sel",function(){
var a=document.getElementById("cptype").value;
$("#crop_category_id").html("");
if(a==0){
	$("#crop_category_id").html("不能为空").css("color","red");ok2=false;
}else{
	$("#crop_category_id").html("√").css("color","green");ok2=true;
}
})
</script>
<script type="text/javascript">
$(".edittable-right").on("blur",".province",function(){
var a=document.getElementById("sheng").value;
var b=document.getElementById("shi").value;
var c=document.getElementById("xian").value;
/* var ss= $("#sheng option:selected").text();
var ee= $("#shi option:selected").text();
var rr= $("#xian option:selected").text();
console.log(ss,ee,rr)
document.getElementById("provinces").value = ss;
document.getElementById("city").value = ee;
document.getElementById("county").value = rr; */
$("#province").html("");
if(a==0){
	$("#province").html("不能为空").css("color","red");ok4=false;
}else{
	$("#province").html("√").css("color","green");ok4=true;
}
})
</script>
<script type="text/javascript">
$(".edittable-right").on("blur",".quyangren",function(){
var a=document.getElementById("quyangren").value;

$("#sampling_people").html("");

if(a==0){
	$("#sampling_people").html("不能为空").css("color","red");ok7=false;
}else{
	$("#sampling_people").html("√").css("color","green");ok7=true;
}
})
</script>
<script type="text/javascript">
$(".edittable-right").on("blur",".ypbh",function(){
	var a=document.getElementById("sampleid").value;
	$("#sample_id").html("");
	var cc =  isalphanumber(a)
	var ceshi = isalphanumberzhongwen(a);
	var ss =  a.length;
	if(a=="" ){
		$("#sample_id").html("不能为空").css("color","red");ok1=false;
	}else if  (ceshi == true ){
		$("#sample_id").html("编号格式不正确！！！！！").css("color","red");ok1=false;
	}else if  (cc == false){
		$("#sample_id").html("编号格式不正确").css("color","red");ok1=false;
	}else if  (ss < "5" || ss > "15"){
		$("#sample_id").html("编号长度不正确").css("color","red");ok1=false;
	}else{
			$.ajax({
				url:"selectBysampleid",
				data:{"sampleid":a},
				success:data
			})
			function data(data){
				 if(data.code == 200){
					 $("#sample_id").html("样品编号已存在").css("color","red");ok1=false;
				 }else{
					 $("#sample_id").html("√").css("color","green");ok1=true;
				 }
			}
		}
})
</script>
<script type="text/javascript">
$(".edittable-middle").on("blur",".toxin_id1",function(){
$("input").trigger("blur");
$("select").trigger("blur");
$("#seasonal1").trigger("blur");
$("#description1").trigger("blur");
var ss =  $(".sample").length;
console.log(ss)

if(ss>0){
	console.log(ok1==true,ok2==true,ok3==true,ok4==true,ok5==true,ok7==true,ok8==true,ok9==true,ok10==true,ok11==true,ok12==true,ok13==true,ok14==true)
	if(ok1==true&&ok2==true&&ok3==true&&ok4==true&&ok7==true&&ok8==true&&ok9==true&&ok10==true&&ok11==true&&ok12==true&&ok13==true&&ok14==true){
		var aa = [];
		$("select[name='toxin_id']").each(function(){
			var ab=$(this).val();
			console.log(ab)
			aa.push(ab);
		})
	    for(var i=0;i<aa.length;i++){
	    	for(var j=0;j<i;j++){
	    		if(aa[i]===aa[j]){
	    			alert('毒素种类不能重复！');
	    			return false;
	    		}
	    	}
	    }
		document.getElementById('search_form').submit();
		return true;
	}	
}else{
	console.log(ok1==true,ok2==true,ok3==true,ok4==true,ok5==true,ok7==true,ok8==true,ok9==true,ok10==true,ok11==true,ok12==true)

	if(ok1==true&&ok2==true&&ok3==true&&ok4==true&&ok7==true&&ok8==true&&ok9==true&&ok10==true&&ok11==true&&ok12==true){
		var aa = [];
		$("select[name='toxin_id']").each(function(){
			var ab=$(this).val();
			console.log(ab)
			aa.push(ab);
		})
	    for(var i=0;i<aa.length;i++){
	    	for(var j=0;j<i;j++){
	    		if(aa[i]===aa[j]){
	    			alert('毒素种类不能重复！');
	    			return false;
	    		}
	    	}
	    }
		document.getElementById('search_form').submit();
		return true;
	}
	
}
})
</script>
<script type="text/javascript">
$(".edittable-middle").on("blur",".toxin_id1",function(){
var a=document.getElementById("toxin_id1").value;

$("#toxin_id").html("");
if(a==0){
	$("#toxin_id").html("不能为空").css("color","red");ok11=false;
}else{
	$("#toxin_id").html("√").css("color","green");ok11=true;
}
})
</script>
<script type="text/javascript">
$(".edittable-right").on("blur",".pollutionrate",function(){
var a=document.getElementById("pollutionrate").value;
var cc = isalphanumberzhongwen(a)
$("#pollution_rate").html("");
if(a==0){
	$("#pollution_rate").html("不能为空").css("color","red");ok10=false;
}else if(a>100){
	$("#pollution_rate").html("不能超过100%").css("color","red");ok10=false;
}else if  (cc == false){
	$("#pollution_rate").html("字符输入有误").css("color","red");ok10=false;
}else{
	$("#pollution_rate").html("√").css("color","green");ok10=true;
}
})
</script>
<script type="text/javascript">
$(".addds").on("blur",".toxincount",function(){
var a=document.getElementById("toxincount").value;
var cc = isalphanumberzhongwen(a)
$("#toxin_count").html("");
if(a==0){
	$("#toxin_count").html("不能为空").css("color","red");ok12=false;
}else if  (cc == false){
	$("#toxin_count").html("字符输入有误").css("color","red");ok1=false;
}else{
	$("#toxin_count").html("√").css("color","green");ok12=true;
}
})
</script>
</html>