<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html lang="en">
<head>
	<meta charset="UTF-8">
	<title>Document</title>
	<link rel="stylesheet" type="text/css" href="../../app/css/reset.css"/>
	<link rel="stylesheet" href="../../app/css/p_updatePassword.css" />
	<link rel="stylesheet" type="text/css" href="../../app/css/page.css"/>
</head>
<script type="text/javascript" src="../../app/js/jquery.js" ></script>
<script type="text/javascript" src="../../app/js/browsing.js" ></script>
<body data-genuitec-lp-enabled="false" data-genuitec-file-id="wc1-62" data-genuitec-path="/glory/src/main/webapp/WEB-INF/views/person_updatePassword.jsp" style="height: 309px; width: 1126px;">
	<!-- 引入头部 -->
	
	
	<!-- 内容顶部路由页显示  -->
    <p class="top_url_box box" data-genuitec-lp-enabled="false" data-genuitec-file-id="wc1-62" data-genuitec-path="/glory/src/main/webapp/WEB-INF/views/person_updatePassword.jsp">
    	<!-- <span>当前页面 ：个人中心/</span><a>密码修改</a> -->
    </p>
    <article class="update_box box">
	    
	    	 <ul>
	    		<li class="upBt" style="color:black">密码修改</li>
	    		<li><span>原始密码</span><input class="oldpw" type="password" name="pwd" maxlength="15"></li>
	    		<li><span>新密码</span><input class="newpw" type="password" name="newpwd" maxlength="15"></a></li>
	    		<li><span>确认新密码</span><input class="oknewpw" type="password" name="newpwd1" maxlength="15"></li>
	    		<li class="upBt"><input class="submit" type="button" value="保存" onclick="sub()"></li>
	    	</ul> 
	   	<!-- </form> -->
    </article>
    

<script type="text/javascript">
	var ok1=false;var ok2=false;var ok3=false;
	$("input[name=pwd]").blur(function(){
		var a=$("input[name=pwd]").val();
		$("#pwd").html("");
		if(a==""){
			$("#pwd").html("不能为空").css("color","red");ok1=false;
		}else if(a.length<6){
			$("#pwd").html("长度最少6位").css("color","red");ok1=false;
		}else{
			ok1=true;
		}
	});
	$("input[name=newpwd]").blur(function(){
		var a=$("input[name=newpwd]").val();
		$("#newpwd").html("");
		if(a==""){
			$("#newpwd").html("不能为空").css("color","red");ok2=false;
		}else if(a.length<6){
			$("#newpwd").html("长度最少6位").css("color","red");ok2=false;
		}else if($("input[name=newpwd1]").val()!=""){
			if($("input[name=newpwd]").val()!=$("input[name=newpwd1]").val()){
				$("#newpwd1").html("两次密码不一致").css("color","red");ok2=false;
			}else{
				ok2=true;
			}
		}else{
			ok2=true;
		}
	});
	$("input[name=newpwd1]").blur(function(){
		var a=$("input[name=newpwd1]").val();
		$("#newpwd1").html("");
		if(a==""){
			$("#newpwd1").html("不能为空").css("color","red");ok3=false;
		}else if(a.length<6){
			$("#newpwd1").html("长度最少6位").css("color","red");ok3=false;
		}else if($("input[name=newpwd]").val()!=""){
			if($("input[name=newpwd]").val()!=$("input[name=newpwd1]").val()){
				$("#newpwd1").html("两次密码不一致").css("color","red");ok3=false;
			}else{
				ok3=true;
			}
		}else{
			ok3=true;
		}
	});
	function sub(){
		$("input").trigger("blur");
		if(ok1==true&&ok2==true&&ok3==true){
			$.ajax({
				url:"/glory/rest/UpdatePwd",
				data:"pwd="+$("input[name=pwd]").val()+"&newpwd="+$("input[name=newpwd1]").val(),
				cache:false,
				success:function(res){
					if(res=='1'){
						alert("修改成功,请重新登录！");
						//self.location=document.referrer;
						top.location.href="/glory/rest/user/logout";
					}else if(res=='0'){
						alert("修改失败，原密码可能有误");
					}
				}
			}); 
		} 
	}
	
	
	/* function sub(){
		$("input").trigger("blur");
		var pwd = $("input[name=pwd]").val();
		var newpwd = $("input[name=newpwd1]").val();
		if(ok1==true&&ok2==true&&ok3==true){
			$("#form1").submit();
		}
		
	} */
</script>



</body>
</html>
