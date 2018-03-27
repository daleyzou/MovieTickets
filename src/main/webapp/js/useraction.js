function login(){
    $.ajax({
        type:"post",
        url:"/user/login",
        data:$('#userInfo').serialize(),
        dataType:"json",
        success:function (data) {
                if (data.flag == 1 ) {
                    $("#checkLogin").html("");
                    window.location.reload(true);
                }else {
                    $("#checkLogin").html("用户名或密码错误!");
                }
        }
    });
}


function exit() {
    $.ajax({
        type:"post",
        url:"/user/exit",
        success:function (data) {
            window.location.href="/index.jsp";
        }
    });
}


function reg() {
    var username = $('#username').val();
    var password = $('#password').val();
    var repassword = $('#repassword').val();

    if (username == ""){
        $("#checkUserName").html("用户名不能为空!");
    }else {
        $("#checkUserName").html("");
    }

    if (password == ""){
        $("#checkPassWord").html("密码不能为空!");
    }else {
        $("#checkPassWord").html("");
    }

    if (password == repassword){
        $("#checkPassWord").html("");
        $.ajax({
            type:"post",
            url:"/user/reg",
            data:$('#regInfo').serialize(),
            dataType:"json",
            success:function (data) {
                if (data.flag == 1){
                    window.location.reload(true);
                }
                else {
                    $("#checkUserName").html("该用户已存在!");
                    $("#username").focus();
                }
            }
        });
    }
    else{
        $("#checkPassWord").html("2次密码不相同!");
    }

}

