<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html lang="en">
<head>
	<meta charset="UTF-8">
	<title>Document</title>
	<link rel="stylesheet" type="text/css" href="../../app/css/reset.css"/>
	<link rel="stylesheet" href="../../app/css/p_chartView.css" />
	
</head>

<script type="text/javascript" src="../../app/js/jquery.js" ></script>
<script type="text/javascript" src="../../app/js/browsing.js" ></script>
<script type="text/javascript" src="../../app/js/echarts.min.js" ></script>
<script type="text/javascript" src="../../app/js/IM-index.js"></script>
<body>

	<!-- 内容顶部路由页显示  -->
	<p class="top_url_box box">
	</p>
	<article class="arcbox box">
		<form action="" method="post">
			<span class="nzw_zl">农作物大类别 </span> 
			<select id="allcan" name="nzw_spacies" class="nzw_spacies"><option value="0">--请选择--</option><option value="1">水果类</option><option value="2">谷物类</option><option value="3">油料类</option><option value="4">坚果类</option><option value="5">香辛类</option><option value="6">饲料类</option></select> 
			<span class="nzw_zl">农作物种类 </span> 
			<select id="nzw_spacies" name="nzw_spacies" class="nzw_spacies">
				<option>--请选择--</option>
			</select> 
			
			
			<!-- 省市县下拉框 -->
			<span>地区</span>
			<span class="region">
			<select id="shen" name="province" class="province" onchange="changeShen(this.value,'shen','shi','xian')">
				<option selected="" value="请选择">请选择</option>
			</select>
			<!-- 时间下拉框 -->
			<span>年份 </span>
			<span class="data_ymd">
			<select id="year" name="year" class="year" onchange="changeYear()">
				<option selected="" value="请选择">请选择</option>
			</select>
			
			<span>污染率 </span> 
			<select id="pollutionRate" name="pollutionRate" class="pollutionRate">
				<option value="0-20">0~20%</option>
				<option value="21-40">21~40%</option>
				<option value="41-60">41~60%</option>
				<option value="61-80">61~80%</option>
				<option value="81-100">81~100%</option>
				<option value="0-100">0~100%</option>
			</select>
			<input class="search" type="button" value="搜索" id="find">
		
	</span></span></form></article>
	<article class="echartmap" style="padding-left: 70px;">
		
		<div id="main" class="echart_map" _echarts_instance_="ec_1521172575568" style="-webkit-tap-highlight-color: transparent; user-select: none;"><div style="position: relative; overflow: hidden; width: 940px; height: 695px; padding: 0px; margin: 0px; border-width: 0px; cursor: default;"></div></div>
		<script type="text/javascript" src="/glory/static/js/linkage3_.js"></script>
		<script type="text/javascript">
			var myChart = echarts.init(document.getElementById('main'));
				var arr=null;
				var arry=null;
			$(function(){
				var option={
						legend:{data:[]},
						tooltip:{trigger:'axis'},
						itemStyle:{
									normal:{
											color:function(params){
												var colorList = ['#EFE42A','#64BD3D','#EE9201','#29AAE3', '#B74AE5','#0AAF9F','#E89589','#Edd201','#29ccE3','#B7aaE5','#0fde9F','#444666'];
												return colorList[params.dataIndex];
											}, 
											label:{show:false} 
									} 
						},
						yAxis: {},
						xAxis: {data : [''],axisLabel:{interval: 0}},
						series: []
				};
				

//				    var du1=$("id").value();//所有毒
//				for(var i=0;i<4;i++)
//				{
//                    if(du1!=null)
//					{
//                        shu[i]=du1
//						i++
//					}
//                    if(du2!=null)
//                    {
//                        shu[i]=du1
//                        i++s
//                    }
//				}
                var su=new Array()
                su[0]=2
                su[1]=3
                su[2]=4
                su[3]=5
                su[4]=6
                var shu=new Array()
                shu[0]="a"
                shu[1]="b"
                shu[2]="c"
                shu[3]="d"
                shu[4]="e"
				var m='';
					var k="";
				for(var i=0;i<shu.length;i++)
				{
					m+=shu[i]
					k+=su[i]
					if(i!=shu.length-1)
					{
					    k+=","
					}

				}

                var a=["2.36","3.55","2.11","6.7","0.55"]

					option = {
						title : {
							text: '毒素含量统计图',

						},
						tooltip : {
							trigger: 'axis'
						},
						legend: {
							data:['毒素含量']
						},
						toolbox: {
							show : true,
							feature : {
								mark : {show: true},
								dataView : {show: true, readOnly: false},
								magicType : {show: true, type: ['line', 'bar']},
								restore : {show: true},
								saveAsImage : {show: true}
							}
						},
						calculable : true,
						xAxis : [
							{
								type : 'category',
								data : m

							}
						],
						yAxis : [
							{
								type : 'value'
							}
						],
						series : [
							{
								name:'毒素含量',
								type:'bar',
								data: a
//                                    ["2.36","3.55","2.11","6.7","0.55"]
							},]
					};
					myChart.clear();
					myChart.setOption(option);

			
				})
		</script>
	</article>
</body>

</html>
