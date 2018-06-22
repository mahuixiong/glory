var ok1 = false, ok2 = false, ok3 = false, ok4 = false, ok5 = false, ok6 = false, ok7 = false, ok8 = false, ok9 = false,
    ok10 = false, ok11 = false, ok12 = false, ok13 = false, ok14 = false, ok15 = false;

// 账号判断
var user={};
function checkloginName() {
    var loginName = $("[name=loginName]").val()
    // var a=$("input[name=login_name ]").val();
    user.loginName=loginName;
    $.ajax({
        url:"http://localhost:8080/rest/user/selectupdate",
        type:"post",
        data:JSON.stringify(user),
        dataType:"JSON",
        contentType:"application/json;charset=UTF-8",
        success:function (res) {
            if(res==1)//=1没查到数据
            {
                $("#sploginName").html("无此账号");
                $("#sploginName").css("color","red")
                ok1 = false

            }
            else
            {
                $("#sploginName").html("有此账号");
                $("#sploginName").css("color","blue")
                ok1 = true
            }
        }
    })
    checkusername()
    checkemail()
    checkphone()
    checkidcard()
}

// 名字判断
function checkusername() {
    var loginName = $("[name=loginName]").val()
    var username = $("[name=username]").val()
    var judge=0;
    if(username=='')
    {
        judge=1
    }
    user.loginName=loginName;
    user.username=username
    $.ajax({
        url:"http://localhost:8080/rest/user/selectupdate",
        type:"post",
        data:JSON.stringify(user),
        dataType:"JSON",
        contentType:"application/json;charset=UTF-8",
        success:function (res) {
            if(res==1)//=1没查到数据
            {
                $("#spusername").html("名字错误");
                $("#spusername").css("color","red")
                ok2 = false

            }
            else
            {
                $("#spusername").html("名字正确");
                $("#spusername").css("color","blue")
                ok2 = true
            }
            if(judge==1)
            {
                $("#spusername").html("");
            }
        }
    })
}

//邮箱
function checkemail() {
    var loginName = $("[name=loginName]").val()
    var email = $("[name=email]").val()
    var judge=0;
    if(email=='')
    {
        judge=1
    }
    user.loginName=loginName;
    user.email=email;
    $.ajax({
        url:"http://localhost:8080/rest/user/selectupdate",
        type:"post",
        data:JSON.stringify(user),
        dataType:"JSON",
        contentType:"application/json;charset=UTF-8",
        success:function (res) {
            if(res==1)//=1没查到数据
            {
                $("#spemail").html("无此邮箱");
                $("#spemail").css("color","red")
                ok3 = false

            }
            else
            {
                $("#spemail").html("有此邮箱");
                $("#spemail").css("color","blue")
                ok3 = true
            }
            if(judge==1)
            {
                $("#spemail").html("");
            }
        }
    })
}

//电话
function checkphone() {
    var loginName = $("[name=loginName]").val()
    var phone = $("[name=phone]").val()
    var judge=0;
    if(phone=='')
    {
        judge=1
    }
    user.loginName=loginName;
    user.phone=phone;
    $.ajax({
        url:"http://localhost:8080/rest/user/selectupdate",
        type:"post",
        data:JSON.stringify(user),
        dataType:"JSON",
        contentType:"application/json;charset=UTF-8",
        success:function (res) {
            if(res==1)//=1没查到数据
            {
                $("#spphone").html("无此电话");
                $("#spphone").css("color","red")
                ok4 = false

            }
            else
            {
                $("#spphone").html("有此电话");
                $("#spphone").css("color","blue")
                ok4 = true
            }
            if(judge==1)
            {
                $("#spphone").html("");
            }
        }
    })
}
//身份证号
function checkidcard() {
    var loginName = $("[name=loginName]").val()
    var idcard=$("[name=idcard]").val()
    var judge=0;
    if(idcard=='')
    {
        judge=1
    }
    user.loginName=loginName;
    user.idcard=idcard;
    $.ajax({
        url:"http://localhost:8080/rest/user/selectupdate",
        type:"post",
        data:JSON.stringify(user),
        dataType:"JSON",
        contentType:"application/json;charset=UTF-8",
        success:function (res) {
            if(res==1)//=1没查到数据
            {
                $("#spidcard").html("身份证号错误");
                $("#spidcard").css("color","red")
                ok5 = false

            }
            else
            {
                $("#spidcard").html("身份证号正确");
                $("#spidcard").css("color","blue")
                ok5 = true
            }
            if(judge==1)
            {
                $("#spidcard").html("");
            }
        }
    })
}
//设置密码
function checkpassword() {
    var password = $("[name=password]").val()
    if (/^[a-z0-9_-]{6,18}$/.test(password)) {
        $("#sppassword").html("密码符合标准")
        $("#sppassword").css("color","blue")
        ok6 = true
        checkrepassword()
    }
    else {
        $("#sppassword").html("密码不符合标准")
        $("#sppassword").css("color","red")
        ok6 = false
        checkrepassword()
    }
}

//确认密码
function checkrepassword() {
    var password = $("[name=password]").val()
    var repassword = $("[name=repassword]").val()
    if (password == repassword) {
        $("#sprepassword").html("两次密码一致")
        $("#sprepassword").css("color","blue")
        ok7 = true
    }
    else {
        $("#sprepassword").html("两次密码不一致")
        $("#sprepassword").css("color","red")
        ok7=false
    }
}
function sub() {
    if (ok1==true && ok2==true && ok3==true && ok4==true && ok5==true && ok6==true && ok7==true)
    {
        $("form").submit()
    }

}

