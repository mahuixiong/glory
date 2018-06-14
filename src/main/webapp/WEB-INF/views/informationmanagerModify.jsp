<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
	<head>
		<meta charset="UTF-8">
		<title>用户审核</title>
		<link rel="stylesheet" href="../../app/css/reset.css" />
		<link rel="stylesheet" href="../../app/css/customer-management-examine.css" />
		<link rel="stylesheet" href="../../app/css/calendar.css" />
		<script type="text/javascript" src="../../app/js/jquery1.11.3-jquery.min.js"></script>
		<script type="text/javascript" src="../../app/js/calendar.js"></script>
		<style>
			.cus-content .cus-examine-infolist .examine-list .list-item .list-box{
				width:15px;
				height:14px;
				vertical-align:middle;
			}
		</style>
	</head>
	<body data-genuitec-lp-enabled="false" data-genuitec-file-id="wc1-38" data-genuitec-path="/glory/src/main/webapp/WEB-INF/views/informationmanagerModify.jsp" style="height: 310px; width: 1126px;">
		
		<div class="cus-content" data-genuitec-lp-enabled="false" data-genuitec-file-id="wc1-38" data-genuitec-path="/glory/src/main/webapp/WEB-INF/views/informationmanagerModify.jsp">
		    <form action="updateXXGLY" method="get" id="formCustomer">
		    <div class="cus-examine-infolist">
		    	<p class="cus-examine-title">审核</p>
		    	<ul class="examine-list">
		    		
		    		<li class="list-item">
		    			<label>真实姓名</label>
		    			<input type="text" value="lijun" name="username" readonly="">
		    			<input type="hidden" value="123" name="id">
		    		</li>
		    		<li class="list-item">
		    			<label>身份证号码</label>
		    			<input type="text" value="130634199707023318" name="idcard" readonly="">
		    		</li>
		    		<li class="list-item">
		    			<label>用户单位</label>
		    			<input type="text" value="ywgd" name="company" readonly="">
		    		</li>
		    		<li class="list-item">
		    			<label>单位地址</label>
		    			<input type="text" value="dawfd" name="address" readonly="">
		    		</li>
		    		<li class="list-item">
		    			<label>邮箱号码</label>
		    			<input type="text" value="1562529720@qq.com" name="email" readonly="">
		    		</li>
		    		<li class="list-item">
		    			<label>手机号码</label>
		    			<input type="text" value="18432815656" name="phone" readonly="">
		    		</li>
		    		<li class="list-item">
		    			<label>用户权限</label>
		    			
		    				
				    		<input class="list-box" type="checkbox" name="category" value="1">谷物类
				    		&nbsp;&nbsp;&nbsp;&nbsp;
				    	
		    				
				    		<input class="list-box" type="checkbox" name="category" value="2">油料类
				    		&nbsp;&nbsp;&nbsp;&nbsp;
				    	
		    				
				    		<input class="list-box" type="checkbox" name="category" value="3">水果类
				    		&nbsp;&nbsp;&nbsp;&nbsp;
				    	
		    				
				    		<input class="list-box" type="checkbox" name="category" value="4">坚果类
				    		&nbsp;&nbsp;&nbsp;&nbsp;
				    	
		    				
				    		<input class="list-box" type="checkbox" name="category" value="5">香辛类
				    		&nbsp;&nbsp;&nbsp;&nbsp;
				    	
		    				
				    		<input class="list-box" type="checkbox" name="category" value="6">饲料类
				    		&nbsp;&nbsp;&nbsp;&nbsp;
				    	
		    				
				    		<input class="list-box" type="checkbox" name="category" value="20">香薰类
				    		&nbsp;&nbsp;&nbsp;&nbsp;
				    	
		    				
				    		<input class="list-box" type="checkbox" name="category" value="21">肉类
				    		&nbsp;&nbsp;&nbsp;&nbsp;
				    	
			    	
		    			<!-- <select name="customer_power" onblur="checkrole()" id="roleSelect">
		    				<option value="">请选择</option>
		    				<option value="1">查看水果类</option>
		    				<option value="2">查看谷物类</option>
		    				<option value="3">查看油料类</option>
		    				<option value="4">查看坚果类</option>
		    				<option value="5">查看香辛类</option>
		    				<option value="6">查看饲料类</option>
		    				<option value="7">可查看全部</option>
		    			</select> -->
		    			<span id="role_exam"></span>
		    		</li>
		    		<li class="list-item">
		    			<label>用户状态</label>
		    			<input type="radio" name="state" value="1" checked="checked">启用
		    			<input type="radio" name="state" value="0">禁用
		    		</li>
		    		<li>
						<lable>开始时间</lable>
						<input onblur="checkharvest_time()" type="text" name="starttime" value="" id="dt" placeholder="选择日期" readonly="readonly">
								<div id="dd" class="calendar calendar-modal calendar-d" style="width: 280px; height: 330px; left: 419.141px; top: 477px; z-index: 999; display: none;"><div class="calendar-inner" style="width: 280px;"><div class="calendar-views"><div class="view view-date" style="width: 280px;"><div class="calendar-hd"><a href="javascript:;" data-calendar-display-date="" class="calendar-display">2018/<span class="m">4</span></a><div class="calendar-arrow"><span class="prev" title="上一月" data-calendar-arrow-date="">&lt;</span><span class="next" title="下一月" data-calendar-arrow-date="">&gt;</span></div></div><div class="calendar-ct" style="width: 280px; height: 280px;"><ol class="week"><li style="width:40px;height:40px;line-height:40px">日</li><li style="width:40px;height:40px;line-height:40px">一</li><li style="width:40px;height:40px;line-height:40px">二</li><li style="width:40px;height:40px;line-height:40px">三</li><li style="width:40px;height:40px;line-height:40px">四</li><li style="width:40px;height:40px;line-height:40px">五</li><li style="width:40px;height:40px;line-height:40px">六</li></ol><ul class="date-items"><li style="width: 280px;"><ol class="days"><li style="width:40px;height:40px;line-height:40px" class="old" data-calendar-day="">25</li><li style="width:40px;height:40px;line-height:40px" class="old" data-calendar-day="">26</li><li style="width:40px;height:40px;line-height:40px" class="old" data-calendar-day="">27</li><li style="width:40px;height:40px;line-height:40px" class="old" data-calendar-day="">28</li><li style="width:40px;height:40px;line-height:40px" class="" data-calendar-day="">1</li><li style="width:40px;height:40px;line-height:40px" class="" data-calendar-day="">2</li><li style="width:40px;height:40px;line-height:40px" class="" data-calendar-day="">3</li><li style="width:40px;height:40px;line-height:40px" class="" data-calendar-day="">4</li><li style="width:40px;height:40px;line-height:40px" class="" data-calendar-day="">5</li><li style="width:40px;height:40px;line-height:40px" class="" data-calendar-day="">6</li><li style="width:40px;height:40px;line-height:40px" class="" data-calendar-day="">7</li><li style="width:40px;height:40px;line-height:40px" class="" data-calendar-day="">8</li><li style="width:40px;height:40px;line-height:40px" class="" data-calendar-day="">9</li><li style="width:40px;height:40px;line-height:40px" class="" data-calendar-day="">10</li><li style="width:40px;height:40px;line-height:40px" class="" data-calendar-day="">11</li><li style="width:40px;height:40px;line-height:40px" class="" data-calendar-day="">12</li><li style="width:40px;height:40px;line-height:40px" class="" data-calendar-day="">13</li><li style="width:40px;height:40px;line-height:40px" class="" data-calendar-day="">14</li><li style="width:40px;height:40px;line-height:40px" class="" data-calendar-day="">15</li><li style="width:40px;height:40px;line-height:40px" class="" data-calendar-day="">16</li><li style="width:40px;height:40px;line-height:40px" class="" data-calendar-day="">17</li><li style="width:40px;height:40px;line-height:40px" class="" data-calendar-day="">18</li><li style="width:40px;height:40px;line-height:40px" class="" data-calendar-day="">19</li><li style="width:40px;height:40px;line-height:40px" class="" data-calendar-day="">20</li><li style="width:40px;height:40px;line-height:40px" class="" data-calendar-day="">21</li><li style="width:40px;height:40px;line-height:40px" class="" data-calendar-day="">22</li><li style="width:40px;height:40px;line-height:40px" class="" data-calendar-day="">23</li><li style="width:40px;height:40px;line-height:40px" class="" data-calendar-day="">24</li><li style="width:40px;height:40px;line-height:40px" class="" data-calendar-day="">25</li><li style="width:40px;height:40px;line-height:40px" class="" data-calendar-day="">26</li><li style="width:40px;height:40px;line-height:40px" class="" data-calendar-day="">27</li><li style="width:40px;height:40px;line-height:40px" class="" data-calendar-day="">28</li><li style="width:40px;height:40px;line-height:40px" class="" data-calendar-day="">29</li><li style="width:40px;height:40px;line-height:40px" class="" data-calendar-day="">30</li><li style="width:40px;height:40px;line-height:40px" class="" data-calendar-day="">31</li><li style="width:40px;height:40px;line-height:40px" class="new" data-calendar-day="">1</li><li style="width:40px;height:40px;line-height:40px" class="new" data-calendar-day="">2</li><li style="width:40px;height:40px;line-height:40px" class="new" data-calendar-day="">3</li><li style="width:40px;height:40px;line-height:40px" class="new" data-calendar-day="">4</li><li style="width:40px;height:40px;line-height:40px" class="new" data-calendar-day="">5</li><li style="width:40px;height:40px;line-height:40px" class="new" data-calendar-day="">6</li><li style="width:40px;height:40px;line-height:40px" class="new" data-calendar-day="">7</li></ol></li><li style="width: 280px;"><ol class="days"><li style="width:40px;height:40px;line-height:40px" class="old" data-calendar-day="">25</li><li style="width:40px;height:40px;line-height:40px" class="old" data-calendar-day="">26</li><li style="width:40px;height:40px;line-height:40px" class="old" data-calendar-day="">27</li><li style="width:40px;height:40px;line-height:40px" class="old" data-calendar-day="">28</li><li style="width:40px;height:40px;line-height:40px" class="old" data-calendar-day="">29</li><li style="width:40px;height:40px;line-height:40px" class="old" data-calendar-day="">30</li><li style="width:40px;height:40px;line-height:40px" class="old" data-calendar-day="">31</li><li style="width:40px;height:40px;line-height:40px" class="" data-calendar-day="">1</li><li style="width:40px;height:40px;line-height:40px" class="" data-calendar-day="">2</li><li style="width:40px;height:40px;line-height:40px" class="" data-calendar-day="">3</li><li style="width:40px;height:40px;line-height:40px" class="" data-calendar-day="">4</li><li style="width:40px;height:40px;line-height:40px" class="" data-calendar-day="">5</li><li style="width:40px;height:40px;line-height:40px" class="" data-calendar-day="">6</li><li style="width:40px;height:40px;line-height:40px" class="" data-calendar-day="">7</li><li style="width:40px;height:40px;line-height:40px" class="" data-calendar-day="">8</li><li style="width:40px;height:40px;line-height:40px" class="" data-calendar-day="">9</li><li style="width:40px;height:40px;line-height:40px" class=" now" data-calendar-day="">10</li><li style="width:40px;height:40px;line-height:40px" class="" data-calendar-day="">11</li><li style="width:40px;height:40px;line-height:40px" class="" data-calendar-day="">12</li><li style="width:40px;height:40px;line-height:40px" class="" data-calendar-day="">13</li><li style="width:40px;height:40px;line-height:40px" class="" data-calendar-day="">14</li><li style="width:40px;height:40px;line-height:40px" class="" data-calendar-day="">15</li><li style="width:40px;height:40px;line-height:40px" class="" data-calendar-day="">16</li><li style="width:40px;height:40px;line-height:40px" class="" data-calendar-day="">17</li><li style="width:40px;height:40px;line-height:40px" class="" data-calendar-day="">18</li><li style="width:40px;height:40px;line-height:40px" class="" data-calendar-day="">19</li><li style="width:40px;height:40px;line-height:40px" class="" data-calendar-day="">20</li><li style="width:40px;height:40px;line-height:40px" class="" data-calendar-day="">21</li><li style="width:40px;height:40px;line-height:40px" class="" data-calendar-day="">22</li><li style="width:40px;height:40px;line-height:40px" class="" data-calendar-day="">23</li><li style="width:40px;height:40px;line-height:40px" class="" data-calendar-day="">24</li><li style="width:40px;height:40px;line-height:40px" class="" data-calendar-day="">25</li><li style="width:40px;height:40px;line-height:40px" class="" data-calendar-day="">26</li><li style="width:40px;height:40px;line-height:40px" class="" data-calendar-day="">27</li><li style="width:40px;height:40px;line-height:40px" class="" data-calendar-day="">28</li><li style="width:40px;height:40px;line-height:40px" class="" data-calendar-day="">29</li><li style="width:40px;height:40px;line-height:40px" class="" data-calendar-day="">30</li><li style="width:40px;height:40px;line-height:40px" class="new" data-calendar-day="">1</li><li style="width:40px;height:40px;line-height:40px" class="new" data-calendar-day="">2</li><li style="width:40px;height:40px;line-height:40px" class="new" data-calendar-day="">3</li><li style="width:40px;height:40px;line-height:40px" class="new" data-calendar-day="">4</li><li style="width:40px;height:40px;line-height:40px" class="new" data-calendar-day="">5</li></ol></li><li style="width: 280px;"><ol class="days"><li style="width:40px;height:40px;line-height:40px" class="old" data-calendar-day="">29</li><li style="width:40px;height:40px;line-height:40px" class="old" data-calendar-day="">30</li><li style="width:40px;height:40px;line-height:40px" class="" data-calendar-day="">1</li><li style="width:40px;height:40px;line-height:40px" class="" data-calendar-day="">2</li><li style="width:40px;height:40px;line-height:40px" class="" data-calendar-day="">3</li><li style="width:40px;height:40px;line-height:40px" class="" data-calendar-day="">4</li><li style="width:40px;height:40px;line-height:40px" class="" data-calendar-day="">5</li><li style="width:40px;height:40px;line-height:40px" class="" data-calendar-day="">6</li><li style="width:40px;height:40px;line-height:40px" class="" data-calendar-day="">7</li><li style="width:40px;height:40px;line-height:40px" class="" data-calendar-day="">8</li><li style="width:40px;height:40px;line-height:40px" class="" data-calendar-day="">9</li><li style="width:40px;height:40px;line-height:40px" class="" data-calendar-day="">10</li><li style="width:40px;height:40px;line-height:40px" class="" data-calendar-day="">11</li><li style="width:40px;height:40px;line-height:40px" class="" data-calendar-day="">12</li><li style="width:40px;height:40px;line-height:40px" class="" data-calendar-day="">13</li><li style="width:40px;height:40px;line-height:40px" class="" data-calendar-day="">14</li><li style="width:40px;height:40px;line-height:40px" class="" data-calendar-day="">15</li><li style="width:40px;height:40px;line-height:40px" class="" data-calendar-day="">16</li><li style="width:40px;height:40px;line-height:40px" class="" data-calendar-day="">17</li><li style="width:40px;height:40px;line-height:40px" class="" data-calendar-day="">18</li><li style="width:40px;height:40px;line-height:40px" class="" data-calendar-day="">19</li><li style="width:40px;height:40px;line-height:40px" class="" data-calendar-day="">20</li><li style="width:40px;height:40px;line-height:40px" class="" data-calendar-day="">21</li><li style="width:40px;height:40px;line-height:40px" class="" data-calendar-day="">22</li><li style="width:40px;height:40px;line-height:40px" class="" data-calendar-day="">23</li><li style="width:40px;height:40px;line-height:40px" class="" data-calendar-day="">24</li><li style="width:40px;height:40px;line-height:40px" class="" data-calendar-day="">25</li><li style="width:40px;height:40px;line-height:40px" class="" data-calendar-day="">26</li><li style="width:40px;height:40px;line-height:40px" class="" data-calendar-day="">27</li><li style="width:40px;height:40px;line-height:40px" class="" data-calendar-day="">28</li><li style="width:40px;height:40px;line-height:40px" class="" data-calendar-day="">29</li><li style="width:40px;height:40px;line-height:40px" class="" data-calendar-day="">30</li><li style="width:40px;height:40px;line-height:40px" class="" data-calendar-day="">31</li><li style="width:40px;height:40px;line-height:40px" class="new" data-calendar-day="">1</li><li style="width:40px;height:40px;line-height:40px" class="new" data-calendar-day="">2</li><li style="width:40px;height:40px;line-height:40px" class="new" data-calendar-day="">3</li><li style="width:40px;height:40px;line-height:40px" class="new" data-calendar-day="">4</li><li style="width:40px;height:40px;line-height:40px" class="new" data-calendar-day="">5</li><li style="width:40px;height:40px;line-height:40px" class="new" data-calendar-day="">6</li><li style="width:40px;height:40px;line-height:40px" class="new" data-calendar-day="">7</li><li style="width:40px;height:40px;line-height:40px" class="new" data-calendar-day="">8</li><li style="width:40px;height:40px;line-height:40px" class="new" data-calendar-day="">9</li></ol></li></ul></div></div><div class="view view-month" style="width: 280px;"><div class="calendar-hd"><a href="javascript:;" data-calendar-display-month="" class="calendar-display">2018</a><div class="calendar-arrow"><span class="prev" title="上一年" data-calendar-arrow-month="">&lt;</span><span class="next" title="下一年" data-calendar-arrow-month="">&gt;</span></div></div><ol class="calendar-ct month-items" style="width: 280px; height: 280px;"><li style="width:70px;height:70px;line-height:70px" data-calendar-month="">1月</li><li style="width:70px;height:70px;line-height:70px" data-calendar-month="">2月</li><li style="width:70px;height:70px;line-height:70px" data-calendar-month="">3月</li><li style="width:70px;height:70px;line-height:70px" data-calendar-month="" class="now">4月</li><li style="width:70px;height:70px;line-height:70px" data-calendar-month="">5月</li><li style="width:70px;height:70px;line-height:70px" data-calendar-month="">6月</li><li style="width:70px;height:70px;line-height:70px" data-calendar-month="">7月</li><li style="width:70px;height:70px;line-height:70px" data-calendar-month="">8月</li><li style="width:70px;height:70px;line-height:70px" data-calendar-month="">9月</li><li style="width:70px;height:70px;line-height:70px" data-calendar-month="">10月</li><li style="width:70px;height:70px;line-height:70px" data-calendar-month="">11月</li><li style="width:70px;height:70px;line-height:70px" data-calendar-month="">12月</li></ol></div></div></div><div class="calendar-label" style="display: none;"><p>HelloWorld</p><i></i></div></div>
						<span id="harvest_time"></span>
					</li>
					<li>
						<lable>结束时间</lable>
						<input onblur="checksampling_time()" type="text" name="endtime" value="" id="dt-b" placeholder="选择日期" readonly="readonly">
								<div id="dd-b" class="calendar calendar-modal calendar-d" style="width: 280px; height: 330px; left: 419.141px; top: 521px; z-index: 999; display: none;"><div class="calendar-inner" style="width: 280px;"><div class="calendar-views"><div class="view view-date" style="width: 280px;"><div class="calendar-hd"><a href="javascript:;" data-calendar-display-date="" class="calendar-display">2018/<span class="m">4</span></a><div class="calendar-arrow"><span class="prev" title="上一月" data-calendar-arrow-date="">&lt;</span><span class="next" title="下一月" data-calendar-arrow-date="">&gt;</span></div></div><div class="calendar-ct" style="width: 280px; height: 280px;"><ol class="week"><li style="width:40px;height:40px;line-height:40px">日</li><li style="width:40px;height:40px;line-height:40px">一</li><li style="width:40px;height:40px;line-height:40px">二</li><li style="width:40px;height:40px;line-height:40px">三</li><li style="width:40px;height:40px;line-height:40px">四</li><li style="width:40px;height:40px;line-height:40px">五</li><li style="width:40px;height:40px;line-height:40px">六</li></ol><ul class="date-items"><li style="width: 280px;"><ol class="days"><li style="width:40px;height:40px;line-height:40px" class="old" data-calendar-day="">25</li><li style="width:40px;height:40px;line-height:40px" class="old" data-calendar-day="">26</li><li style="width:40px;height:40px;line-height:40px" class="old" data-calendar-day="">27</li><li style="width:40px;height:40px;line-height:40px" class="old" data-calendar-day="">28</li><li style="width:40px;height:40px;line-height:40px" class="" data-calendar-day="">1</li><li style="width:40px;height:40px;line-height:40px" class="" data-calendar-day="">2</li><li style="width:40px;height:40px;line-height:40px" class="" data-calendar-day="">3</li><li style="width:40px;height:40px;line-height:40px" class="" data-calendar-day="">4</li><li style="width:40px;height:40px;line-height:40px" class="" data-calendar-day="">5</li><li style="width:40px;height:40px;line-height:40px" class="" data-calendar-day="">6</li><li style="width:40px;height:40px;line-height:40px" class="" data-calendar-day="">7</li><li style="width:40px;height:40px;line-height:40px" class="" data-calendar-day="">8</li><li style="width:40px;height:40px;line-height:40px" class="" data-calendar-day="">9</li><li style="width:40px;height:40px;line-height:40px" class="" data-calendar-day="">10</li><li style="width:40px;height:40px;line-height:40px" class="" data-calendar-day="">11</li><li style="width:40px;height:40px;line-height:40px" class="" data-calendar-day="">12</li><li style="width:40px;height:40px;line-height:40px" class="" data-calendar-day="">13</li><li style="width:40px;height:40px;line-height:40px" class="" data-calendar-day="">14</li><li style="width:40px;height:40px;line-height:40px" class="" data-calendar-day="">15</li><li style="width:40px;height:40px;line-height:40px" class="" data-calendar-day="">16</li><li style="width:40px;height:40px;line-height:40px" class="" data-calendar-day="">17</li><li style="width:40px;height:40px;line-height:40px" class="" data-calendar-day="">18</li><li style="width:40px;height:40px;line-height:40px" class="" data-calendar-day="">19</li><li style="width:40px;height:40px;line-height:40px" class="" data-calendar-day="">20</li><li style="width:40px;height:40px;line-height:40px" class="" data-calendar-day="">21</li><li style="width:40px;height:40px;line-height:40px" class="" data-calendar-day="">22</li><li style="width:40px;height:40px;line-height:40px" class="" data-calendar-day="">23</li><li style="width:40px;height:40px;line-height:40px" class="" data-calendar-day="">24</li><li style="width:40px;height:40px;line-height:40px" class="" data-calendar-day="">25</li><li style="width:40px;height:40px;line-height:40px" class="" data-calendar-day="">26</li><li style="width:40px;height:40px;line-height:40px" class="" data-calendar-day="">27</li><li style="width:40px;height:40px;line-height:40px" class="" data-calendar-day="">28</li><li style="width:40px;height:40px;line-height:40px" class="" data-calendar-day="">29</li><li style="width:40px;height:40px;line-height:40px" class="" data-calendar-day="">30</li><li style="width:40px;height:40px;line-height:40px" class="" data-calendar-day="">31</li><li style="width:40px;height:40px;line-height:40px" class="new" data-calendar-day="">1</li><li style="width:40px;height:40px;line-height:40px" class="new" data-calendar-day="">2</li><li style="width:40px;height:40px;line-height:40px" class="new" data-calendar-day="">3</li><li style="width:40px;height:40px;line-height:40px" class="new" data-calendar-day="">4</li><li style="width:40px;height:40px;line-height:40px" class="new" data-calendar-day="">5</li><li style="width:40px;height:40px;line-height:40px" class="new" data-calendar-day="">6</li><li style="width:40px;height:40px;line-height:40px" class="new" data-calendar-day="">7</li></ol></li><li style="width: 280px;"><ol class="days"><li style="width:40px;height:40px;line-height:40px" class="old" data-calendar-day="">25</li><li style="width:40px;height:40px;line-height:40px" class="old" data-calendar-day="">26</li><li style="width:40px;height:40px;line-height:40px" class="old" data-calendar-day="">27</li><li style="width:40px;height:40px;line-height:40px" class="old" data-calendar-day="">28</li><li style="width:40px;height:40px;line-height:40px" class="old" data-calendar-day="">29</li><li style="width:40px;height:40px;line-height:40px" class="old" data-calendar-day="">30</li><li style="width:40px;height:40px;line-height:40px" class="old" data-calendar-day="">31</li><li style="width:40px;height:40px;line-height:40px" class="" data-calendar-day="">1</li><li style="width:40px;height:40px;line-height:40px" class="" data-calendar-day="">2</li><li style="width:40px;height:40px;line-height:40px" class="" data-calendar-day="">3</li><li style="width:40px;height:40px;line-height:40px" class="" data-calendar-day="">4</li><li style="width:40px;height:40px;line-height:40px" class="" data-calendar-day="">5</li><li style="width:40px;height:40px;line-height:40px" class="" data-calendar-day="">6</li><li style="width:40px;height:40px;line-height:40px" class="" data-calendar-day="">7</li><li style="width:40px;height:40px;line-height:40px" class="" data-calendar-day="">8</li><li style="width:40px;height:40px;line-height:40px" class="" data-calendar-day="">9</li><li style="width:40px;height:40px;line-height:40px" class=" now" data-calendar-day="">10</li><li style="width:40px;height:40px;line-height:40px" class="" data-calendar-day="">11</li><li style="width:40px;height:40px;line-height:40px" class="" data-calendar-day="">12</li><li style="width:40px;height:40px;line-height:40px" class="" data-calendar-day="">13</li><li style="width:40px;height:40px;line-height:40px" class="" data-calendar-day="">14</li><li style="width:40px;height:40px;line-height:40px" class="" data-calendar-day="">15</li><li style="width:40px;height:40px;line-height:40px" class="" data-calendar-day="">16</li><li style="width:40px;height:40px;line-height:40px" class="" data-calendar-day="">17</li><li style="width:40px;height:40px;line-height:40px" class="" data-calendar-day="">18</li><li style="width:40px;height:40px;line-height:40px" class="" data-calendar-day="">19</li><li style="width:40px;height:40px;line-height:40px" class="" data-calendar-day="">20</li><li style="width:40px;height:40px;line-height:40px" class="" data-calendar-day="">21</li><li style="width:40px;height:40px;line-height:40px" class="" data-calendar-day="">22</li><li style="width:40px;height:40px;line-height:40px" class="" data-calendar-day="">23</li><li style="width:40px;height:40px;line-height:40px" class="" data-calendar-day="">24</li><li style="width:40px;height:40px;line-height:40px" class="" data-calendar-day="">25</li><li style="width:40px;height:40px;line-height:40px" class="" data-calendar-day="">26</li><li style="width:40px;height:40px;line-height:40px" class="" data-calendar-day="">27</li><li style="width:40px;height:40px;line-height:40px" class="" data-calendar-day="">28</li><li style="width:40px;height:40px;line-height:40px" class="" data-calendar-day="">29</li><li style="width:40px;height:40px;line-height:40px" class="" data-calendar-day="">30</li><li style="width:40px;height:40px;line-height:40px" class="new" data-calendar-day="">1</li><li style="width:40px;height:40px;line-height:40px" class="new" data-calendar-day="">2</li><li style="width:40px;height:40px;line-height:40px" class="new" data-calendar-day="">3</li><li style="width:40px;height:40px;line-height:40px" class="new" data-calendar-day="">4</li><li style="width:40px;height:40px;line-height:40px" class="new" data-calendar-day="">5</li></ol></li><li style="width: 280px;"><ol class="days"><li style="width:40px;height:40px;line-height:40px" class="old" data-calendar-day="">29</li><li style="width:40px;height:40px;line-height:40px" class="old" data-calendar-day="">30</li><li style="width:40px;height:40px;line-height:40px" class="" data-calendar-day="">1</li><li style="width:40px;height:40px;line-height:40px" class="" data-calendar-day="">2</li><li style="width:40px;height:40px;line-height:40px" class="" data-calendar-day="">3</li><li style="width:40px;height:40px;line-height:40px" class="" data-calendar-day="">4</li><li style="width:40px;height:40px;line-height:40px" class="" data-calendar-day="">5</li><li style="width:40px;height:40px;line-height:40px" class="" data-calendar-day="">6</li><li style="width:40px;height:40px;line-height:40px" class="" data-calendar-day="">7</li><li style="width:40px;height:40px;line-height:40px" class="" data-calendar-day="">8</li><li style="width:40px;height:40px;line-height:40px" class="" data-calendar-day="">9</li><li style="width:40px;height:40px;line-height:40px" class="" data-calendar-day="">10</li><li style="width:40px;height:40px;line-height:40px" class="" data-calendar-day="">11</li><li style="width:40px;height:40px;line-height:40px" class="" data-calendar-day="">12</li><li style="width:40px;height:40px;line-height:40px" class="" data-calendar-day="">13</li><li style="width:40px;height:40px;line-height:40px" class="" data-calendar-day="">14</li><li style="width:40px;height:40px;line-height:40px" class="" data-calendar-day="">15</li><li style="width:40px;height:40px;line-height:40px" class="" data-calendar-day="">16</li><li style="width:40px;height:40px;line-height:40px" class="" data-calendar-day="">17</li><li style="width:40px;height:40px;line-height:40px" class="" data-calendar-day="">18</li><li style="width:40px;height:40px;line-height:40px" class="" data-calendar-day="">19</li><li style="width:40px;height:40px;line-height:40px" class="" data-calendar-day="">20</li><li style="width:40px;height:40px;line-height:40px" class="" data-calendar-day="">21</li><li style="width:40px;height:40px;line-height:40px" class="" data-calendar-day="">22</li><li style="width:40px;height:40px;line-height:40px" class="" data-calendar-day="">23</li><li style="width:40px;height:40px;line-height:40px" class="" data-calendar-day="">24</li><li style="width:40px;height:40px;line-height:40px" class="" data-calendar-day="">25</li><li style="width:40px;height:40px;line-height:40px" class="" data-calendar-day="">26</li><li style="width:40px;height:40px;line-height:40px" class="" data-calendar-day="">27</li><li style="width:40px;height:40px;line-height:40px" class="" data-calendar-day="">28</li><li style="width:40px;height:40px;line-height:40px" class="" data-calendar-day="">29</li><li style="width:40px;height:40px;line-height:40px" class="" data-calendar-day="">30</li><li style="width:40px;height:40px;line-height:40px" class="" data-calendar-day="">31</li><li style="width:40px;height:40px;line-height:40px" class="new" data-calendar-day="">1</li><li style="width:40px;height:40px;line-height:40px" class="new" data-calendar-day="">2</li><li style="width:40px;height:40px;line-height:40px" class="new" data-calendar-day="">3</li><li style="width:40px;height:40px;line-height:40px" class="new" data-calendar-day="">4</li><li style="width:40px;height:40px;line-height:40px" class="new" data-calendar-day="">5</li><li style="width:40px;height:40px;line-height:40px" class="new" data-calendar-day="">6</li><li style="width:40px;height:40px;line-height:40px" class="new" data-calendar-day="">7</li><li style="width:40px;height:40px;line-height:40px" class="new" data-calendar-day="">8</li><li style="width:40px;height:40px;line-height:40px" class="new" data-calendar-day="">9</li></ol></li></ul></div></div><div class="view view-month" style="width: 280px;"><div class="calendar-hd"><a href="javascript:;" data-calendar-display-month="" class="calendar-display">2018</a><div class="calendar-arrow"><span class="prev" title="上一年" data-calendar-arrow-month="">&lt;</span><span class="next" title="下一年" data-calendar-arrow-month="">&gt;</span></div></div><ol class="calendar-ct month-items" style="width: 280px; height: 280px;"><li style="width:70px;height:70px;line-height:70px" data-calendar-month="">1月</li><li style="width:70px;height:70px;line-height:70px" data-calendar-month="">2月</li><li style="width:70px;height:70px;line-height:70px" data-calendar-month="">3月</li><li style="width:70px;height:70px;line-height:70px" data-calendar-month="" class="now">4月</li><li style="width:70px;height:70px;line-height:70px" data-calendar-month="">5月</li><li style="width:70px;height:70px;line-height:70px" data-calendar-month="">6月</li><li style="width:70px;height:70px;line-height:70px" data-calendar-month="">7月</li><li style="width:70px;height:70px;line-height:70px" data-calendar-month="">8月</li><li style="width:70px;height:70px;line-height:70px" data-calendar-month="">9月</li><li style="width:70px;height:70px;line-height:70px" data-calendar-month="">10月</li><li style="width:70px;height:70px;line-height:70px" data-calendar-month="">11月</li><li style="width:70px;height:70px;line-height:70px" data-calendar-month="">12月</li></ol></div></div></div><div class="calendar-label"><p>HelloWorld</p><i></i></div></div>
								<span id="sampling_time" class="err"></span>
					</li>
		    	</ul>
		    	<div class="examine-option">
		    		<a class="examine-pass"">通过</a><a class="examine-reject" href="javascript:void(0)"">驳回</a><a class="examine-back" href="javascript:void(0)" onclick="returnForm()">返回</a>
		    	</div>
		    </div>
		    </form>
		</div>
	
	<script type="text/javascript">
		ok1 = false;
		function passForm(){
			$("select").trigger("blur");
			checkrole();
			if(ok1==true)
				$("#formCustomer").submit();
		}
		function rejectForm(){
			location.href="rejectCustomer1?id="+123;
		}
		function returnForm(){
			history.go(-1);
		}
		function checkrole(){
			var a=document.getElementsByName("category");
			for(var i=0;i<a.length;i++){
				if(a[i].checked){
					ok1=true;
				}
			}
		};
		$(function(){
			var date = new Date();
			year = date.getFullYear();
			months = date.getMonth()+1;
			days = date.getDate();
			 $("#dt").val(year+"-"+months+"-"+days); 
			$("#dt-b").val(year+"-"+months+"-"+(days+1));

			$('#dd-b').on('click','.days',function(){
				var x = $('#dt').val();
				setTimeout(function(){
					var y =  $('#dt-b').val();
					var begin = x.split('-');
					var end = y.split('-');
					if(begin[1]<10){
						begin[1]='0'+begin[1];
					};
					if(begin[2]<10){
						begin[2]='0'+begin[2];
					};
					if(end[1]<10){
						end[1]='0'+end[1];
					};
					if(end[2]<10){
						end[2]='0'+end[2];
					};
					if((end[0]+end[1]+end[2])-(begin[0]+begin[1]+begin[2])<=0){
						$('#dt-b').val('');
						alert('请选择正确的结束时间');
					}
				},100)
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
		})
	</script>

<div id="cl-dashboard" class="bootstrap-iso-codelive"> <div id="cl-toolbar" class="cl-panel" style="background-color: white;"> <div id="cl-normal-buttons"> <div class="cl-btn" id="cl-product-container"> <span> <div> <div class="cl-product-image cl-product-image-myeclipse"> &nbsp; </div> <div id="cl-collapse-dashboard-container"> <span class="cl-mdi cl-mdi-play"> </span> </div> </div>  </span> <div class="cl-popover cl-show-only-transition cl-left" style="top: -13px; left: -230px; display: none;"> <div class="cl-arrow"></div> <h3 class="cl-popover-title" style="display: none;">    </h3> <div class="cl-popover-content"> <div slot="content" style="width: 200px"> Click to show and hide the panel. </div> </div> </div>  </div> <div> <hr class="cl-toolbar-separator"> <span> <button id="cl-dashboard-main-panel-button" type="button" class="cl-btn cl-btn-default cl-btn-block cl-toolbar-button" aria-label="Info Sign"> <span class="cl-mdi cl-mdi-menu" aria-hidden="true"></span> </button>  </span> <div class="cl-popover cl-show-only-transition cl-left" style="top: -3px; left: -231px; display: none;"> <div class="cl-arrow"></div> <h3 class="cl-popover-title" style="display: none;">    </h3> <div class="cl-popover-content"> <div slot="content" style="width: 200px"> Open the CodeLive panel to view files loaded from your IDE, open files in the IDE, and enable Live Preview. </div> </div> </div> <hr class="cl-toolbar-separator">  <span> <button id="cl-dashboard-inspector-button" type="button" class="cl-btn cl-btn-default cl-btn-block cl-toolbar-button" aria-label="Edit" style="color"> <span class="cl-mdi cl-mdi-auto-fix" aria-hidden="true"></span> </button>  </span> <div class="cl-popover cl-show-only-transition cl-left" style="top: 36px; left: -231px; display: none;"> <div class="cl-arrow"></div> <h3 class="cl-popover-title" style="display: none;">    </h3> <div class="cl-popover-content"> <div slot="content" style="width: 200px"> Hover on an element to see where it comes from, and click to open it in your IDE </div> </div> </div> <hr class="cl-toolbar-separator"> </div> </div> <div id="cl-mini-buttons"> <div class="cl-container-fluid cl-text-center"> <div class="cl-row cl-clearfix"> <div class="cl-col-xs-6"> <span> <button id="cl-connection-indicator" type="button" aria-label="Edit" class="cl-btn cl-btn-default cl-disabled cl-btn-block cl-toolbar-button cl-btn-xs cl-connected cl-status-connected"> <span aria-hidden="true" class="cl-mdi cl-mdi-cast-connected"></span> </button>  </span> <div class="cl-popover cl-show-only-transition cl-left" style="top: -34px; left: -182px; display: none;"> <div class="cl-arrow"></div> <h3 class="cl-popover-title" style="display: none;">    </h3> <div class="cl-popover-content"> <div slot="content" style="width: 150px"> <span> Connected to the IDE using CodeLive. </span>  </div> </div> </div> </div> <div class="cl-col-xs-6">  <span> <button id="cl-refresh-indicator" type="button" aria-label="Edit" class="cl-status-off cl-btn cl-disabled cl-btn-default cl-btn-block cl-toolbar-button cl-btn-xs"> <span class="cl-mdi cl-mdi-refresh" aria-hidden="true"></span> </button>  </span> <div class="cl-popover cl-show-only-transition cl-left" style="top: -24px; left: -276px; display: none;"> <div class="cl-arrow"></div> <h3 class="cl-popover-title" style="display: none;">    </h3> <div class="cl-popover-content"> <div slot="content"> <div style="width: 250px"> No need to reload the page at this time. </div> </div> </div> </div> </div> </div> <div class="cl-row cl-clearfix"> <div class="cl-col-xs-6">  <span> <button id="cl-notification-indicator" type="button" aria-label="Edit" class="cl-status-off cl-btn cl-disabled cl-btn-default cl-btn-block cl-toolbar-button cl-btn-xs"> <span class="cl-mdi cl-mdi-alert-circle-outline" aria-hidden="true"></span> </button>  </span> <div class="cl-popover cl-show-only-transition cl-left" style="top: -14px; left: -182px; display: none;"> <div class="cl-arrow"></div> <h3 class="cl-popover-title" style="display: none;">    </h3> <div class="cl-popover-content"> <div slot="content"> <div style="width: 150px"> No alerts at this time. </div> </div> </div> </div> </div> <div class="cl-col-xs-6"> <div> <span> <button id="cl-lp-indicator" type="button" aria-label="Edit" class="cl-btn cl-btn-default cl-btn-block cl-toolbar-button cl-btn-xs cl-disabled cl-status-off"> <span class="cl-mdi cl-mdi-eye" aria-hidden="true"></span> </button>  </span> <div class="cl-popover cl-show-only-transition cl-left" style="top: -24px; left: -182px; display: none;"> <div class="cl-arrow"></div> <h3 class="cl-popover-title" style="display: none;">    </h3> <div class="cl-popover-content"> <div slot="content" style="width: 150px"> There are no files with Live Preview enabled. </div> </div> </div> </div>  </div> </div> </div> </div>  </div> </div> <div class="bootstrap-iso-codelive"> <div role="dialog" class="cl-modal fade" style="display: none;"> <div role="document" class="cl-modal-dialog"> <div class="cl-modal-content"> <div id="ci-modal-main-panel-header" slot="modal-header" class="cl-modal-header"> <div class="cl-clearfix"> <div id="cl-modal-main-panel-title-container" class="cl-col-xs-10 cl-text-left"> <span class="cl-mdi cl-mdi-menu"></span> <span class="cl-modal-title"> CodeLive Dashboard for Webclipse </span> </div> <div id="cl-close-main-panel-container" class="cl-col-xs-2 cl-text-right"> <button id="cl-close-main-panel-button" type="button" class="cl-btn cl-btn-default cl-btn-borderless"> <span class="cl-mdi cl-mdi-close" aria-hidden="true"></span> </button> </div> </div> </div> <div id="ci-file-list-modal-body" slot="modal-body" class="cl-modal-body">  </div> <div slot="modal-footer"> </div> </div> </div> </div> </div></body>
<script>
		ok1 = false;
		function passForm(){
			$("select").trigger("blur");
			checkrole();
			if(ok1==true)
				$("#formCustomer").submit();
		}
		function rejectForm(){
			location.href="rejectCustomer1?id="+${user.id};
		}
		function returnForm(){
			history.go(-1);
		}
		function checkrole(){
			var a=document.getElementsByName("category");
			for(var i=0;i<a.length;i++){
				if(a[i].checked){
					ok1=true;
				}
			}
		};
		$(function(){
			var date = new Date();
			year = date.getFullYear();
			months = date.getMonth()+1;
			days = date.getDate();
			 $("#dt").val(year+"-"+months+"-"+days); 
			$("#dt-b").val(year+"-"+months+"-"+(days+1));

			$('#dd-b').on('click','.days',function(){
				var x = $('#dt').val();
				setTimeout(function(){
					var y =  $('#dt-b').val();
					var begin = x.split('-');
					var end = y.split('-');
					if(begin[1]<10){
						begin[1]='0'+begin[1];
					};
					if(begin[2]<10){
						begin[2]='0'+begin[2];
					};
					if(end[1]<10){
						end[1]='0'+end[1];
					};
					if(end[2]<10){
						end[2]='0'+end[2];
					};
					if((end[0]+end[1]+end[2])-(begin[0]+begin[1]+begin[2])<=0){
						$('#dt-b').val('');
						alert('请选择正确的结束时间');
					}
				},100)
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
		})
	</script>
</html>
