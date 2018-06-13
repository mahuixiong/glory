<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">

<html>
<head>
    <meta charset="utf-8">
    <title>地域分布图</title>
    <script type="text/javascript" src="../../static/js/lib/jquery.js"></script>
    <script type="text/javascript" src="../../static/js/lib/raphael-min.js"></script>
    <script type="text/javascript" src="../../static/js/res/chinaMapConfig.js"></script>
    <script type="text/javascript" src="../../static/js/res/worldMapConfig.js"></script>
    <script type="text/javascript" src="../../static/js/map.js"></script>
	<link rel="stylesheet" type="text/css" href="../../static/css/reset.css" />
	<link rel="stylesheet" href="../../static/css/p_regionalDistribution.css" />
	<link rel="stylesheet" href="../../static/css/china.css" />
	<script type="text/javascript" src="../../static/js/echarts.min.js"></script>
	<script type="text/javascript" src="../../static/js/person_aa.js" ></script>
	<script type="text/javascript" src="../../static/js/hover.js" ></script>
   
   
    <style type="text/css">
        /* base */
        html{background:#fff;-webkit-text-size-adjust:100%;-ms-text-size-adjust:100%}body,ul,ol,dl,dd,h1,h2,h3,h4,h5,h6,p,form,fieldset,legend,input,textarea,select,button,th,td,div{margin:0; padding:0}button,input,select,textarea{font:12px/1.5 tahoma,Helvetica,arial,\5b8b\4f53}input,select,textarea{font-size:100%}table{border-collapse:collapse;border-spacing:0}th{text-align:inherit}fieldset,img{border:0}iframe{display:block}ol,ul,li{list-style:none}del{text-decoration:line-through}ins,a{text-decoration:none}a:focus{outline:none}h1,h2,h3,h4,h5,h6{font-size:100%}.clear{clear:both}.clearfix:after{content:".";display:block;height:0;font-size:0;clear:both;visibility:hidden}.clearfix{zoom:1}
        /* base */

        body{font:12px/1.5 "Lucida Grande","Lucida Sans Unicode", Tahoma, SimSun,Helvetica,sans-serif; color:#2E313A;}
        .wrap{width:80%;height:80%;margin:0 auto; 
        position:absolute;left:170px;right:0;
       background:url(/static/img//* bg.png */); border-left:1px solid #DDD; border-right:1px solid #DDD;}
        .items,.itemCon,.svggroup{height:100%}
        
        .regionMap{
        	width:80% !important;
        	
        }
        
        .MapColor{
            width:20% !important;
        }
        
        a{color:#0e4279; -moz-transition:color 0.3s ease 0s;}
        a:hover{color:#5B636A;}
        h1{ padding:20px 0 0 20px; font-size:24px; line-height:50px;}
        h2{ margin-top:30px; padding-left:10px; background-color: #ddd; font-size:14px; line-height:30px;}


        /* 提示自定义 */
        .stateTip, #StateTip{display:none; position:absolute; padding:8px; background:#fff; border:2px solid #2385B1; -moz-border-radius: 4px; -webkit-border-radius: 4px; border-radius: 4px; font-size:12px; font-family:Tahoma; color:#333;}

        .mapInfo i{ display:inline-block; width:15px; height:15px; margin-top:5px; line-height:15px; font-style:normal; background:#aeaeae; color:#fff; font-size:11px; font-family: Tahoma; -webkit-border-radius:15px; border-radius:15px; text-align:center}
        .mapInfo i.active{background:#E27F21;}
        .mapInfo span{ padding:0 5px 0 3px;}
        .mapInfo b{ font-weight:normal; color:#2770B5}
    </style>

    <script type="text/javascript">
    	var data;
    	function draw(){
            	var i = 1;
	            for(k in data){
	                if(i <= 12){
	                    var _cls = i < 4 ? 'active' : '';
	                    $('#MapControl .list1').append('<li name="'+k+'"><div class="mapInfo"><i class="'+_cls+'">'+(i++)+'</i><span>'+chinaMapConfig.names[k]+'</span><b>'+data[k].value+'</b></div></li>')
	                }else if(i <= 24){
	                    $('#MapControl .list2').append('<li name="'+k+'"><div class="mapInfo"><i>'+(i++)+'</i><span>'+chinaMapConfig.names[k]+'</span><b>'+data[k].value+'</b></div></li>')
	                }else{
	                    $('#MapControl .list3').append('<li name="'+k+'"><div class="mapInfo"><i>'+(i++)+'</i><span>'+chinaMapConfig.names[k]+'</span><b>'+data[k].value+'</b></div></li>')
	                }
	            }

            var mapObj_1 = {};
            var stateColorList = ['33ff00', '3300ff', '663399','ff0000'];

            $('#RegionMap').SVGMap({
                external: mapObj_1,
                mapName: 'china',
                mapWidth: '100%',
                mapHeight: '100%',
                stateData: data,
                // stateTipWidth: 118,
                // stateTipHeight: 47,
                // stateTipX: 2,
                // stateTipY: 0,
                stateTipHtml: function (mapData, obj) {
                    var _value = mapData[obj.id].value;
                    var _idx = mapData[obj.id].index;
                    var active = '';
                    _idx < 4 ? active = 'active' : active = '';
                    var tipStr = '<div class="mapInfo"><i class="' + active + '">' + _idx + '</i><span>' + obj.name + '</span><b>' + _value + '</b></div>';
                    return tipStr;
                }
            });
            $('#MapControl li').hover(function () {
                var thisName = $(this).attr('name');

                var thisHtml = $(this).html();
                $('#MapControl li').removeClass('select');
                $(this).addClass('select');
                $(document.body).append('<div id="StateTip"></div>');
                $('#StateTip').css({
                    left: $(mapObj_1[thisName].node).offset().left - 50,
                    top: $(mapObj_1[thisName].node).offset().top - 40
                }).html(thisHtml).show();
                mapObj_1[thisName].attr({
                    fill: '#E99A4D'
                });
            }, function () {
                var thisName = $(this).attr('name');

                $('#StateTip').remove();
                $('#MapControl li').removeClass('select');
                mapObj_1[$(this).attr('name')].attr({
                    fill: "#" + stateColorList[data[$(this).attr('name')].stateInitColor]
                });
            });

            $('#MapColor').show();
        }
        $(function(){
        	draw();
        	
			$("#find").click(function(){
					var smallzl=  $("#nzw_spacies").val();
					var year = $("#year").val();
					var toxid =$('input:radio:checked').val();
					
					$.post("../../rest/findpar",
							"breed="+smallzl+"&toxid="+toxid,
							function(data){
							
							$(".r_date").text(data*2+'-'+ data*4+'(μg/kg)');
							$(".y_date").text(data*1+'-'+ data*2+'(μg/kg)');
							$(".b_date").text(data*0.5+'-'+ data*1+'(μg/kg)');
							$(".g_date").text('0-'+ data*0.5+'(μg/kg)');
					})
					
					$.post("../../rest/findcountry","breed="+smallzl+"&year="+year+"&toxid="+toxid,
							function(dataTemp){
								console.log(dataTemp);//数组对象
								data = "{";
								for(var i = 0; i < dataTemp.length;){
									data+="\""+dataTemp[i].prochina+"\":{\"value\":"+dataTemp[i].num+",\"index\":\"\",\"stateInitColor\":"+dataTemp[i].colorid+"}";
									if(++i!=dataTemp.length){
										data+=",";
									}
								}
								data += "}";
								data = JSON.parse(data);
								draw(data);
							});
			});				
        });
    </script>
</head>
<body>
	<!-- 内容顶部路由页显示 -->
		<p class="top_url_box box">
			<span></span><a><a>
		</p>
		<article class="arcbox box">
		<form action="" method="post">
			<span class="nzw_zl">农作物大类别 </span> 
			<select id="allcan" name="nzw_spacies" class="nzw_spacies"><option value="0">--请选择--</option><option value="1">谷物类</option><option value="2">油料类</option><option value="3">水果类</option><option value="4">坚果类</option><option value="5">香辛类</option><option value="6">饲料类</option><option value="20">香薰类</option><option value="21">肉类</option></select> 
			<span class="nzw_zl">农作物种类 </span> 
			<select id="nzw_spacies" name="nzw_spacies" class="nzw_spacies">
				<option>--请选择--</option>
			</select> 
			<!-- 时间下拉框 -->
			<span>年份 </span>
			<span class="data_ymd">
			<select id="year" name="year" class="year" onchange="changeYear()">
				<option selected="" value="请选择">请选择</option>
			</select>
			<input class="search" type="button" value="搜索" id="find">
			
		
		</span></form></article>
 		<article class="echartmap">
			<ul id="dusu" class="echart_ul" style='margin-left: 33px;'>
		    <li><input type="radio" checked="checked" name="jlei" onclick="drawAgain();" class="jlei" value="黄曲霉毒素B1"><span>黄曲霉毒素B1</span></li>
			<li><input type="radio" checked="checked" name="jlei" onclick="drawAgain();" class="jlei" value="黄曲霉毒素B1"><span>黄曲霉毒素B1</span></li>
			<li><input type="radio" checked="checked" name="jlei" onclick="drawAgain();" class="jlei" value="黄曲霉毒素B1"><span>黄曲霉毒素B1</span></li>
			</ul>
<div class="wrap">
    <div class="items" id="Item9">
        <a href="javascript:;" class="fold"></a>
        <div class="itemCon">
            <style type="text/css">
                .regionList{float:left; margin-top:15px;}
                .regionList ul{float:left; width:110px; height:100%; margin-right:5px; display:inline; font-family:"微软雅黑"}
                .regionList ul li{ height:24px; margin-left:10px; padding:0 0px; border:1px solid #fff; line-height:24px;}
                .regionList ul li.select{border:1px solid #D3D3D3; background:#FFF1BF}

                .mapInfo i{ display:inline-block; width:15px; height:15px; margin-top:5px; line-height:15px; font-style:normal; background:#aeaeae; color:#fff; font-size:11px; font-family: Tahoma; -webkit-border-radius:15px; border-radius:15px; text-align:center}
                .mapInfo i.active{background:#E27F21;}
                .mapInfo span{ padding:0 5px 0 3px;}
                .mapInfo b{ font-weight:normal; color:#2770B5}

                .regionMap{float:left; margin-left:70px; display:inline;}
                #MapColor{display:none; float:left; width:10%;height: 60%; display:inline; 
                background:url(/static/img/sekuainew.pn) center 0 no-repeat; 
                background-size:100%; position: absolute; right:7%;}
            </style>
            <div id="Region" style="position:relative; height:100%;">
                <div class="regionMap" id="RegionMap"></div>
                <div id="MapColor">
                <div class="b_box">
                	<div class="re"></div>
                	<div class="r_date" style="float:left;"></div>
                </div>
                <div class="b_box">
                	<div class="zi"></div>
                	<div class="y_date" style="float:left;"></div>
                </div>
                <div class="b_box">
                	<div class="bl"></div>
                	<div class="b_date" style="float:left;"></div>
                </div>
               	<div class="b_box">
               		<div class="gr"></div>
               		<div class="g_date" style="float:left;"></div>
               	</div>
                
                </div>
            	<span style="display: inline-block;width: 8%;height: 28%;background: 
            	url('../../static/img/nanhai.jpg') no-repeat;background-size: 100%;margin-top: 31%;margin-left: -10%;"></span>
            </div>
        </div>
    </div>
</div>

<link rel="stylesheet" type="text/css" href="../../static/css/SyntaxHighlighter.css">
<script type="text/javascript" src="../../static/js/lib/SyntaxHighlighter.js"></script>
<script type="text/javascript">
			$(function(){
				$.post("../../rest/findallbigc",function(data){
				    var count ='<option value="0">--请选择--</option>';
				    for(var i=0 ; i<data.length; i++){
				    	 count = count +'<option  value="'+data[i].id+'">'+data[i].crop_category+'</option>'
				    }
				    $("#allcan").empty();
					$("#allcan").append(count);
				});	
				
				$("#allcan").change(function(){
					var id=  $("#allcan").val();
					 $("#shen").empty();
					 $("#nzw_spacies").empty();
					$.post("../../rest/findallbigc",function(data){
				    	var count ='<option value="0">--请选择--</option>';
					    for(var i=0 ; i<data.length; i++){
					    	if(data[i].id==id){
					    		 count = count +'<option selected="selected" value="'+data[i].id+'">'+data[i].crop_category+'</option>'
					    	}else{
					    		 count = count +'<option  value="'+data[i].id+'">'+data[i].crop_category+'</option>'
					    	}
					    }
					    $("#allcan").empty();
						$("#allcan").append(count);
					});	
					$.post("../../rest/findallsmallc","id="+id,function(data){
					    var count ='<option value="0">--请选择--</option>';
					    for(var i=0 ; i<data.length; i++){
					    	count = count +'<option  value="'+data[i].id+'">'+data[i].crop_species+'</option>'
					    }
					    $("#nzw_spacies").empty();
						$("#nzw_spacies").append(count);
					});
					
					$.post("../../rest/findallyear","id="+id,function(data){
					    var count ='<option value="0">--请选择--</option>';
					    for(var i=0 ; i<data.length; i++){
					    	 count = count +'<option  value="'+data[i].input_time+'">'+data[i].input_time+'</option>'
					    }
					    $("#year").empty();
						$("#year").append(count);
					});	
					$.post("../../rest/findalltoxin","id="+id,function(data){
					    var count='';
					    for(var i=0 ; i<data.length; i++){
					    	if(i==0){
					    		count = count +'<li><input type="radio" checked=checked name="jlei" onclick="drawAgain();" class="jlei" value="'+data[i].toxin_type+'"><span>'+data[i].toxin_type+'</span></li>'
					    	}else{
					    		count = count +'<li><input type="radio" name="jlei" onclick="drawAgain();" class="jlei" value="'+data[i].toxin_type+'"><span>'+data[i].toxin_type+'</span></li>'
					    	}
					    	 
					    }
					    
					    $("#dusu").empty();
						$("#dusu").append(count);
					});	
				});
				
			});	
			
			 function drawAgain(){
					var smallzl=  $("#nzw_spacies").val();
					var year = $("#year").val();
					var toxid =$('input:radio:checked').val();
					$.post("../../rest/findcountry","breed="+smallzl+"&year="+year+"&toxid="+toxid,
							function(dataTemp){
								console.log(dataTemp);//数组对象
								data = "{";
								for(var i = 0; i < dataTemp.length;){
									data+="\""+dataTemp[i].prochina+"\":{\"value\":"+dataTemp[i].num+",\"index\":\"\",\"stateInitColor\":"+dataTemp[i].colorid+"}";
									if(++i!=dataTemp.length){
										data+=",";
									}
								}
								data += "}";
								console.log(data);
								data = JSON.parse(data);
								draw();
							});
			}		
    
		</script>
</body>
</html>