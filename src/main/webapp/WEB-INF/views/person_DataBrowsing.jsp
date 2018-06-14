<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html lang="en">
<head>
	<meta charset="UTF-8">
	<title>Document</title>
	<link rel="stylesheet" type="text/css" href="../../app/css/reset.css"/>
	<link rel="stylesheet" href="../../app/css/p_DataBrowsing.css" />
	<link rel="stylesheet" type="text/css" href="../../app/css/page.css"/>
</head>
<script type="text/javascript" src="../../app/js/jquery.js" ></script>
<script type="text/javascript" src="../../app/js/browsing.js" ></script>
<body>
	<header class="header">
		<div class="header_box box">
			<div class="logo_box">
				LOGO
			</div>
			<div class="logo_right_box">
				<ul class="logo_right_left">
					<li><a href="person_DataBrowsing.html"><img src="../../static/img/data.png"/><span class="logo_bt">数据浏览</span></a></li>
					<li><a href="person_chartView.html"><img src="../../static/img/chart.png"/><span class="logo_bt">图表查看</span></a></li>
					<li><a href="person_regionalDistribution.html"><img src="../../static/img/position.png"/><span class="logo_bt">地域分布图</span></a></li>
				</ul>
				<ul class="logo_2right">
					<li><a href="#"><img src="../../static/img/person.png"/><span class="logo_bt" id="logo_mycenter">个人中心</span></a></li>
					<li><a href="login.html"><span class="logo_bt">退出</span><img src="../../static/img/sinout.png"/></a></li>
				</ul>
			</div>
			<div id="dropdown_box">
				<ul class="dropdown_ul">
					<li class="dropdown_li"><a href="person_BrowsingHistory.html"><img src="../../static/img/browsing.png"/><span>浏览记录</span></a></li>
					<li class="dropdown_li"><a href="person_downloadRecord.html"><img src="../../static/img/down.png"/><span>下载记录</span></a></li>
					<li class="dropdown_li"><a href="person_updatePassword.html"><img src="../../static/img/update.png"/><span>密码修改</span></a></li>
				</ul>
			</div>
		</div>
		
        
	</header>
	<!--
     		内容顶部路由页显示
        -->
    <p class="top_url_box box">
    	<span>当前页面 ：</span><a>数据浏览</a>
    </p>
    <article class="arcbox box">
    	<form action="" method="post">
    		<span id="id_num">样品编号</span> 
    		<input type="text" name="yp_id" class="yp_id" />
    		<span>污染率 </span>
    		<select name="pollutionRate" class="pollutionRate">
    			<option value="0~20%">0~20%</option>
    			<option value="20%~40%">20%~40%</option>
    			<option value="40%~60%">40%~60%</option>
    			<option value="60%~80%">60%~80%</option>
    			<option value="80%~100%">80%~100%</option>
    			<option value="请选择" selected="selected">请选择</option>
    		</select>
    		<span>主要污染菌种类 </span>
    		<select name="mainSpecies" class="mainSpecies">
				<option value="DON ">DON </option>
				<option value="伏马菌素 ">伏马菌素 </option>
				<option value="玉米赤霉烯酮 ">玉米赤霉烯酮 </option>
				<option value="黄曲霉毒素B1 ">黄曲霉毒素B1 </option>
				<option value="黄曲霉毒素B2 ">黄曲霉毒素B2 </option>
				<option value="黄曲霉毒素G1 ">黄曲霉毒素G1 </option>
				<option value="黄曲霉毒素G2 ">黄曲霉毒素G2 </option>
				<option value="黄曲霉毒素M1 ">黄曲霉毒素M1 </option>
				<option value="黄曲霉毒素M2 ">黄曲霉毒素M2 </option>
				<option value="展青霉毒素 ">展青霉毒素 </option>
				<option value="赭曲霉毒素A ">赭曲霉毒素A </option>
				<option selected value="请选择">请选择</option>
	        </select>
			<span>农作物种类 </span>
			<select name="nzw_spacies" class="nzw_spacies">
		        <option value="水果">水果</option>
		        <option value="蔬菜">蔬菜</option>
		        <option value="谷物">谷物</option>
		        <option value="菌类">菌类</option>
		        <option selected value="请选择">请选择</option>
        	</select>
			<span>时间 </span>
			<span class="data_ymd">
				<select name="year" class="year">
			        <option>2017</option>
			        <option>2016</option>
			        <option>2015</option>
			        <option>2014</option>
			        <option selected value="请选择">请选择</option>
        		</select><span>年</span>
        		<select name="mounth" class="month">
			        <option>01</option>
			        <option>02</option>
			        <option>03</option>
			        <option>04</option>
			        <option>05</option>
			        <option>06</option>
			        <option>07</option>
			        <option>08</option>
			        <option>09</option>
			        <option>10</option>
			        <option>11</option>
			        <option>12</option>
			        <option selected value="请选择">请选择</option>
        		</select><span>月</span>
        		<select name="year" class="datetime">
			        <option>01</option>
			        <option>02</option>
			        <option>03</option>
			        <option>04</option>
			        <option>05</option>
			        <option>06</option>
			        <option>07</option>
			        <option>08</option>
			        <option>09</option>
			        <option>10</option>
			        <option>11</option>
			        <option>12</option>
			        <option selected value="请选择">请选择</option>
        		</select><span>日</span>
			</span>
			<div >
			<span>地点</span>
			<span class="region">
				<select name="province" class="province">
			        <option>2017</option>
			        <option>2016</option>
			        <option>2015</option>
			        <option>2014</option>
			        <option selected value="请选择">请选择</option>
        		</select><span>省</span>
        		<select name="city" class="city">
			        <option>01</option>
			        <option>02</option>
			        <option>03</option>
			        <option>04</option>
			        <option>05</option>
			        <option>06</option>
			        <option>07</option>
			        <option>08</option>
			        <option>09</option>
			        <option>10</option>
			        <option>11</option>
			        <option>12</option>
			        <option selected value="请选择">请选择</option>
        		</select><span>市</span>
        		<input type="text" name="" class="county" value="" /><span>县</span>
			</span>
    		<input class="search" type="submit" value="搜索"/>
    		</div>
    	</form>
    </article>
    <article class="arc1 box">
    	<span>采样信息</span>
    	<span>样品毒素信息</span>
    	<span>产毒菌株信息</span>
    </article>
    <article class="article_box box">
    	<div class="articles_box">
    		<div class="seria_num">
    			<div class="sample_name">样品编号</div>
    			<div class="sample_id">c-72100-1</div>
    		</div>
    		<div class="seria_right">
	    		<div class="articles_box_nr sample_info1">
	    			<ul>
	    				<li><span>地点：</span><span class="sam_info_value">陕西省宝鸡市干阳县</span></li>
	    				<li><span>污染率：</span><span class="sam_info_value">95%</span></li>
	    				<li><span>取样时间：</span><span class="sam_info_value">2016-03-10</span></li>
	    				<li><span>农作物种类：</span><span class="sam_info_value">小麦</span></li>
	    				<li><span>含量：</span><span class="sam_info_value">15.22</span></li>
	    				<li><span>菌株原始编号：</span><span class="sam_info_value">r2245211-3-1</span></li>
	    				<li><span>图片文件：</span><span class="sam_info_value">dsadwawer1321132.jpg</span></li>
	    				<li><span>文档信息：</span><span class="sam_info_value">陕西宝鸡C-72100-1-462.doc</span></li>
	    				<li><span>文档信息：</span><span class="sam_info_value">陕西宝鸡C-72100-1-462.doc</span></li>
	    			</ul>
	    		</div>
	    		<div class="articles_box_nr sample_info2">
	    			<ul>
	    				<li><span>主要毒素种类：</span><span class="sam_info_value">伏马素</span></li>
	    				<li><span>含量：</span><span class="sam_info_value">15.22</span></li>
	    				
	    			</ul>
	    		</div>
	    		<div class="articles_box_nr sample_info3">
	    			<ul>
	    				<li><span>菌株原始编号：</span><span class="sam_info_value">r2245211-3-1</span></li>
	    				<li><span>图片文件：</span><span class="sam_info_value">dsadwawer1321132.jpg</span></li>
	    				<li><span>文档信息：</span><span class="sam_info_value">陕西宝鸡C-72100-1-462.doc</span></li>
	    				
	    			</ul>
	    		</div>
	    		<div class="articles_box_nr sample_info4">
	    			<ul>
	    				<li class="downline">下载</li>
	    				<li class="showbox">展开 <span id="showa"></span></li>
	    				<li class="hidebox">收起 <span id="hidea"></span></li>
	    				
	    			</ul>
	    		</div>
	    	</div>
    	</div>
    	<div class="articles_box">
    		<div class="seria_num">
    			<div class="sample_name">样品编号</div>
    			<div class="sample_id">c-72100-1</div>
    		</div>
    		<div class="seria_right">
	    		<div class="articles_box_nr sample_info1">
	    			<ul>
	    				<li><span>地点：</span><span class="sam_info_value">陕西省宝鸡市干阳县</span></li>
	    				<li><span>污染率：</span><span class="sam_info_value">95%</span></li>
	    				<li><span>取样时间：</span><span class="sam_info_value">2016-03-10</span></li>
	    				<li><span>农作物种类：</span><span class="sam_info_value">小麦</span></li>
	    				<li><span>含量：</span><span class="sam_info_value">15.22</span></li>
	    				<li><span>菌株原始编号：</span><span class="sam_info_value">r2245211-3-1</span></li>
	    				<li><span>图片文件：</span><span class="sam_info_value">dsadwawer1321132.jpg</span></li>
	    				<li><span>文档信息：</span><span class="sam_info_value">陕西宝鸡C-72100-1-462.doc</span></li>
	    				<li><span>文档信息：</span><span class="sam_info_value">陕西宝鸡C-72100-1-462.doc</span></li>
	    			</ul>
	    		</div>
	    		<div class="articles_box_nr sample_info2">
	    			<ul>
	    				<li><span>主要毒素种类：</span><span class="sam_info_value">伏马素</span></li>
	    				<li><span>含量：</span><span class="sam_info_value">15.22</span></li>
	    				
	    			</ul>
	    		</div>
	    		<div class="articles_box_nr sample_info3">
	    			<ul>
	    				<li><span>菌株原始编号：</span><span class="sam_info_value">r2245211-3-1</span></li>
	    				<li><span>图片文件：</span><span class="sam_info_value">dsadwawer1321132.jpg</span></li>
	    				<li><span>文档信息：</span><span class="sam_info_value">陕西宝鸡C-72100-1-462.doc</span></li>
	    				
	    			</ul>
	    		</div>
	    		<div class="articles_box_nr sample_info4">
	    			<ul>
	    				<li class="downline">下载</li>
	    				<li class="showbox">展开 <span id="showa"></span></li>
	    				<li class="hidebox">收起 <span id="hidea"></span></li>
	    				
	    			</ul>
	    		</div>
	    	</div>
    	</div>
    	<div class="articles_box">
    		<div class="seria_num">
    			<div class="sample_name">样品编号</div>
    			<div class="sample_id">c-72100-1</div>
    		</div>
    		<div class="seria_right">
	    		<div class="articles_box_nr sample_info1">
	    			<ul>
	    				<li><span>地点：</span><span class="sam_info_value">陕西省宝鸡市干阳县</span></li>
	    				<li><span>污染率：</span><span class="sam_info_value">95%</span></li>
	    				<li><span>取样时间：</span><span class="sam_info_value">2016-03-10</span></li>
	    				<li><span>农作物种类：</span><span class="sam_info_value">小麦</span></li>
	    				<li><span>含量：</span><span class="sam_info_value">15.22</span></li>
	    				<li><span>菌株原始编号：</span><span class="sam_info_value">r2245211-3-1</span></li>
	    				<li><span>图片文件：</span><span class="sam_info_value">dsadwawer1321132.jpg</span></li>
	    				<li><span>文档信息：</span><span class="sam_info_value">陕西宝鸡C-72100-1-462.doc</span></li>
	    				<li><span>文档信息：</span><span class="sam_info_value">陕西宝鸡C-72100-1-462.doc</span></li>
	    			</ul>
	    		</div>
	    		<div class="articles_box_nr sample_info2">
	    			<ul>
	    				<li><span>主要毒素种类：</span><span class="sam_info_value">伏马素</span></li>
	    				<li><span>含量：</span><span class="sam_info_value">15.22</span></li>
	    				
	    			</ul>
	    		</div>
	    		<div class="articles_box_nr sample_info3">
	    			<ul>
	    				<li><span>菌株原始编号：</span><span class="sam_info_value">r2245211-3-1</span></li>
	    				<li><span>图片文件：</span><span class="sam_info_value">dsadwawer1321132.jpg</span></li>
	    				<li><span>文档信息：</span><span class="sam_info_value">陕西宝鸡C-72100-1-462.doc</span></li>
	    				
	    			</ul>
	    		</div>
	    		<div class="articles_box_nr sample_info4">
	    			<ul>
	    				<li class="downline">下载</li>
	    				<li class="showbox">展开 <span id="showa"></span></li>
	    				<li class="hidebox">收起 <span id="hidea"></span></li>
	    				
	    			</ul>
	    		</div>
	    	</div>
    	</div>
    	
    	<div class="pageing-con">
			<ul class="pageing-info box">
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
				<li class="pageing-item  disabled" >
					<a data-id="9" href="javascript:void(0)" title="">9</a>
				</li>
				<li class="pageing-item next"><a data-id="" href="" title="">下一页</a></li>
				<li class="pageing-item foot"><a data-id="" href="" title="">尾页</a></li>
			</ul>
	    </div>
		
    </article>
    
</body>
</html>
