var ok1 = false, ok2 = false, ok3 = false, ok4 = false, ok5 = false, ok6 = false, ok7 = false, ok8 = false, ok9 = false,
    ok10 = false, ok11 = false, ok12 = false, ok13 = false, ok14 = false, ok15 = false;

// 账号判断
function checkloginName() {
    var loginName = $("[name=loginName]").val()
    // var a=$("input[name=login_name ]").val();
    $.ajax({
        url:"http://localhost:8080/rest/user/judge",
        type:"post",
        data:{"login_name":loginName},
        dataType:"JSON",
        success:function (res) {
            if(res==1)
            {
                if (/^[a-z0-9_-]{3,16}$/.test(loginName)) {
                    $("#sploginName").html("符合标准")
                    $("#sploginName").css("color","blue")
                    ok1 = true
                }
                else {
                    $("#sploginName").html("账号格式错误");
                    $("#sploginName").css("color","red")
                    ok1 = false
                }
            }
            else
            {
                $("#sploginName").html("账号已经被创建");
                $("#sploginName").css("color","red")
                ok1 = false
            }
        }
    })
}

// 名字判断
function checkusername() {
    var username = $("[name=username]").val()
    if (/[\u4e00-\u9fa5a-zA-Z0-9]{3,16}/.test(username)) {
        $("#spusername").html("名字可以")
        $("#spusername").css("color","blue")
        ok2 = true
    }
    else {
        $("#spusername").html("名字不符合标准")
        $("#spusername").css("color","red")
        ok2 = false
    }
}

//设置密码
function checkpassword() {
    var password = $("[name=password]").val()
    if (/^[a-z0-9_-]{6,18}$/.test(password)) {
        $("#sppassword").html("密码符合标准")
        $("#sppassword").css("color","blue")
        ok3 = true
        checkrepassword()
    }
    else {
        $("#sppassword").html("密码不符合标准")
        $("#sppassword").css("color","red")
        ok3 = false
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
        ok4 = true
    }
    else {
        $("#sprepassword").html("两次密码不一致")
        $("#sprepassword").css("color","red")
        ok4 = false
    }
}

//邮箱
function checkemail() {
    var email = $("[name=email]").val()
    if (/^([a-z0-9_\.-]+)@([\da-z\.-]+)\.([a-z\.]{2,6})$/.test(email)) {
        $("#spemail").html("邮箱格式正确")
        $("#spemail").css("color","blue")
        ok5 = true
    }
    else {
        $("#spemail").html("邮箱格式不正确")
        $("#spemail").css("color","red")
        ok5 = false
    }
}

//电话
function checkphone() {
    var phone = $("[name=phone]").val()
    if (/^1[0-9]{10}$/.test(phone)) {
        $("#spphone").html("电话号码符合标准")
        $("#spphone").css("color","blue")
        ok6 = true
    }
    else {
        $("#spphone").html("电话号码不符合标准")
        $("#spphone").css("color","red")
        ok6 = false
    }
}
//身份证号
function checkidcard() {
    var idcard=$("[name=idcard]").val()
    if(/\d{15}|\d{18}/.test(idcard))
    {
        $("#spidcard").html("身份证号正确")
        $("#spidcard").css("color","blue")
        ok7=true
    }
    else
    {
        $("#spidcard").html("身份证号不正确")
        $("#spidcard").css("color","red")
        ok7=false
    }
}

function sub() {
    if (ok1==true && ok2==true && ok3==true && ok4==true && ok5==true && ok6==true && ok7==true)
    {
        $("form").submit()
    }

}

