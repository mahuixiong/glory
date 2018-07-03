<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%
	String path=request.getContextPath();
	String basePath=request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>

<html lang="en">
<head>
	<meta charset="UTF-8">
	<title>浏览记录</title>
	<link rel="stylesheet" type="text/css" href="../../app/css/reset.css"/>
	 <link rel="stylesheet" href="../../app/css/p_BrowsingHistory.css" /> 
	<link rel="stylesheet" type="text/css" href="../../app/css/page.css"/>
	<link rel="stylesheet" type="text/css" href="../../app/css/p_downloadRecord.css" />
	
</head>
<%--<script type="text/javascript" src="<%=basePath %>app/js/jquery1.11.3-jquery.min.js"></script>--%>
<script type="text/javascript" src="<%=basePath %>/app/js/jquery.js" ></script>
<script type="text/javascript" src="../../app/js/browsing1.js" ></script>
<script type="text/javascript" src="../../app/js/hover.js" ></script>
<body>
 <article class="z-box" data-genuitec-lp-enabled="false" data-genuitec-file-id="wc1-49" data-genuitec-path="/glory/src/main/webapp/WEB-INF/views/person_BrowsingHistory.jsp">
    <div class="top_url_box box clear">
    <span style="color: green;">只能查看最近20条浏览记录</span>
    </div>
    <article class="arc0">
    	<div class="arc1">
    	<span class="yanpbh">样品编号</span>
    	<span class="addrr">取样信息</span>
    	<span class="nzwclass">农作物种类</span>
    	<span class="wrl">污染率</span>
    	<span class="qydate">取样时间</span>
    	<span class="caozuo">操作</span>
    	</div>
    </article>
    <article class="article_box box">
    	
    	
    	<div class="articles_box">
    		<div class="seria_num">
    			<!-- <div class="sample_name">样品编号</div> -->
    			<div class="sample_id">R-13-2888888</div>
    		</div>
    		
    		<div class="seria_right">
	    		<div class="articles_box_nr addr sample_info1">
	    			<ul>
	    				<li><span class="sam_info_value">安徽六安寿县</span></li>
	    				<li><span>取样人：</span><span class="sam_info_value">胡飞</span></li>
	    				<li><span>气候特征：</span><span class="sam_info_value"></span></li>
	    				<li><span>环境描述：</span><span class="sam_info_value"></span></li>
	    			</ul>
	    		</div>
	    		<div class="articles_box_nr nzwclass sample_info1">
	    			<ul>
	    				<li><span></span><span class="sam_info_value">稻谷</span></li>
	    			</ul>
	    		</div>
	    		<div class="articles_box_nr wrl sample_info1">
	    			<ul>
	    				<li><span></span><span class="sam_info_value">100.00%</span></li>
	    			</ul>
	    		</div>
	    		<div class="articles_box_nr qydate sample_info1">
	    			<ul>
	    				<li><span></span><span class="sam_info_value">2013-09-29</span></li>
	    			</ul>
	    		</div>
	    		<div class="articles_box_nr caozuo sample_info4">
	    			<ul>
	    				<li class="downline" >
	    				<!-- <a href="javascript:exportExcel();">下载</a> -->
	    				<a href="javascript:void(0)" onclick="sss(0)">下载</a>
	    				</li>
	    				<li class="showbox">展开 <div style="display: none">24</div><span id="showa"></span></li>
	    				<li class="hidebox">收起 <span id="hidea"></span></li>	    			</ul>
	    		</div>
	    	</div>
    	</div>
    	
    	<div class="articles_box">
    		<div class="seria_num">
    			<!-- <div class="sample_name">样品编号</div> -->
    			<div class="sample_id">R-13-2322323</div>
    		</div>

    		<div class="seria_right">
	    		<div class="articles_box_nr addr sample_info1">
	    			<ul>
	    				<li><span class="sam_info_value">安徽六安寿县</span></li>
	    				<li><span>取样人：</span><span class="sam_info_value">胡飞</span></li>
	    				<li><span>气候特征：</span><span class="sam_info_value"></span></li>
	    				<li><span>环境描述：</span><span class="sam_info_value"></span></li>
	    			</ul>
	    		</div>
	    		<div class="articles_box_nr nzwclass sample_info1">
	    			<ul>
	    				<li><span></span><span class="sam_info_value">稻谷</span></li>
	    			</ul>
	    		</div>
	    		<div class="articles_box_nr wrl sample_info1">
	    			<ul>
	    				<li><span></span><span class="sam_info_value">100.00%</span></li>
	    			</ul>
	    		</div>
	    		<div class="articles_box_nr qydate sample_info1">
	    			<ul>
	    				<li><span></span><span class="sam_info_value">2013-09-29</span></li>
	    			</ul>
	    		</div>
	    		<div class="articles_box_nr caozuo sample_info4">
	    			<ul>
	    				<li class="downline" >
	    				<!-- <a href="javascript:exportExcel();">下载</a> -->
	    				<a href="javascript:void(0)" onclick="sss(1)">下载</a>
	    				</li>
	    				<li class="showbox">展开 <div style="display: none">22</div><span id="showa"></span></li>
	    				<li class="hidebox">收起 <span id="hidea"></span></li>	    			</ul>
	    		</div>
	    	</div>
    	</div>
    </article>
 </article>
</body>
<script>
	//查到的数据用ajax铺上
	//每个的sss(要设置一个id)i就可以
	//下载的data中要加入相应的属性

	var i;
	var o=0;
    function sss(id)
	{
	    i=id+1
        var a=$(".sample_id").eq(id).text()
	    $.ajax({
			url:"http://localhost:8080/rest/down/download",
			type:"post",
			data:{"bianma":a,"hang":i},
			success:function (res) {
				alert("下载成功")
				o++
            }
		})
	}
</script>

</html>
