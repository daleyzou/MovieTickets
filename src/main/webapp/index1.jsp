<%@ page import="com.movie.entity.User" %>
<%@ taglib prefix="s" uri="/struts-tags" %>
<%--
  Created by IntelliJ IDEA.
  User: Svily_0
  Date: 2017/12/25
  Time: 17:02
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>测试</title>
</head>
<script type="text/javascript" src="js/jquery-1.11.1.min.js"></script>
<body>
<form id="userInfo">
    <label>用户名：</label><input type="text" name="username" id="username"><br>
    <label>密码：</label><input type="password" name="password" id="password"><br>
    <input  type="button" value="提交" onclick="login()">
</form>

<%
    HttpSession s = request.getSession();
    User user = (User) s.getAttribute("user");
    if (user != null){
%>

    <%=user.getUsername()%>

<%
    }
%>
</body>

<script type="text/javascript">
    $(function(){
        $("#login").click(function () {
            var username = $("username").val();
            var password = $("password").val();
            $.ajax({
                type:"post",
                url:"user/login",
                data:{"username":username,"password":password},
                dataType:"json",
                success:function (data) {
                    alert(data.username);
                    window.location.href="success.jsp";
                }
            });
        });
    });

    function login(){
        $.ajax({
            type:"POST",
            url:"/user/login",
            data:$('#userInfo').serialize(),
            dataType:"json",
            success:function (data) {
                alert(data.username)
            },
            error:function () {

            }
        });
    }

    $(document).ready(function () {
        var score = 5;
        var all = 0;
        all = parseInt((score/2.0));
        alert(all);
        for (var j = 1; j <= all; j++){
           alert("整数循环");
        }
        if (((score/2.0)-all)>=0.5){
            alert("出现一半");
            all += 1;
        }

        if (all<5){
            for (var m=1;m<=(5-all);m++){
               alert("空循环");

            }
        }
    });
</script>
<body>

<a href="/BeginPageAction/loadImages?type_code=owl-demo"> fsafdsafasfs</a>
</body>
</html>
