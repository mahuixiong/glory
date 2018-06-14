<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
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
	<form action="editinformation" id="search_form" enctype="multipart/form-data" method="post" accept-charset="utf-8">			
				<div class="editim-table">
					<ul class="table-con">
						<li class="edittable-top">
							<div class="edittable-left">采样信息</div>
							<div class="edittable-right">
								<ul>
									<li>
										<lable>样品编号</lable>
										<input type="" name="sample_id" placeholder="首字母为英文，长度为5-15位" id="" class="ypbh" value="R-13-2316384" >
										<span id="sample_id"></span>
									</li>
									<li>
									<input type="hidden" name="id" id="" value="160">
										<lable>农产品加工原料类别</lable>
										<select class="sel" onchange="cptypes()" name="crop_category_id" id="cptype"">
											
								        	<option value="1 " selected="selected">谷物类</option>
								        
								        	<option value="2 ">油料类</option>
								        
								        	<option value="3 ">水果类</option>
								        
								        	<option value="4 ">坚果类</option>
								        
								        	<option value="5 ">香辛类</option>
								        
								        	<option value="6 ">饲料类</option>
								        
								        	<option value="20 ">香薰类</option>
								        
								        	<option value="21 ">肉类</option>
								        
										</select> 
										<span id="crop_category_id"></span>
									</li>
									<li>
										<lable>品种</lable>
										<select name="breed" class="sele" id="cptypess" ">
											<option class="selec" value="3" selected="selected">稻谷</option>
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
	                             <select  class="province" id="shen" ">
							       
							       
				        		<option class="shengde" value="110000">北京</option><option class="shengde" value="120000">天津</option><option class="shengde" value="130000">河北</option><option class="shengde" value="140000">山西</option><option class="shengde" value="150000">内蒙古</option><option class="shengde" value="210000">辽宁</option><option class="shengde" value="220000">吉林</option><option class="shengde" value="230000">黑龙江</option><option class="shengde" value="310000">上海</option><option class="shengde" value="320000">江苏</option><option class="shengde" value="330000">浙江</option><option class="shengde" selected="selected" value="340000">安徽</option><option class="shengde" value="350000">福建</option><option class="shengde" value="360000">江西</option><option class="shengde" value="370000">山东</option><option class="shengde" value="410000">河南</option><option class="shengde" value="420000">湖北</option><option class="shengde" value="430000">湖南</option><option class="shengde" value="440000">广东</option><option class="shengde" value="450000">广西</option><option class="shengde" value="460000">海南</option><option class="shengde" value="500000">重庆</option><option class="shengde" value="510000">四川</option><option class="shengde" value="520000">贵州</option><option class="shengde" value="530000">云南</option><option class="shengde" value="540000">西藏</option><option class="shengde" value="610000">陕西</option><option class="shengde" value="620000">甘肃</option><option class="shengde" value="630000">青海</option><option class="shengde" value="640000">宁夏</option><option class="shengde" value="650000">新疆</option><option class="shengde" value="710000">台湾</option><option class="shengde" value="810000">香港</option><option class="shengde" value="820000">澳门</option></select><span>省</span>
				        		<select class="city" id="shi" onchange="changeShi(this.value,'shen','shi','xian')"><option value="0" class="shide">请选择</option><option class="shide" value="340100">合肥市</option><option class="shide" value="340200">芜湖市</option><option class="shide" value="340300">蚌埠市</option><option class="shide" value="340400">淮南市</option><option class="shide" value="340500">马鞍山市</option><option class="shide" value="340600">淮北市</option><option class="shide" value="340700">铜陵市</option><option class="shide" value="340800">安庆市</option><option class="shide" value="341000">黄山市</option><option class="shide" value="341100">滁州市</option><option class="shide" value="341200">阜阳市</option><option class="shide" value="341300">宿州市</option><option class="shide" value="341400">巢湖市</option><option class="shide" value="341500">六安市</option><option class="shide" value="341600">亳州市</option><option class="shide" value="341700">池州市</option><option class="shide" value="341800">宣城市</option></select><span>市</span>
				        		<select  class="county" id="xian" onchange="xianwsx()"><option value="0" class="xiande">请选择</option></select><span>县</span>
										</div>
										<span class="xc">
											<input type="text" placeholder="可为空" id="xiang" name="township" value="元曈">乡
											<input type="text" placeholder="可为空" id="cun" name="village" value="曙光">村
											<input type="text" placeholder="可为空" id="hu" name="household" value="王志芊"><span>户</span>
										</span>
										<span id="province"></span>
									</li>
									<li>
										<lable>收获时间</lable>
										<input  type="text" name="harvest_time" value="2013-09-01" id="dt" placeholder="选择日期" readonly="readonly">
  										<div id="dd" class="calendar calendar-modal calendar-d" style="width: 280px; height: 330px; left: 499.641px; top: 357px; z-index: 999; display: none;"><div class="calendar-inner" style="width: 280px;"><div class="calendar-views"><div class="view view-date" style="width: 280px;"><div class="calendar-hd"><a href="javascript:;" data-calendar-display-date="" class="calendar-display">2018/<span class="m">4</span></a><div class="calendar-arrow"><span class="prev" title="上一月" data-calendar-arrow-date="">&lt;</span><span class="next" title="下一月" data-calendar-arrow-date="">&gt;</span></div></div><div class="calendar-ct" style="width: 280px; height: 280px;"><ol class="week"><li style="width:40px;height:40px;line-height:40px">日</li><li style="width:40px;height:40px;line-height:40px">一</li><li style="width:40px;height:40px;line-height:40px">二</li><li style="width:40px;height:40px;line-height:40px">三</li><li style="width:40px;height:40px;line-height:40px">四</li><li style="width:40px;height:40px;line-height:40px">五</li><li style="width:40px;height:40px;line-height:40px">六</li></ol><ul class="date-items"><li style="width: 280px;"><ol class="days"><li style="width:40px;height:40px;line-height:40px" class="old" data-calendar-day="">25</li><li style="width:40px;height:40px;line-height:40px" class="old" data-calendar-day="">26</li><li style="width:40px;height:40px;line-height:40px" class="old" data-calendar-day="">27</li><li style="width:40px;height:40px;line-height:40px" class="old" data-calendar-day="">28</li><li style="width:40px;height:40px;line-height:40px" class="" data-calendar-day="">1</li><li style="width:40px;height:40px;line-height:40px" class="" data-calendar-day="">2</li><li style="width:40px;height:40px;line-height:40px" class="" data-calendar-day="">3</li><li style="width:40px;height:40px;line-height:40px" class="" data-calendar-day="">4</li><li style="width:40px;height:40px;line-height:40px" class="" data-calendar-day="">5</li><li style="width:40px;height:40px;line-height:40px" class="" data-calendar-day="">6</li><li style="width:40px;height:40px;line-height:40px" class="" data-calendar-day="">7</li><li style="width:40px;height:40px;line-height:40px" class="" data-calendar-day="">8</li><li style="width:40px;height:40px;line-height:40px" class="" data-calendar-day="">9</li><li style="width:40px;height:40px;line-height:40px" class="" data-calendar-day="">10</li><li style="width:40px;height:40px;line-height:40px" class="" data-calendar-day="">11</li><li style="width:40px;height:40px;line-height:40px" class="" data-calendar-day="">12</li><li style="width:40px;height:40px;line-height:40px" class="" data-calendar-day="">13</li><li style="width:40px;height:40px;line-height:40px" class="" data-calendar-day="">14</li><li style="width:40px;height:40px;line-height:40px" class="" data-calendar-day="">15</li><li style="width:40px;height:40px;line-height:40px" class="" data-calendar-day="">16</li><li style="width:40px;height:40px;line-height:40px" class="" data-calendar-day="">17</li><li style="width:40px;height:40px;line-height:40px" class="" data-calendar-day="">18</li><li style="width:40px;height:40px;line-height:40px" class="" data-calendar-day="">19</li><li style="width:40px;height:40px;line-height:40px" class="" data-calendar-day="">20</li><li style="width:40px;height:40px;line-height:40px" class="" data-calendar-day="">21</li><li style="width:40px;height:40px;line-height:40px" class="" data-calendar-day="">22</li><li style="width:40px;height:40px;line-height:40px" class="" data-calendar-day="">23</li><li style="width:40px;height:40px;line-height:40px" class="" data-calendar-day="">24</li><li style="width:40px;height:40px;line-height:40px" class="" data-calendar-day="">25</li><li style="width:40px;height:40px;line-height:40px" class="" data-calendar-day="">26</li><li style="width:40px;height:40px;line-height:40px" class="" data-calendar-day="">27</li><li style="width:40px;height:40px;line-height:40px" class="" data-calendar-day="">28</li><li style="width:40px;height:40px;line-height:40px" class="" data-calendar-day="">29</li><li style="width:40px;height:40px;line-height:40px" class="" data-calendar-day="">30</li><li style="width:40px;height:40px;line-height:40px" class="" data-calendar-day="">31</li><li style="width:40px;height:40px;line-height:40px" class="new" data-calendar-day="">1</li><li style="width:40px;height:40px;line-height:40px" class="new" data-calendar-day="">2</li><li style="width:40px;height:40px;line-height:40px" class="new" data-calendar-day="">3</li><li style="width:40px;height:40px;line-height:40px" class="new" data-calendar-day="">4</li><li style="width:40px;height:40px;line-height:40px" class="new" data-calendar-day="">5</li><li style="width:40px;height:40px;line-height:40px" class="new" data-calendar-day="">6</li><li style="width:40px;height:40px;line-height:40px" class="new" data-calendar-day="">7</li></ol></li><li style="width: 280px;"><ol class="days"><li style="width:40px;height:40px;line-height:40px" class="old" data-calendar-day="">25</li><li style="width:40px;height:40px;line-height:40px" class="old" data-calendar-day="">26</li><li style="width:40px;height:40px;line-height:40px" class="old" data-calendar-day="">27</li><li style="width:40px;height:40px;line-height:40px" class="old" data-calendar-day="">28</li><li style="width:40px;height:40px;line-height:40px" class="old" data-calendar-day="">29</li><li style="width:40px;height:40px;line-height:40px" class="old" data-calendar-day="">30</li><li style="width:40px;height:40px;line-height:40px" class="old" data-calendar-day="">31</li><li style="width:40px;height:40px;line-height:40px" class="" data-calendar-day="">1</li><li style="width:40px;height:40px;line-height:40px" class="" data-calendar-day="">2</li><li style="width:40px;height:40px;line-height:40px" class="" data-calendar-day="">3</li><li style="width:40px;height:40px;line-height:40px" class="" data-calendar-day="">4</li><li style="width:40px;height:40px;line-height:40px" class="" data-calendar-day="">5</li><li style="width:40px;height:40px;line-height:40px" class="" data-calendar-day="">6</li><li style="width:40px;height:40px;line-height:40px" class="" data-calendar-day="">7</li><li style="width:40px;height:40px;line-height:40px" class="" data-calendar-day="">8</li><li style="width:40px;height:40px;line-height:40px" class="" data-calendar-day="">9</li><li style="width:40px;height:40px;line-height:40px" class=" now" data-calendar-day="">10</li><li style="width:40px;height:40px;line-height:40px" class="" data-calendar-day="">11</li><li style="width:40px;height:40px;line-height:40px" class="" data-calendar-day="">12</li><li style="width:40px;height:40px;line-height:40px" class="" data-calendar-day="">13</li><li style="width:40px;height:40px;line-height:40px" class="" data-calendar-day="">14</li><li style="width:40px;height:40px;line-height:40px" class="" data-calendar-day="">15</li><li style="width:40px;height:40px;line-height:40px" class="" data-calendar-day="">16</li><li style="width:40px;height:40px;line-height:40px" class="" data-calendar-day="">17</li><li style="width:40px;height:40px;line-height:40px" class="" data-calendar-day="">18</li><li style="width:40px;height:40px;line-height:40px" class="" data-calendar-day="">19</li><li style="width:40px;height:40px;line-height:40px" class="" data-calendar-day="">20</li><li style="width:40px;height:40px;line-height:40px" class="" data-calendar-day="">21</li><li style="width:40px;height:40px;line-height:40px" class="" data-calendar-day="">22</li><li style="width:40px;height:40px;line-height:40px" class="" data-calendar-day="">23</li><li style="width:40px;height:40px;line-height:40px" class="" data-calendar-day="">24</li><li style="width:40px;height:40px;line-height:40px" class="" data-calendar-day="">25</li><li style="width:40px;height:40px;line-height:40px" class="" data-calendar-day="">26</li><li style="width:40px;height:40px;line-height:40px" class="" data-calendar-day="">27</li><li style="width:40px;height:40px;line-height:40px" class="" data-calendar-day="">28</li><li style="width:40px;height:40px;line-height:40px" class="" data-calendar-day="">29</li><li style="width:40px;height:40px;line-height:40px" class="" data-calendar-day="">30</li><li style="width:40px;height:40px;line-height:40px" class="new" data-calendar-day="">1</li><li style="width:40px;height:40px;line-height:40px" class="new" data-calendar-day="">2</li><li style="width:40px;height:40px;line-height:40px" class="new" data-calendar-day="">3</li><li style="width:40px;height:40px;line-height:40px" class="new" data-calendar-day="">4</li><li style="width:40px;height:40px;line-height:40px" class="new" data-calendar-day="">5</li></ol></li><li style="width: 280px;"><ol class="days"><li style="width:40px;height:40px;line-height:40px" class="old" data-calendar-day="">29</li><li style="width:40px;height:40px;line-height:40px" class="old" data-calendar-day="">30</li><li style="width:40px;height:40px;line-height:40px" class="" data-calendar-day="">1</li><li style="width:40px;height:40px;line-height:40px" class="" data-calendar-day="">2</li><li style="width:40px;height:40px;line-height:40px" class="" data-calendar-day="">3</li><li style="width:40px;height:40px;line-height:40px" class="" data-calendar-day="">4</li><li style="width:40px;height:40px;line-height:40px" class="" data-calendar-day="">5</li><li style="width:40px;height:40px;line-height:40px" class="" data-calendar-day="">6</li><li style="width:40px;height:40px;line-height:40px" class="" data-calendar-day="">7</li><li style="width:40px;height:40px;line-height:40px" class="" data-calendar-day="">8</li><li style="width:40px;height:40px;line-height:40px" class="" data-calendar-day="">9</li><li style="width:40px;height:40px;line-height:40px" class="" data-calendar-day="">10</li><li style="width:40px;height:40px;line-height:40px" class="" data-calendar-day="">11</li><li style="width:40px;height:40px;line-height:40px" class="" data-calendar-day="">12</li><li style="width:40px;height:40px;line-height:40px" class="" data-calendar-day="">13</li><li style="width:40px;height:40px;line-height:40px" class="" data-calendar-day="">14</li><li style="width:40px;height:40px;line-height:40px" class="" data-calendar-day="">15</li><li style="width:40px;height:40px;line-height:40px" class="" data-calendar-day="">16</li><li style="width:40px;height:40px;line-height:40px" class="" data-calendar-day="">17</li><li style="width:40px;height:40px;line-height:40px" class="" data-calendar-day="">18</li><li style="width:40px;height:40px;line-height:40px" class="" data-calendar-day="">19</li><li style="width:40px;height:40px;line-height:40px" class="" data-calendar-day="">20</li><li style="width:40px;height:40px;line-height:40px" class="" data-calendar-day="">21</li><li style="width:40px;height:40px;line-height:40px" class="" data-calendar-day="">22</li><li style="width:40px;height:40px;line-height:40px" class="" data-calendar-day="">23</li><li style="width:40px;height:40px;line-height:40px" class="" data-calendar-day="">24</li><li style="width:40px;height:40px;line-height:40px" class="" data-calendar-day="">25</li><li style="width:40px;height:40px;line-height:40px" class="" data-calendar-day="">26</li><li style="width:40px;height:40px;line-height:40px" class="" data-calendar-day="">27</li><li style="width:40px;height:40px;line-height:40px" class="" data-calendar-day="">28</li><li style="width:40px;height:40px;line-height:40px" class="" data-calendar-day="">29</li><li style="width:40px;height:40px;line-height:40px" class="" data-calendar-day="">30</li><li style="width:40px;height:40px;line-height:40px" class="" data-calendar-day="">31</li><li style="width:40px;height:40px;line-height:40px" class="new" data-calendar-day="">1</li><li style="width:40px;height:40px;line-height:40px" class="new" data-calendar-day="">2</li><li style="width:40px;height:40px;line-height:40px" class="new" data-calendar-day="">3</li><li style="width:40px;height:40px;line-height:40px" class="new" data-calendar-day="">4</li><li style="width:40px;height:40px;line-height:40px" class="new" data-calendar-day="">5</li><li style="width:40px;height:40px;line-height:40px" class="new" data-calendar-day="">6</li><li style="width:40px;height:40px;line-height:40px" class="new" data-calendar-day="">7</li><li style="width:40px;height:40px;line-height:40px" class="new" data-calendar-day="">8</li><li style="width:40px;height:40px;line-height:40px" class="new" data-calendar-day="">9</li></ol></li></ul></div></div><div class="view view-month" style="width: 280px;"><div class="calendar-hd"><a href="javascript:;" data-calendar-display-month="" class="calendar-display">2018</a><div class="calendar-arrow"><span class="prev" title="上一年" data-calendar-arrow-month="">&lt;</span><span class="next" title="下一年" data-calendar-arrow-month="">&gt;</span></div></div><ol class="calendar-ct month-items" style="width: 280px; height: 280px;"><li style="width:70px;height:70px;line-height:70px" data-calendar-month="">1月</li><li style="width:70px;height:70px;line-height:70px" data-calendar-month="">2月</li><li style="width:70px;height:70px;line-height:70px" data-calendar-month="">3月</li><li style="width:70px;height:70px;line-height:70px" data-calendar-month="" class="now">4月</li><li style="width:70px;height:70px;line-height:70px" data-calendar-month="">5月</li><li style="width:70px;height:70px;line-height:70px" data-calendar-month="">6月</li><li style="width:70px;height:70px;line-height:70px" data-calendar-month="">7月</li><li style="width:70px;height:70px;line-height:70px" data-calendar-month="">8月</li><li style="width:70px;height:70px;line-height:70px" data-calendar-month="">9月</li><li style="width:70px;height:70px;line-height:70px" data-calendar-month="">10月</li><li style="width:70px;height:70px;line-height:70px" data-calendar-month="">11月</li><li style="width:70px;height:70px;line-height:70px" data-calendar-month="">12月</li></ol></div></div></div><div class="calendar-label"><p>HelloWorld</p><i></i></div></div>
										<span id="harvest_time"></span>
									</li>
									<li>
										<lable>取样时间</lable>
										<input type="text" name="sampling_time" value="2013-09-29" id="dt-b" placeholder="选择日期" readonly="readonly"">
  										<div id="dd-b" class="calendar calendar-modal calendar-d" style="width: 280px; height: 330px; left: 499.641px; top: 401px; z-index: 999; display: none;"><div class="calendar-inner" style="width: 280px;"><div class="calendar-views"><div class="view view-date" style="width: 280px;"><div class="calendar-hd"><a href="javascript:;" data-calendar-display-date="" class="calendar-display">2018/<span class="m">4</span></a><div class="calendar-arrow"><span class="prev" title="上一月" data-calendar-arrow-date="">&lt;</span><span class="next" title="下一月" data-calendar-arrow-date="">&gt;</span></div></div><div class="calendar-ct" style="width: 280px; height: 280px;"><ol class="week"><li style="width:40px;height:40px;line-height:40px">日</li><li style="width:40px;height:40px;line-height:40px">一</li><li style="width:40px;height:40px;line-height:40px">二</li><li style="width:40px;height:40px;line-height:40px">三</li><li style="width:40px;height:40px;line-height:40px">四</li><li style="width:40px;height:40px;line-height:40px">五</li><li style="width:40px;height:40px;line-height:40px">六</li></ol><ul class="date-items"><li style="width: 280px;"><ol class="days"><li style="width:40px;height:40px;line-height:40px" class="old" data-calendar-day="">25</li><li style="width:40px;height:40px;line-height:40px" class="old" data-calendar-day="">26</li><li style="width:40px;height:40px;line-height:40px" class="old" data-calendar-day="">27</li><li style="width:40px;height:40px;line-height:40px" class="old" data-calendar-day="">28</li><li style="width:40px;height:40px;line-height:40px" class="" data-calendar-day="">1</li><li style="width:40px;height:40px;line-height:40px" class="" data-calendar-day="">2</li><li style="width:40px;height:40px;line-height:40px" class="" data-calendar-day="">3</li><li style="width:40px;height:40px;line-height:40px" class="" data-calendar-day="">4</li><li style="width:40px;height:40px;line-height:40px" class="" data-calendar-day="">5</li><li style="width:40px;height:40px;line-height:40px" class="" data-calendar-day="">6</li><li style="width:40px;height:40px;line-height:40px" class="" data-calendar-day="">7</li><li style="width:40px;height:40px;line-height:40px" class="" data-calendar-day="">8</li><li style="width:40px;height:40px;line-height:40px" class="" data-calendar-day="">9</li><li style="width:40px;height:40px;line-height:40px" class="" data-calendar-day="">10</li><li style="width:40px;height:40px;line-height:40px" class="" data-calendar-day="">11</li><li style="width:40px;height:40px;line-height:40px" class="" data-calendar-day="">12</li><li style="width:40px;height:40px;line-height:40px" class="" data-calendar-day="">13</li><li style="width:40px;height:40px;line-height:40px" class="" data-calendar-day="">14</li><li style="width:40px;height:40px;line-height:40px" class="" data-calendar-day="">15</li><li style="width:40px;height:40px;line-height:40px" class="" data-calendar-day="">16</li><li style="width:40px;height:40px;line-height:40px" class="" data-calendar-day="">17</li><li style="width:40px;height:40px;line-height:40px" class="" data-calendar-day="">18</li><li style="width:40px;height:40px;line-height:40px" class="" data-calendar-day="">19</li><li style="width:40px;height:40px;line-height:40px" class="" data-calendar-day="">20</li><li style="width:40px;height:40px;line-height:40px" class="" data-calendar-day="">21</li><li style="width:40px;height:40px;line-height:40px" class="" data-calendar-day="">22</li><li style="width:40px;height:40px;line-height:40px" class="" data-calendar-day="">23</li><li style="width:40px;height:40px;line-height:40px" class="" data-calendar-day="">24</li><li style="width:40px;height:40px;line-height:40px" class="" data-calendar-day="">25</li><li style="width:40px;height:40px;line-height:40px" class="" data-calendar-day="">26</li><li style="width:40px;height:40px;line-height:40px" class="" data-calendar-day="">27</li><li style="width:40px;height:40px;line-height:40px" class="" data-calendar-day="">28</li><li style="width:40px;height:40px;line-height:40px" class="" data-calendar-day="">29</li><li style="width:40px;height:40px;line-height:40px" class="" data-calendar-day="">30</li><li style="width:40px;height:40px;line-height:40px" class="" data-calendar-day="">31</li><li style="width:40px;height:40px;line-height:40px" class="new" data-calendar-day="">1</li><li style="width:40px;height:40px;line-height:40px" class="new" data-calendar-day="">2</li><li style="width:40px;height:40px;line-height:40px" class="new" data-calendar-day="">3</li><li style="width:40px;height:40px;line-height:40px" class="new" data-calendar-day="">4</li><li style="width:40px;height:40px;line-height:40px" class="new" data-calendar-day="">5</li><li style="width:40px;height:40px;line-height:40px" class="new" data-calendar-day="">6</li><li style="width:40px;height:40px;line-height:40px" class="new" data-calendar-day="">7</li></ol></li><li style="width: 280px;"><ol class="days"><li style="width:40px;height:40px;line-height:40px" class="old" data-calendar-day="">25</li><li style="width:40px;height:40px;line-height:40px" class="old" data-calendar-day="">26</li><li style="width:40px;height:40px;line-height:40px" class="old" data-calendar-day="">27</li><li style="width:40px;height:40px;line-height:40px" class="old" data-calendar-day="">28</li><li style="width:40px;height:40px;line-height:40px" class="old" data-calendar-day="">29</li><li style="width:40px;height:40px;line-height:40px" class="old" data-calendar-day="">30</li><li style="width:40px;height:40px;line-height:40px" class="old" data-calendar-day="">31</li><li style="width:40px;height:40px;line-height:40px" class="" data-calendar-day="">1</li><li style="width:40px;height:40px;line-height:40px" class="" data-calendar-day="">2</li><li style="width:40px;height:40px;line-height:40px" class="" data-calendar-day="">3</li><li style="width:40px;height:40px;line-height:40px" class="" data-calendar-day="">4</li><li style="width:40px;height:40px;line-height:40px" class="" data-calendar-day="">5</li><li style="width:40px;height:40px;line-height:40px" class="" data-calendar-day="">6</li><li style="width:40px;height:40px;line-height:40px" class="" data-calendar-day="">7</li><li style="width:40px;height:40px;line-height:40px" class="" data-calendar-day="">8</li><li style="width:40px;height:40px;line-height:40px" class="" data-calendar-day="">9</li><li style="width:40px;height:40px;line-height:40px" class=" now" data-calendar-day="">10</li><li style="width:40px;height:40px;line-height:40px" class="" data-calendar-day="">11</li><li style="width:40px;height:40px;line-height:40px" class="" data-calendar-day="">12</li><li style="width:40px;height:40px;line-height:40px" class="" data-calendar-day="">13</li><li style="width:40px;height:40px;line-height:40px" class="" data-calendar-day="">14</li><li style="width:40px;height:40px;line-height:40px" class="" data-calendar-day="">15</li><li style="width:40px;height:40px;line-height:40px" class="" data-calendar-day="">16</li><li style="width:40px;height:40px;line-height:40px" class="" data-calendar-day="">17</li><li style="width:40px;height:40px;line-height:40px" class="" data-calendar-day="">18</li><li style="width:40px;height:40px;line-height:40px" class="" data-calendar-day="">19</li><li style="width:40px;height:40px;line-height:40px" class="" data-calendar-day="">20</li><li style="width:40px;height:40px;line-height:40px" class="" data-calendar-day="">21</li><li style="width:40px;height:40px;line-height:40px" class="" data-calendar-day="">22</li><li style="width:40px;height:40px;line-height:40px" class="" data-calendar-day="">23</li><li style="width:40px;height:40px;line-height:40px" class="" data-calendar-day="">24</li><li style="width:40px;height:40px;line-height:40px" class="" data-calendar-day="">25</li><li style="width:40px;height:40px;line-height:40px" class="" data-calendar-day="">26</li><li style="width:40px;height:40px;line-height:40px" class="" data-calendar-day="">27</li><li style="width:40px;height:40px;line-height:40px" class="" data-calendar-day="">28</li><li style="width:40px;height:40px;line-height:40px" class="" data-calendar-day="">29</li><li style="width:40px;height:40px;line-height:40px" class="" data-calendar-day="">30</li><li style="width:40px;height:40px;line-height:40px" class="new" data-calendar-day="">1</li><li style="width:40px;height:40px;line-height:40px" class="new" data-calendar-day="">2</li><li style="width:40px;height:40px;line-height:40px" class="new" data-calendar-day="">3</li><li style="width:40px;height:40px;line-height:40px" class="new" data-calendar-day="">4</li><li style="width:40px;height:40px;line-height:40px" class="new" data-calendar-day="">5</li></ol></li><li style="width: 280px;"><ol class="days"><li style="width:40px;height:40px;line-height:40px" class="old" data-calendar-day="">29</li><li style="width:40px;height:40px;line-height:40px" class="old" data-calendar-day="">30</li><li style="width:40px;height:40px;line-height:40px" class="" data-calendar-day="">1</li><li style="width:40px;height:40px;line-height:40px" class="" data-calendar-day="">2</li><li style="width:40px;height:40px;line-height:40px" class="" data-calendar-day="">3</li><li style="width:40px;height:40px;line-height:40px" class="" data-calendar-day="">4</li><li style="width:40px;height:40px;line-height:40px" class="" data-calendar-day="">5</li><li style="width:40px;height:40px;line-height:40px" class="" data-calendar-day="">6</li><li style="width:40px;height:40px;line-height:40px" class="" data-calendar-day="">7</li><li style="width:40px;height:40px;line-height:40px" class="" data-calendar-day="">8</li><li style="width:40px;height:40px;line-height:40px" class="" data-calendar-day="">9</li><li style="width:40px;height:40px;line-height:40px" class="" data-calendar-day="">10</li><li style="width:40px;height:40px;line-height:40px" class="" data-calendar-day="">11</li><li style="width:40px;height:40px;line-height:40px" class="" data-calendar-day="">12</li><li style="width:40px;height:40px;line-height:40px" class="" data-calendar-day="">13</li><li style="width:40px;height:40px;line-height:40px" class="" data-calendar-day="">14</li><li style="width:40px;height:40px;line-height:40px" class="" data-calendar-day="">15</li><li style="width:40px;height:40px;line-height:40px" class="" data-calendar-day="">16</li><li style="width:40px;height:40px;line-height:40px" class="" data-calendar-day="">17</li><li style="width:40px;height:40px;line-height:40px" class="" data-calendar-day="">18</li><li style="width:40px;height:40px;line-height:40px" class="" data-calendar-day="">19</li><li style="width:40px;height:40px;line-height:40px" class="" data-calendar-day="">20</li><li style="width:40px;height:40px;line-height:40px" class="" data-calendar-day="">21</li><li style="width:40px;height:40px;line-height:40px" class="" data-calendar-day="">22</li><li style="width:40px;height:40px;line-height:40px" class="" data-calendar-day="">23</li><li style="width:40px;height:40px;line-height:40px" class="" data-calendar-day="">24</li><li style="width:40px;height:40px;line-height:40px" class="" data-calendar-day="">25</li><li style="width:40px;height:40px;line-height:40px" class="" data-calendar-day="">26</li><li style="width:40px;height:40px;line-height:40px" class="" data-calendar-day="">27</li><li style="width:40px;height:40px;line-height:40px" class="" data-calendar-day="">28</li><li style="width:40px;height:40px;line-height:40px" class="" data-calendar-day="">29</li><li style="width:40px;height:40px;line-height:40px" class="" data-calendar-day="">30</li><li style="width:40px;height:40px;line-height:40px" class="" data-calendar-day="">31</li><li style="width:40px;height:40px;line-height:40px" class="new" data-calendar-day="">1</li><li style="width:40px;height:40px;line-height:40px" class="new" data-calendar-day="">2</li><li style="width:40px;height:40px;line-height:40px" class="new" data-calendar-day="">3</li><li style="width:40px;height:40px;line-height:40px" class="new" data-calendar-day="">4</li><li style="width:40px;height:40px;line-height:40px" class="new" data-calendar-day="">5</li><li style="width:40px;height:40px;line-height:40px" class="new" data-calendar-day="">6</li><li style="width:40px;height:40px;line-height:40px" class="new" data-calendar-day="">7</li><li style="width:40px;height:40px;line-height:40px" class="new" data-calendar-day="">8</li><li style="width:40px;height:40px;line-height:40px" class="new" data-calendar-day="">9</li></ol></li></ul></div></div><div class="view view-month" style="width: 280px;"><div class="calendar-hd"><a href="javascript:;" data-calendar-display-month="" class="calendar-display">2018</a><div class="calendar-arrow"><span class="prev" title="上一年" data-calendar-arrow-month="">&lt;</span><span class="next" title="下一年" data-calendar-arrow-month="">&gt;</span></div></div><ol class="calendar-ct month-items" style="width: 280px; height: 280px;"><li style="width:70px;height:70px;line-height:70px" data-calendar-month="">1月</li><li style="width:70px;height:70px;line-height:70px" data-calendar-month="">2月</li><li style="width:70px;height:70px;line-height:70px" data-calendar-month="">3月</li><li style="width:70px;height:70px;line-height:70px" data-calendar-month="" class="now">4月</li><li style="width:70px;height:70px;line-height:70px" data-calendar-month="">5月</li><li style="width:70px;height:70px;line-height:70px" data-calendar-month="">6月</li><li style="width:70px;height:70px;line-height:70px" data-calendar-month="">7月</li><li style="width:70px;height:70px;line-height:70px" data-calendar-month="">8月</li><li style="width:70px;height:70px;line-height:70px" data-calendar-month="">9月</li><li style="width:70px;height:70px;line-height:70px" data-calendar-month="">10月</li><li style="width:70px;height:70px;line-height:70px" data-calendar-month="">11月</li><li style="width:70px;height:70px;line-height:70px" data-calendar-month="">12月</li></ol></div></div></div><div class="calendar-label"><p>HelloWorld</p><i></i></div></div>
  										<span id="sampling_time" class="err"></span>
									</li>
									<li>
										<lable>取样人</lable>
										<input type="" placeholder="请输入取样人姓名" name="sampling_people" id="" value="方业文">
										<span id="sampling_people"></span>
									</li>
									<li class="jijie">
										<lable>采集季节及气候特征</lable>
										<textarea name="seasonal" id="seasonal1" rows="" cols="" "></textarea>	
										<span id="seasonal"></span>
									</li>
									<li class="huanjing">
										<lable>采集地、环境信息描述</lable>
										<textarea name="description" id="description1" rows="" cols="" "></textarea>
										<span id="description"></span>
									</li>
									<li>
										<lable>真菌污染率</lable>
										<input type="" name="pollution_rate" id="" value="90.0"">
										<span id="pollution_rate"></span>
									</li>
								</ul>
							</div>
						</li>
						<div class="addds">
						
						<li class="edittable-middle">
							<div class="editmiddle-left">
								毒素信息
							</div>
							<div class="editmiddle-right">
								<ul>
									<li>
										<lable>毒素种类</lable>
										<select name="toxin_id" id="toxin_id1" ">
											<option value="">请选择</option>			
									       
									      <option value="2 ">伏马菌素</option>										                        
									      
									      <option value="3 ">玉米赤霉烯酮</option>										                        
									      
									      <option value="4 ">黄曲霉毒素总量</option>										                        
									      
									      <option value="5 " selected="selected">黄曲霉毒素B1</option>										                        
									      
									      <option value="7 ">黄曲霉毒素G1</option>										                        
									      
									      <option value="8 ">黄曲霉毒素G2</option>										                        
									      
									      <option value="9 ">黄曲霉毒素M1</option>										                        
									      
									      <option value="10 ">黄曲霉毒素M2</option>										                        
									      
									      <option value="11 ">展青霉毒素</option>										                        
									      
									      <option value="12 ">赭曲霉毒素A</option>										                        
									       
										</select>
										<span id="toxin_id"></span>
									</li>
									<li>
										<lable>毒素含量</lable>
										<input name="toxin_count" value="0.94" type="text"">
										<input name="edittoxin_id" type="hidden" value="186">
										<span id="toxin_count"></span>
									</li>
									<li>
										<a onclick="qwe();" class="del">删除</a>
									</li>
								</ul>
							</div>
						</li>
						
						</div>
						<div class="add-dsxx">+添加毒素信息</div>
						<div class="add-con">
						
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
	
	<script type="text/javascript" src="/glory/static/js/linkage5.js"></script>
	

	<script type="text/javascript" src="../../static/js/linkage5.js"></script>
	

</html>
