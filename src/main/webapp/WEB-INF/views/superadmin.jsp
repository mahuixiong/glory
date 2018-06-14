<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    <%
    String path=request.getContextPath();
    String basePath=request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";  
    %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html lang="en">
<head>
<base href="<%=basePath%>">  
  <meta charset="UTF-8">
  <meta name="viewport" content="width=device-width, initial-scale=1.0">
  <meta http-equiv="X-UA-Compatible" content="ie=edge">
  <title>农产品毒素数据库</title>
  
  <link href="<%=basePath%>app/css/layui.css" rel="stylesheet">
  <link href="<%=basePath%>app/css/index.css" rel="stylesheet">
  
</head>
<body class="layui-layout-body">
  <div class="layui-layout layui-layout-admin">
    <div class="layui-header">
      <ul class="layui-nav" style="text-align: center;">
        <li class="layui-nav-item" >
        <a href="javascript:;" style="font-size: 30px; font-family:'楷体';color:#fff;
         font-weight:700;line-height:60px;display:block;">
       		 中国农产品真菌毒素及产毒菌污染数据库
        </a></li>
      </ul>
      <!-- <div class="layui-logo">中国农产品真菌毒素及产毒真菌污染数据库</div> -->
      <ul class="layui-nav layui-layout-right">
        <li class="layui-nav-item"><a href="javascript:;"></a></li>
        <li class="layui-nav-item"><a href="javascript:if(confirm('确实要退出吗?'))location='<%=basePath%>/rest/user/logout'" class="header_end">退出</a></li>
      </ul>
    </div>
    
    <div class="layui-side">
      <div class="layui-side-scroll">
     
        <!-- 左侧导航区域（可配合layui已有的垂直导航） -->
        <ul class="layui-nav layui-nav-tree"  lay-filter="test">
       	 	  <li class="back_1 layui-nav-item public-ifame-item index dianji">
              	<a href="javascript:;">首页</a>
            </li>
              <li class="back_1 layui-nav-item public-ifame-item yhgl dianji">
              <a href="javascript:;">用户管理</a>
            </li>
         	  <li class="back_1 layui-nav-item shgl">
            	<a class="" href="javascript:;">审核管理</a>
           		 <dl class="layui-nav-child">
              <dd><a href="javascript:;" class="public-ifame-item dianji">客户审核</a></dd>
              <dd><a href="javascript:;" class="public-ifame-item dianji">信息管理员审核</a></dd>
            </dl>
          </li>
        	  <li class="back_1 layui-nav-item sjlr">
              <a class="" href="javascript:;">数据录入</a>
              <dl class="layui-nav-child">
                <dd><a href="javascript:;" class="public-ifame-item lbgl dianji">农产品类别管理</a></dd>
                <dd><a href="javascript:;" class="public-ifame-item dsgl dianji">毒素管理</a></dd>
                <dd><a href="javascript:;" class="public-ifame-item xxlr dianji">样品信息录入</a></dd>
              </dl>
            </li>
         	  <li class="back_1 layui-nav-item sjll">
                <a class="" href="javascript:;">数据浏览</a>
                <dl class="layui-nav-child">
                  <dd><a href="javascript:;" class="public-ifame-item dianji">数据查看</a></dd>
                  <dd><a href="javascript:;" class="public-ifame-item dianji">图表查看</a></dd>
                  <dd><a href="javascript:;" class="public-ifame-item dianji">地域分布</a></dd>
                  <dd><a href="javascript:;" class="public-ifame-item dianji">浏览记录</a></dd>
                  <dd><a href="javascript:;" class="public-ifame-item dianji">下载记录</a></dd>
                  <dd><a href="javascript:;" class="public-ifame-item dianji">修改密码</a></dd>
                </dl>
              </li>
           	  <li class="back_1 layui-nav-item public-ifame-item aboutus dianji">
              <a href="javascript:;">联系我们</a>
            </li>
        </ul>
      </div>
    </div>
    
    <div class="layui-body">
      <div class="cont_layout">
        <div class="cont_bar">
        	<span class="zhanshi" style="flex: 1;padding-left: 2.5%;font-size: 18px;font-weight: 900">首页</span>
          	<i class="cont_bar_icon"></i>
          	<p>欢迎，超级管理</p>
          	<p onclick="person()" class="act">个人中心&nbsp;&nbsp;&nbsp;></p>
        </div>
        <!-- 内容主体区域 -->
        <div id="myframe" style="height:100%">
          <iframe id="mainframe" src="introduction2" frameborder="0" height="100%"></iframe>
        </div>
      </div>
    </div>
  </div>
  <script src="<%=basePath%>app/js/jquery-1.11.0.min.js"></script>
	<script src="<%=basePath%>app/js/layui.all.js"></script>
  <script>

    //JavaScript代码区域
    layui.use('element', function(){
    
      var element = layui.element;
      
    });
   
   


    $('.back_1').click(function(){


    
/*      	$('.back_1').children('a').css({'border-left':'0','width': '100%','background-color': '#fff',"color":"#4898FF !important"})
     	
     	$(this).children('a').css({'border-left':'7px solid #2b6dc1','width': '96%','background-color': '#4898FF'})
     	
     	$('.back_1').children('a').css("color","#4898FF !important")
     	  */
    })
    
    var oLi=$('.public-ifame-item').length;
		var arr=[
			'./introduction2',
			'./user-management-index',
			'./customerList',
			'./infomanagerList',
			'./categorylist',
			'./toxinlist',
			'./IM',
			'./introduction',
			'./person_chartView',
			'./person_regionalDistribution1',
			'./person_BrowsingHistory1',
			'./person_downloadRecord',
			'./person_updatePassword',
			'./contant',
			]
	for(let i=0;i<oLi;i++){
		$('.public-ifame-item').eq(i).click(function(){
				
				$('#mainframe').attr('src',arr[i])
		})
	}
	
/* 	var layuiBody = $(".layui-body").css("height");
	var layuiSide = $(".layui-side").css("height");
	layuiSide = layuiBody;
	console.log('layuiSide',layuiSide); */
	
	$(window).resize(function(){
	
		var layuiHeader = $(".layui-header").height();
		
		var windowH = $(window).height();
		
		var contH =  windowH - layuiHeader;
		
		$(".layui-body").css("height",contH+"px");
		
		var layuiBodyH = $(".layui-body").height();
		var layuiBodyW = $(".layui-body").width();
		
		var iframeW = $("#mainframe").contents().find("body").width();
		
		$("#mainframe").contents().find("body").css("height",layuiBodyH+"px");
		$("#mainframe").contents().find("body").css("width",layuiBodyW+"px");
		
		//console.log("111",layuiBodyH)
/* 		console.log("222",$("#mainframe").contents().find("body").height())*/
	}) 
	
/*   $(function(){
    		var role="<%=session.getAttribute("role")%>";
    		if( role==5){
    			//$('body').remove();
	    		$('.yhgl').remove();
	    		$('.shgl').remove();
	    		$('.sjlr').remove();
	    		
	    		//$('#mainframe').attr('src',"customerindex")
	    		
    		}
    		if( role==1){
	    		$('.sjll').remove();
	    		$('.shgl').remove();
	    		$('.sjlr').remove();
	    		
	    		//$('#mainframe').attr('src',"adminIndex")
    		}
    		
    		if( role==2){
	    		$('.sjll').remove();
	    		$('.shgl').remove();
	    		$('.yhgl').remove();
	    		$('.lbgl').remove();
	    		$('.dsgl').remove();
	    		//$('.xxlr').remove();
	    		
	    		
	    		//$('#mainframe').attr('src',"tolistim")
    		}
    		if( role==3){
	    		$('.sjll').remove();
	    		$('.sjlr').remove();
	    		$('.yhgl').remove();
	    		
	    		//$('#mainframe').attr('src',"./customer/selectAll")
	    		
    		}
    		
    		
    		//alert(myName.role)
    	})*/
    
    	
    	function person(){
			$('#mainframe').attr('src',"seeperson.jsp")
			$(this).toggleClass('activ')
	}
	
	$(".act").click(function(){
		
		$(this).addClass("activ")
		
	})
	$(".layui-nav").children().click(function(){
		
		$('.act').removeClass("activ")
		
	})
	
	$(".dianji").click(function(){
		$(".zhanshi").text(""+$(this).text());
	})
	$(".dianji").click(function(){
		$(".zhanshi").text(""+$(this).text());
	})
	

	
	
		
		
	
	
    </script>
</body>
</html>