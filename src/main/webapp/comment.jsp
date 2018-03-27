<%@ page import="com.movie.entity.User" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@taglib prefix="s" uri="/struts-tags"%>
<html>
<head>
    <title>个人空间</title>
    <!-- for-mobile-apps -->
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
    <meta name="" />
    <script type="application/x-javascript"> addEventListener("load", function() { setTimeout(hideURLbar, 0); }, false);
    function hideURLbar(){ window.scrollTo(0,1); } </script>
    <!-- //for-mobile-apps -->
    <link href="css/bootstrap.css" rel="stylesheet" type="text/css" media="all" />
    <!-- pop-up -->
    <link href="css/popuo-box.css" rel="stylesheet" type="text/css" media="all" />
    <!-- //pop-up -->
    <link href="css/easy-responsive-tabs.css" rel='stylesheet' type='text/css'/>
    <link rel="stylesheet" type="text/css" href="css/zoomslider.css" />
    <link rel="stylesheet" type="text/css" href="css/table-style.css" />
    <link rel="stylesheet" type="text/css" href="css/basictable.css" />
    <link rel="stylesheet" type="text/css" href="css/style.css" />
    <link rel="stylesheet" href="css/list.css" type="text/css" media="all" />
    <link href="css/font-awesome.css" rel="stylesheet">
    <script type="text/javascript" src="js/modernizr-2.6.2.min.js"></script>
    <script type="text/javascript" src="/js/beginpage.js"></script>
    <link rel="stylesheet" href="css/layui.css"  media="all">
    <script src="js/jquery-1.11.1.min.js"></script>
    <script src="js/useraction.js"></script>
    <script src="js/beginpage.js"></script>
</head>
<script>
<%
    HttpSession s = request.getSession();
    User user = (User) s.getAttribute("user");
    if(user == null){
%>


    $(function () {
        alert("请先登陆!");
        window.location.href="/index.jsp";
    });

<%
    }
    int movieId = 0;
    if (request.getParameter("id") != null){
        movieId = Integer.parseInt(request.getParameter("id"));
    }
    else{
%>
    $(function () {
        alert("请先选择电影!");
        window.location.href="/index.jsp";
    });
<%
    }
%>
</script>
<body>
<!--/main-header-->
<!--/banner-section-->
<div id="demo-1" class="banner-inner">
    <div class="banner-inner-dott">
        <!--顶部-->
        <div class="header-w3-agileits" id="home">
            <div class="inner-header-agile part2">
                <nav class="navbar navbar-default">
                    <div class="navbar-header">
                        <h1><a  href="index.jsp"><span>好</span>朋友电影院 <span>购</span>票网</a></h1>
                    </div>
                    <div class="collapse navbar-collapse" id="bs-example-navbar-collapse-1">
                        <ul class="nav navbar-nav">
                            <%
                                if (user != null){
                            %>
                            <li><a href="userindex.jsp"><%=user.getUsername()%>的主页</a></li>
                            <%
                                }
                            %>
                            <li><a href="" onclick="exit()">退出登录</a></li>
                        </ul>
                    </div>
                </nav>
            </div>
        </div>
    </div>
</div>


<div class="modal-dialog">
    <!-- 添评论-->
    <div class="modal-content">
        <div class="modal-header">
            <h4>添加评论</h4>
            <div class="comment-form">
                <form method="post" >
                    <textarea id="content" rows="15" style="width: 100%;resize:none;margin-bottom: 8px;margin-top: 8px" placeholder="此处输入评论...."></textarea>
                    <div class="tp">
                        <input class="btn btn-default" type="button" value="提交" onclick="insertCom()" style="width: 100%">
                    </div>
                </form>
            </div>
        </div>
    </div>
</div>


<!-- 详细内容介绍介绍 -s->
	<!--底部-->
<div class="contact-w3ls" id="contact">
    <div class="footer-w3lagile-inner">
        <h2>好朋友电影淘票票</h2>
        <p class="para">好电影和好朋友一起看，女朋友算什么，我们有朋友。</p>
        <h3 class="text-center follow">联系我们 </h3>
        <ul class="social-icons1 agileinfo">
            <li><a href="#"><i class="fa fa-weibo"></i></a></li>
            <li><a href="#"><i class="fa fa-wechat"></i></a></li>
            <li><a href="#"><i class="fa fa-qq"></i></a></li>
        </ul>

    </div>

</div>
<div class="w3agile_footer_copy">
    <p>&copy; 2017.软件153-3班.</p>
</div>
<a href="#home" id="toTop" class="scroll" style="display: block;"> <span id="toTopHover" style="opacity: 1;"> </span></a>
<script src="js/layui.all.js" charset="utf-8"></script>
<!-- layui -->
<script src="js/layui.all.js" charset="utf-8"></script>
<!--end-smooth-scrolling-->
<script src="js/bootstrap.js"></script>

<script>
    function insertCom() {
        var content = $("#content").val();

        <%
                 if (user != null){
        %>

        $.ajax({
            type:"post",
            url:"/comment/insertComment",
            data:{"username":"<%=user.getUsername()%>","userId":"<%=user.getId()%>", "movieId":"<%=movieId%>","content":content},
            dataType:"json",
            success:function (data) {
                if (data.flag == 1){
                    alert("添加成功!");
                    window.location.href="userindex.jsp";
                }
                else {
                    alert("添加失败!");
                }
            }
        });

        <%
            }
        %>
    }
</script>
</body>
</html>