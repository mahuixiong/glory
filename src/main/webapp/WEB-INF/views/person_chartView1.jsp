<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html lang="en">
<head>
	<meta charset="UTF-8">
	<title>图表查看</title>
	<link rel="stylesheet" type="text/css" href="../../app/css/reset.css" />
	<link rel="stylesheet" href="../../app/css/p_chartView.css" />
</head>
	<script type="text/javascript" src="../../app/js/jquery.js"></script>
	<script type="text/javascript" src="../../app/js/echarts.min.js"></script>
	<script type="text/javascript" src="../../app/js/person_aa.js" ></script>
	<script type="text/javascript">var url="../../rest/";</script>
	<script type="text/javascript" src="../../app/js/hover.js" ></script>
<body>

	<!-- 内容顶部路由页显示  -->
	<p class="top_url_box box">
		<span></span><a></a>
	</p>
	<article class="arcbox box">
		<form action="" method="post">
			<span class="nzw_zl">农作物大类别 </span> 
			<select id="allcan" name="nzw_spacies" class="nzw_spacies">
				<option>请选择</option>
			</select> 
			<span class="nzw_zl">农作物种类 </span> 
			<select id="nzw_spacies" name="nzw_spacies" class="nzw_spacies">
				<option>请选择</option>
			</select> 
			
			
			<!-- 省市县下拉框 -->
			<span class="nzw_zl">地区</span>
			<span class="region">
			<select id="shen" name="province" class="province"  onchange="changeShen(this.value,'shen','shi','xian')">
				<option selected value="请选择">请选择</option>
			</select>
			<!-- 时间下拉框 -->
			<span class="nzw_zl">年份 </span>
			<span class="data_ymd">
			<select id="year" name="year" class="year" onchange="changeYear()">
				<option selected value="请选择">请选择</option>
			</select>
			
			<span class="nzw_zl">污染率 </span> 
			<select id="pollutionRate" name="pollutionRate" class="pollutionRate">
				<option value="0-100" >0~100%</option>
				<option value="0-20"  >0~20%</option>
				<option value="21-40" >21~40%</option>
				<option value="41-60" >41~60%</option>
				<option value="61-80" >61~80%</option>
				<option value="81-100">81~100%</option>
			</select>
			<input class="search" type="button" value="搜索" id="find"/>
		</form>
	</article>

	<article class="echartmap">
		<div class="echart_an">
			<ul id="dusu" class="echart_ul">
			
			</ul>
		</div>
		<div id="main"  class="echart_map">
		
     	</div>
     	
		<script type="text/javascript" src="../../static/js/linkage3_.js"></script>
		<script type="text/javascript">
			var myChart = echarts.init(document.getElementById('main'));
				var arr=null;
				var arry=null;
			$(function(){
				$.post("../../rest/findallbigc",function(data){
				    var count ='<option value="0">请选择</option>';
				    for(var i=0 ; i<data.length; i++){
				    	 count = count +'<option  value="'+data[i].id+'">'+data[i].crop_category+'</option>';
				    }
				    $("#allcan").empty();
					$("#allcan").append(count);
				});	
				
				$("#allcan").change(function(){
					var id=  $("#allcan").val();
					 $("#shen").empty();
					 $("#nzw_spacies").empty();
					$.post("../../rest/findallbigc",function(data){
				    	var count ='<option value="0">请选择</option>';
					    for(var i=0 ; i<data.length; i++){
					    	if(data[i].id==id){
					    		 count = count +'<option selected="selected" value="'+data[i].id+'">'+data[i].crop_category+'</option>';
					    	}else{
					    		 count = count +'<option  value="'+data[i].id+'">'+data[i].crop_category+'</option>';
					    	}
					    }
					    $("#allcan").empty();
						$("#allcan").append(count);
					});	
					$.post("../../rest/findallsmallc","id="+id,function(data){
					    var count ='<option value="0">请选择</option>';
					    for(var i=0 ; i<data.length; i++){
					    	count = count +'<option  value="'+data[i].id+'">'+data[i].crop_species+'</option>';
					    }
					    $("#nzw_spacies").empty();
						$("#nzw_spacies").append(count);
					});
					$.post("../../rest/findallarea","id="+id,function(data){
					    var count ='<option value="0">请选择</option>';
					    for(var i=0 ; i<data.length; i++){
					    	 count = count +'<option  value="'+data[i].province+'">'+data[i].province+'</option>';
					    }
					    $("#shen").empty();
						$("#shen").append(count);
					});	
					$.post("../../rest/findallyear","id="+id,function(data){
					    var count ='<option value="0">请选择</option>';
					    for(var i=0 ; i<data.length; i++){
					    	 count = count +'<option  value="'+data[i].input_time+'">'+data[i].input_time+'</option>';
					    }
					    $("#year").empty();
						$("#year").append(count);
					});	
					$.post("../../rest/findalltoxin","id="+id,function(data){
					    var count='';
					    for(var i=0 ; i<data.length; i++){
					    	if(i==0){
					    		count = count +'<li><input type="radio" checked=checked onclick="drawAgain();" name="jlei" class="jlei" value="'+data[i].toxin_type+'"><span>'+data[i].toxin_type+'</span></li>';
					    	}else{
					    		count = count +'<li><input type="radio" name="jlei" onclick="drawAgain();" class="jlei" value="'+data[i].toxin_type+'"><span>'+data[i].toxin_type+'</span></li>';
					    	}
					    	 
					    }
					    $("#dusu").empty();
						$("#dusu").append(count);
					});	
				});
				
				
				//第一部分
				
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
				
					
				$("#find").click(function(){
					var id=  $("#allcan").val();
					var smallzl=  $("#nzw_spacies").val();
					var area = $("#shen").val();
					var year = $("#year").val();
					var num = $("#pollutionRate").val();
					var toxid =$('input:radio:checked').val();
					var toxnum=0;
					
					$.post("../../rest/findpar",
							"breed="+smallzl+"&toxid="+toxid,
							function(data){
							toxnum=data
							
					})
					
					$.post("../../rest/findallDTO",
							"id="+id+"&breed="+smallzl+"&area="+area+"&year="+year+"&num="+num+"&toxid="+toxid,
							function(data){
					   			arr=[];		
					   			arry=[];							//数据数组
								for(var i=0;i<data.length;i++){
									var list =  data[i].sample_toxin;
						     		for(var j=0; j<list.length; j++){
						     			if(list[j].sample_toxin_info.toxin_type==toxid){
						     				arr[i]=data[i].sample_id;
											arry[i]=list[j].toxin_count;
						     			};
						     		}
							    	
						     	}
						    option = {
							    title : {
							        text: '毒素含量统计图',
							        x:'center'
							        
							    },
							    tooltip : {
							        trigger: 'axis'
							    },
							    legend: {
							        data:['毒素含量'],
							        right:'160'
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
							        	name : "样品编号",
							            type : 'category',
							            data : arr,
							            axisLabel:{
							            	show: false
							            }
							        }
							    ],
							    yAxis : [
							        {
							        	name : "毒素含量(μg/kg)",
							            type : 'value'
							        }
							    ],
							    series : [{
							            name:'毒素含量',
							            type:'bar',
							            data:arry,
							            markLine: {
							            label: {
							                normal: {
							                    show: true,
							                    position: 'end',
							                    formatter: '{b}{c}'
							                }
							            },
							            data: [{
							            	type: 'average',
							                name: '标准值',
							                yAxis: toxnum
							            }]
	       							 }
							            
							        }]
							};
							myChart.clear();
							myChart.setOption(option);
					});	
				});
			});	
			function drawAgain(){
					var id=  $("#allcan").val();
					var smallzl=  $("#nzw_spacies").val();
					var area = $("#shen").val();
					var year = $("#year").val();
					var num = $("#pollutionRate").val();
					var toxid =$('input:radio:checked').val();
					var toxnum=0;
					$.post("../../rest/findpar",
							"breed="+smallzl+"&toxid="+toxid,
							function(data){
							toxnum=data
					})
					$.post("../../rest/findallDTO",
							"id="+id+"&breed="+smallzl+"&area="+area+"&year="+year+"&num="+num+"&toxid="+toxid,
							function(data){
							arr=[];		
					   		arry=[];	
							if(data!=null){
								for(var i=0;i<data.length;i++){
									var list =  data[i].sample_toxin;
						     		for(var j=0; j<list.length; j++){
						     			if(list[j].sample_toxin_info.toxin_type==toxid){
						     				arr[i]=data[i].sample_id;
											arry[i]=list[j].toxin_count;
						     			};
						     		}
							    	
						     	}
							}
					   			
						     option = {
							    title : {
							        text: '毒素含量统计图',
							        x:'center'
							        
							    },
							    tooltip : {
							        trigger: 'axis'
							    },
							    legend: {
							        data:['毒素含量'],
							        right:'160'
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
							        	name : "样品编号",
							            type : 'category',
							            data : arr,
							            axisLabel:{
							            	show: false
							            }
							        }
							    ],
							    yAxis : [
							        {
							        	name : "毒素含量(μg/kg)",
							            type : 'value'
							        }
							    ],
							    series : [{
							            name:'毒素含量',
							            type:'bar',
							            data:arry,
							            markLine: {
							            label: {
							                normal: {
							                    show: true,
							                    position: 'end',
							                    formatter: '{b}{c}'
							                }
							            },
							            data: [{
							            	type: 'average',
							                name: '标准值',
							                yAxis: toxnum
							            }]
	       							 }
							            
							        }]
							};
							myChart.clear();
							myChart.setOption(option);
					});	
			
				}
		</script>
	</article>
	<!-- <div class="footer">
			<p>Copyright&nbsp;&nbsp;2012-2014&nbsp;&nbsp;中国农业科学院农产品加工所&nbsp;&nbsp;版权所有</p>
			<p>http：//iappst.caas.net.cn</p><p>技术支持：中国农业科学院信息研究所</p>
			<p>地址：北京市海淀区西北旺农大南路1号农业科学院农产品加工研究所&nbsp;&nbsp;&nbsp;邮编：100193&nbsp;&nbsp;电话：010-62815836 &nbsp;&nbsp;传真：010-62895382</p>
		</div> -->
</body>
</html>
