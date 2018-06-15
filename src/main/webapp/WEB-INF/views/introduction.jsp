<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
	<head>
		<meta charset="UTF-8">
		<title>项目简介</title>
		<link rel="stylesheet" href="../../app/css/project introduction.css">
		<script src="../../app/js/jquery-1.11.0.min.js"></script>
		<script src="../../app/js/project.js"></script>
		</head>

	<body>
		<!--标题结束-->
		
		<div class="content_box">
			
		<!--内容结束-->
		<div class="col_box">

			<ul class="column_list">
				<li class="column_1"><img src="../../app/img/col_list_1.jpg" alt="">
				<span class="c1">谷物类</span>
				<a href="person_first2.html">
				<div class="text">
    			<div class="imgtext" style="display: none;"> 
    			<span>谷物类包含：玉米，小麦，稻谷等多种类别</span>
    			</div>
    			</div>
    			</a>
  				</li>
  				<li class="column_2" onclick="shousuo(2)"><img src="../../app/img/col_list_2.jpg" alt="">
				<span class="c1">油料类</span>
				<a href="person_first2.html">
				<div class="text">
    			<div class="imgtext" style="display: none;"> 
    			<span style="top:56%">油料类包含：玉米油等</span>
    			</div>
    			</div>
    			</a>
  				</li>
  				<li class="column_3" onclick="shousuo(3)"><img src="../../app/img/col_list_3.jpg" alt="">
				<span class="c1">水果类</span>
				<a href="person_first2.html">
				<div class="text">
    			<div class="imgtext" style="display: none;"> 
    			<span>水果类包含：苹果，梨，葡萄等多种类别</span>
    			</div>
    			</div>
    			</a>
  				</li>

  				<li class="column_4" onclick="shousuo(5)"><img src="../../app/img/col_list_4.png" alt="">
				<span class="c1">香辛类</span>
				<div class="text">
    			<div class="imgtext" style="display: none;"> 
    			<span>香辛料类包含：花椒， 八角，肉桂，辣椒，草果等多种类别</span>
    			</div>
    			</div>
  				</li>
  				
  				<li class="column_5" onclick="shousuo(4)"><img src="../../app/img/col_list_5.png" alt="">
				<span class="c1">坚果类</span>
				<div class="text">
    			<div class="imgtext" style="display: none;"> 
    			<span>坚果类包含：杏仁，葵花籽，榛子，核桃等多种类别</span>
    			</div>
    			</div>
  				</li>
 	  			
 	  			<li class="column_6" onclick="shousuo(6)"><img src="../../app/img/col_list_6.png" alt="">
				<span class="c1">饲料类</span>
				<div class="text">
    			<div class="imgtext" style="display: none;"> 
    			<span style="top:45%">饲料类包含：豆粕，棉籽粕，麸皮，饲用玉米，饲用小麦，DGGS等多种类别</span>
    			</div>
    			</div>
  				</li>
  	  			<div class="clearfix"></div>
	  	  	</ul>
		</div>
		<!--栏目结束-->
		<!-- <div class="footer">
			<p>Copyright&nbsp;&nbsp;2012-2014&nbsp;&nbsp;中国农业科学院农产品加工所&nbsp;&nbsp;版权所有</p>
			<p>http：//iappst.caas.net.cn&nbsp;&nbsp;&nbsp;&nbsp;技术支持：中国农业科学院信息研究所</p>
			<p>地址：北京市海淀区西北旺农大南路1号农业科学院农产品加工研究所&nbsp;&nbsp;&nbsp;邮编：100193&nbsp;&nbsp;电话：010-62815836 &nbsp;&nbsp;传真：010-62895382</p>
		</div> -->
		
	</body>

	<script>
		function shousuo(id){
			var role="<%=session.getAttribute("role")%>";
			if(role==6){
				location.href="searchByCategory?id="+id;
			}else if(role==5){
				var ids="<%=session.getAttribute("cateid")%>";
				
				var newids = ids.split(",");
				var boolean=false;
				for(var i=0 ;i<newids.length ;i++ ){
					if(id==parseInt(newids[i])){
						boolean = true;
						location.href="searchByCategory?id="+id;
					}
				}
				if(!boolean){
					alert("您没有该品类的查看权限");
				}
			}else{
				
			}
			
			
		}
	</script>
</html>
