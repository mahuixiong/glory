<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
     <%
    String path=request.getContextPath();
    String basePath=request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
    %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">

<html>
	<head>
	<base href="<%=basePath%>"> 
		<meta charset="UTF-8">
		<title>项目简介</title>

		<link rel="stylesheet" href="<%=basePath%>app/css/project introduction2.css">
		<script src="<%=basePath%>app/js/jquery-1.11.0.min.js"></script>
		<link rel="stylesheet" href="../../app/css/project introduction2.css">
		<script src="../../app/js/jquery-1.11.0.min.js"></script>
		</head>

	<body>
		<!--标题结束-->
		<div class="box">
		<div class="content_box">
			<div class="content">
				<p class="ppp">真菌毒素是真菌的次生代谢产物，是自然发生的最危险的食品污染物之一。我国谷物、油料、水果、坚果、香辛料、饲料原料等农产品加工原料受真菌毒素及其产毒
菌污染严重，食品安全事件频发，严重威胁我国人口健康，影响我国农产品出口贸易，阻碍农产品加工产业持续健康发展。</p><p class="ppp">围绕国民经济社会发展和科学研究重大需求，中国农业科学院农产品加工研究所牵头组织齐齐哈尔大学、安徽省农业科学院植物保护与农产品质量安全研究所辽宁工
程技术大学、中国农业科学院油料作物研究所、西北农林科技大学、北京出入境检验检疫局检验检疫技术中心、国家食品安全风险评估中心、中国农业科学院农业资
源与农业区划研究所等9家单位共同承担了科技部基础性工作专项重点项目“全国农产品加工原料真菌毒素及其产毒菌污染调查”项目（2013FY113400，2013年6月
-2018年5月），以谷物、油料、水果、坚果、香辛料、饲料原料等农产品加工原料为对象，在全国范围内开展普查，摸清了全国农产品加工原料真菌毒素及产毒真菌
污染情况，初步明确了我国主要农产品加工原料中真菌毒素种类和污染程度以及产毒真菌的种类、分布、含量，建立全国农产品加工原料真菌毒素及产毒真菌污染数
据库及菌种资源库，为开展农产品真菌毒素综合防控研究提供重要的菌种资源和系统科学的基础数据。</p>
			</div>
		</div>
		<!--内容结束-->
		<div class="col_box">
			<ul class="column">
				<li><img src="<%=basePath%>app/img/col_1.png" alt=""></li>
				<li><img src="<%=basePath%>app/img/col_2.png" alt=""></li>
				<li class="san"><img src="<%=basePath%>app/img/col_3.png" alt=""></li>
				
				
				<div class="clearfix"></div>
			</ul>
			<ul class="column_list">
				<li class="column_1" onclick="shousuo(1)"><img src="<%=basePath%>app/img/1.jpg" alt="">
				<span>谷物类</span>
				<div class="imgtext" style="display: none"> 
    			<span>谷物类包含：<br>玉米，小麦，稻谷等多种类别</span>
    			</div>
    			
  				</li>
  				<li class="column_2" onclick="shousuo(2)"><img src="<%=basePath%>app/img/2.jpg" alt="">
				<span>油料类</span>
				
    			<div class="imgtext" style="display: none;"> 
    			<span>油料类包含：<br>玉米油等</span>
    			
    			</div>
  				</li>
  				<li class="column_3" onclick="shousuo(3)"><img src="<%=basePath%>app/img/3.jpg" alt="">
				<span>水果类</span>
				
    			<div class="imgtext" style="display: none;"> 
    			<span>水果类包含：<br>苹果，梨，葡萄等多种类别</span>
    			
    			</div>
  				</li>
  				<li class="column_4" onclick="shousuo(4)"><img src="<%=basePath%>app/img/5.png" alt="">
				<span>香辛类</span>
				
    			<div class="imgtext" style="display: none;"> 
    			<span>香辛料类包含：<br>花椒， 八角，肉桂，辣椒，草果等多种类别</span>
    			
    			</div>
  				</li>
 	  			<li class="column_5" onclick="shousuo(5)"><img src="<%=basePath%>app/img/4.png" alt="">
				<span>坚果类</span>
				
    			<div class="imgtext" style="display: none;"> 
    			<span>坚果类包含：<br>杏仁，葵花籽，榛子，核桃等多种类别</span>
    			
    			</div>
  				</li>
 	  			<li style="margin-right:0;" class="column_6" onclick="shousuo(6)"><img src="<%=basePath%>app/img/6.png" alt="">
				<span>饲料类</span>
				
    			<div class="imgtext" style="display: none;"> 
    			<span>饲料类包含：豆粕，棉籽粕，麸皮，饲用玉米，饲用小麦，DGGS等多种类别</span>
    			
    			</div>
  				</li>
  	  			<div class="clearfix"></div>
	  	  	</ul>
		</div>
		<!--栏目结束-->
		<div class="footer">
			<p>Copyright&nbsp;&nbsp;2012-2014&nbsp;&nbsp;中国农业科学院农产品加工所&nbsp;&nbsp;版权所有</p>
			<p>http：//iappst.caas.net.cn&nbsp;&nbsp;&nbsp;&nbsp;技术支持：中国农业科学院信息研究所</p>
			<p>地址：北京市海淀区西北旺农大南路1号农业科学院农产品加工研究所&nbsp;&nbsp;&nbsp;
			邮编：100193&nbsp;&nbsp;电话：62819472 &nbsp;&nbsp;传真：62895874</p>
		</div>
	</div>
	</body>
	<script>
		function shousuo(id){

			
		}
	</script>
</html>
