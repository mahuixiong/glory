<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%
    String path=request.getContextPath();
    String basePath=request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
	<head>
		<meta charset="UTF-8">
		<title>客户审核</title>
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
			.address-con {
    			display: inline-block;
   				float: left;
			    width: 515px;
			    line-height: 25px;
			    
			    margin-left: 60px;
			}
			.address-con li {
			    float: left;
			    width: 73px;
			    margin-right: 10px;
			}
		</style>
		
	</head>
<body>

<div class="cus-content">
  <p class="cus-admin"><span>当前页面 : </span><a>客户管理/</a><a href="selectAll">客户审核</a></p>
  <form action="<%=basePath%>rest/user/updatecheckStatus" method="get" id="formCustomer">
    <div class="cus-examine-infolist">
      <p class="cus-examine-title">审核</p>
      <ul class="examine-list">
        <li class="list-item">
          <label>审核方向</label>
            <input type="hidden" value="${user.id}" name="id"/>
          <select id="application_direction" name="checkStatus">

              <option value="0">未审核</option>
              <option value="1">通过</option>
              <option value="2">驳回</option>

          </select>
        </li>
        <li class="list-item">
          <label>真实姓名</label>
          <input type="text" value="${user.username}" name="username" readonly/>

        </li>
        <li class="list-item">
          <label>身份证号码</label>
          <input type="text" value="${user.idcard}" name="idcard" readonly/>

        </li>
        <li class="list-item">
          <label>客户单位</label>
          <input type="text" value="${user.company}" name="company" readonly/>

        </li>
        <li class="list-item">
          <label>单位地址</label>
          <input type="text" value="${user.address}" name="address" readonly/>
        </li>
        <li class="list-item">
          <label>邮箱号码</label>
          <input type="text" value="${user.email}" name="email" readonly/>
        </li>
        <li class="list-item">
          <label>手机号码</label>
          <input type="text" value="${user.phone}" name="phone" readonly/>
        </li>
        <li class="list-item">
          <label>客户权限</label>


          <select name="customerPower" onblur="checkrole()" id="roleSelect">
		    				<option value="">请选择</option>
		    				<option value="1">查看水果类</option>
		    				<option value="2">查看谷物类</option>
		    				<option value="3">查看油料类</option>
		    				<option value="4">查看坚果类</option>
		    				<option value="5">查看香辛类</option>
		    				<option value="6">查看饲料类</option>
		    				<option value="7">可查看全部</option>
		    			</select>
          <span id="role_exam"></span> </li>
        <li class="list-item">
          <label>客户状态</label>
          <input type="radio" name="state" value="1" />
          启用
          <input type="radio" name="state" value="0" />
          禁用 </li>
        <li>
          <lable>开始时间</lable>
          <input onblur="checkharvest_time()" type="text" name="mystarttime" value=""  id="dt" placeholder="选择日期" readonly >
          <div id="dd"></div>
          <span id="harvest_time" ></span> </li>
        <li>
          <lable>结束时间</lable>
          <input onblur="checksampling_time()" type="text" name="myendtime" value="" id="dt-b" placeholder="选择日期" readonly>
          <div id="dd-b"></div>
          <span id="sampling_time" class="err"></span> </li>
      </ul>
      <div class="examine-option"> <a class="examine-pass" onclick="pass()">通过</a><a class="examine-reject" href="javascript:void(0)" onclick="reject()">驳回</a><a class="examine-back" href="javascript:void(0)" onclick="window.history.go(-1)">返回</a> </div>
    </div>
  </form>
</div>
</body>
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
<script>
    window.onload=start()
    function start()
    {
        if(${not empty user.checkStatus})
        {
            if(${user.checkStatus==0})
            {
                $('#application_direction option:eq(0)').prop("selected",true);
            }
            if(${user.checkStatus==1})
            {
                $('#application_direction option:eq(1)').prop("selected",true);
            }
            if(${user.checkStatus==2})
            {
                $('#application_direction option:eq(2)').prop("selected",true);
            }
        }
        if(${not empty user.state})
        {
            if(${user.state==1})
            {
                $("input[name='state']").eq(0).prop("checked",true)
            }
            if(${user.state==0})
            {
                $("input[name='state']").eq(1).prop("checked",true)
            }
        }
        if(${not empty user.customerPower})
        {
            if(${user.customerPower==1})
            {
                $("#roleSelect option:eq(1)").prop("selected",true);
            }
            if(${user.customerPower==2})
            {
                $("#roleSelect option:eq(2)").prop("selected",true);
            }
            if(${user.customerPower==3})
            {
                $("#roleSelect option:eq(3)").prop("selected",true);
            }
            if(${user.customerPower==4})
            {
                $("#roleSelect option:eq(4)").prop("selected",true);
            }
            if(${user.customerPower==5})
            {
                $("#roleSelect option:eq(5)").prop("selected",true);
            }
            if(${user.customerPower==6})
            {
                $("#roleSelect option:eq(6)").prop("selected",true);
            }
            if(${user.customerPower==7})
            {
                $("#roleSelect option:eq(7)").prop("selected",true);
            }
            else {
                $("#roleSelect option:eq(0)").prop("selected",true);
            }
        }
    }
    function pass()
    {
        $('#application_direction option:eq(1)').prop("selected",true);
        $("form").submit();
    }
    function reject() {
        $('#application_direction option:eq(2)').prop("selected",true);
        $("form").submit();
    }
</script>
</html>
