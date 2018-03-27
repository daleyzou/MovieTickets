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

<%
	HttpSession s = request.getSession();
	User user = (User) s.getAttribute("user");
	if(user == null){
%>

<script>
	$(function () {
		alert("请先登陆!");
		window.location.href="/index.jsp";
	});
</script>

<%
	}else {

	}
%>

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

<!-- 个人内容 -->
<div class="layui-tab">
  <ul class="layui-tab-title">
    <li class="layui-this" >我的电影票</li>
    <li id="contact1" onclick="getComForUser()">评论</li>
    <li id="contact2" onclick="lookhistory()">观看历史</li>
    <li id="contact3" onclick="showUserInfo()">我的信息</li>
  </ul>
  <div class="layui-tab-content">
  <!-- 我的电影票内容 -->
    <div id="mytickets" class="layui-tab-item layui-show">
		<s:set name="ticket" value="#session.alltickets"/>
		<s:iterator var="t" value="ticket">
    		<div class="jumbotron" >
  			<h3 id="t_name"><s:property value="#t.movieName" /></h3>
				<p><span id="t_time">观影时间：<s:property value="#t.time" /></span>  | <span id="t_setid">座位：<s:property value="#t.seatId" /></span></p>
  			<p><a class="btn btn-primary btn-lg" href="descinfo.jsp" role="button">详情</a>
  			<button class="btn btn-primary btn-lg"  data-toggle="modal" data-target="#nobuy" onclick="delt('<s:property value="#t.movieName" />','<s:property value="#t.time"/>','<s:property value="#t.id" />')">退票</button></p>
			</div>
		</s:iterator>
    </div>

	  <div class="modal fade" id="myModa1" tabindex="-1" role="dialog" >

		  <div class="modal-dialog">
			  <!-- 登录输入框-->
			  <div class="modal-content">
				  <div class="modal-header">
					  <button type="button" class="close" data-dismiss="modal">&times;</button>
					  <h4>添加评论</h4>
					  <div class="login-form">
						  <form id="userInfo"  method="post" >
							  <textarea  rows="10" style="width: 100%;resize:none;margin-bottom: 8px;margin-top: 4px" placeholder="此处输入评论...."></textarea>
							  <div class="tp">
								  <input class="btn btn-default" type="button" value="提交" onclick="" style="width: 100%">
							  </div>
						  </form>
					  </div>
				  </div>
			  </div>
		  </div>
	  </div>


    <!-- 我的评论内容 -->
    <div class="layui-tab-item">
			<div class="w3_content_agilleinfo_inner">
		<div class="agile_featured_movies">
		<div id="myTabContent" class="tab-content">
		<div role="tabpanel" class="tab-pane fade in active" id="home" aria-labelledby="home-tab">
								<div class="agile-news-table">
									<div class="w3ls-news-result">
										<h4>我的总评论数 : <span id="commentNum"></span></h4>
									</div>
									<table id="table-breakpoint">
										<thead>
										  <tr>
											<th>时间</th>
											<th>评论内容</th>
										  </tr>
										</thead>
										<tbody id="commentlist">
										</tbody>
									</table>
								</div>
							</div>
							</div>
							</div>
		</div>
	
	</div>
	<!-- 我的观看历史内容 -->
    <div class="layui-tab-item" id="historytickets" >

	</div>
	<!-- 我的信息内容 -->
    <div class="layui-tab-item">
		  <div class="panel panel-default">
		  <!-- Default panel contents -->
		  <div class="panel-heading" id="username_show">爱火锅</div>
		
		  <!-- Table -->
		  <table class="table">
		    <tr>
		    	<td >电话（手机）:</td>
		    	<td id="phone_show">136567858</td>
		    </tr>
		    <tr>
		    	<td>会员等级:</td>
		    	<td id="level_show">2</td>
		    </tr>
		    <tr>
		    	<td>性别:</td>
		    	<td id="sex_show">女</td>
		    </tr>
		    <tr>
		    	<td>注册时间:</td>
		    	<td id="reg_time_show">2009.1.1</td>
		    </tr>
		    <tr>
		    	<td>地址:</td>
		    	<td id="adress_show">双流</td>
		    </tr>
		    <tr>
		    	<td></td>
		    	<td><a href="#" class="btn btn-primary btn-lg"  data-toggle="modal" data-target="#myModal4">修改</a></td>
		    </tr>
		  	</table>
			</div>
	</div>
  </div>
</div>
 <!-- 退票的弹出框 -->
 <div class="modal fade" id="nobuy" tabindex="-1" role="dialog" >

							<div class="modal-dialog">
								<div class="modal-content">
									<form action="/ticket/delticket" method="post">
										<input type="hidden" value="" name="tid" id="t_id"/>
									<div class="modal-header">
										<button type="button" class="close" data-dismiss="modal">&times;</button>
										<h4>确定要将此票退回？<hr/></h4>
										<h4>电影名：<span id="tname"></span><hr/>
											<span id="ttime"></span>时观影</h4>
										<div class="login-form">
												<div class="tp">
													<input type="submit" class="btn btn-default" value="确定">
												</div>
										</div>
										</div>
									</form>
									</div>
								</div>
 							</div>

</div>

 <!-- 修改的弹出框 -->
<div class="modal fade" id="myModal4" tabindex="-1" role="dialog" >


							<div class="modal-dialog">
								<!-- 修改框-->
								<div class="modal-content">
									<div class="modal-header">
										<button type="button" class="close" data-dismiss="modal">&times;</button>
										<h4>修改信息</h4>
										<div class="login-form">
											<form action="/UserInfo/updateUser" method="post" id="doPost">
												<input type="text" name="user.username" id="username" placeholder="用户名" >
												<input type="text" name="user.sex" id="sex" placeholder="性别" >
												<input type="text" name="user.phone" id="phone" placeholder="电话号码" >
												<input type="text" name="user.adress" id="adress" placeholder="地址" >
												<input type="hidden" name="user.id" id="userid">
												<input type="hidden" name="user.regTime" id="regTime">
												<input type="hidden" name="user.password" id="pwd">
												<input type="hidden" name="user.level" id="level">
												<div >
													<input type="button" class="btn btn-default" value="确定" id="toSubmit">
												</div>
											</form>
										</div>
									</div>
								</div>
							</div>
</div>





	
		<!-- 电影推荐开始 -->
		<h3 class="agile_w3_title"> <span>猜您喜欢：</span></h3>
			<!--开始-->				
			<div class="w3_agile_latest_movies">
			
				<div id="owl-demo" class="owl-carousel owl-theme">
					<!-- 滚动小模块 -->
					<div class="item" id="owl-demo1">
						<div class="w3l-movie-gride-agile w3l-movie-gride-slider ">
							<a href="#" class="hvr-sweep-to-bottom"><img src="#" title="电影名" class="img-responsive" alt=" " />
								<div class="w3l-action-icon"><i class="fa fa-play-circle-o" aria-hidden="true"></i></div>
							</a>
							<div class="mid-1 agileits_w3layouts_mid_1_home">
								<div class="w3l-movie-text">
									<h6><a href="#" class="daleyzou_name"></a></h6>
								</div>
								<div class="mid-2 agile_mid_2_home">
									<p class="daleyzou_time"></p>
									<div class="block-stars">
										<ul class="w3l-ratings">
											<li><i class="fa fa-star" aria-hidden="true"></i></li>
											<li><i class="fa fa-star" aria-hidden="true"></i></li>
											<li><i class="fa fa-star" aria-hidden="true"></i></li>
											<li><i class="fa fa-star" aria-hidden="true"></i></li>
											<li><i class="fa fa-star-half-o" aria-hidden="true"></i></li>
										</ul>
									</div>
									<div class="clearfix"></div>
								</div>
							</div>
						</div>
					</div>
					<div class="item" id="owl-demo2">
						<div class="w3l-movie-gride-agile w3l-movie-gride-slider ">
							<a href="#" class="hvr-sweep-to-bottom"><img src="#" title="电影名" class="img-responsive" alt=" " />
								<div class="w3l-action-icon"><i class="fa fa-play-circle-o" aria-hidden="true"></i></div>
							</a>
							<div class="mid-1 agileits_w3layouts_mid_1_home">
								<div class="w3l-movie-text">
									<h6><a href="#" class="daleyzou_name"></a></h6>
								</div>
								<div class="mid-2 agile_mid_2_home">
									<p class="daleyzou_time"></p>
									<div class="block-stars">
										<ul class="w3l-ratings">
											<li><i class="fa fa-star" aria-hidden="true"></i></li>
											<li><i class="fa fa-star" aria-hidden="true"></i></li>
											<li><i class="fa fa-star" aria-hidden="true"></i></li>
											<li><i class="fa fa-star" aria-hidden="true"></i></li>
											<li><i class="fa fa-star-half-o" aria-hidden="true"></i></li>
										</ul>
									</div>
									<div class="clearfix"></div>
								</div>
							</div>
						</div>
					</div>
					<div class="item" id="owl-demo3">
						<div class="w3l-movie-gride-agile w3l-movie-gride-slider ">
							<a href="#" class="hvr-sweep-to-bottom"><img src="#" title="电影名" class="img-responsive" alt=" " />
								<div class="w3l-action-icon"><i class="fa fa-play-circle-o" aria-hidden="true"></i></div>
							</a>
							<div class="mid-1 agileits_w3layouts_mid_1_home">
								<div class="w3l-movie-text">
									<h6><a href="#" class="daleyzou_name"></a></h6>
								</div>
								<div class="mid-2 agile_mid_2_home">
									<p class="daleyzou_time"></p>
									<div class="block-stars">
										<ul class="w3l-ratings">
											<li><i class="fa fa-star" aria-hidden="true"></i></li>
											<li><i class="fa fa-star" aria-hidden="true"></i></li>
											<li><i class="fa fa-star" aria-hidden="true"></i></li>
											<li><i class="fa fa-star" aria-hidden="true"></i></li>
											<li><i class="fa fa-star-half-o" aria-hidden="true"></i></li>
										</ul>
									</div>
									<div class="clearfix"></div>
								</div>
							</div>
						</div>
					</div>
					<div class="item" id="owl-demo4">
						<div class="w3l-movie-gride-agile w3l-movie-gride-slider ">
							<a href="#" class="hvr-sweep-to-bottom"><img src="#" title="电影名" class="img-responsive" alt=" " />
								<div class="w3l-action-icon"><i class="fa fa-play-circle-o" aria-hidden="true"></i></div>
							</a>
							<div class="mid-1 agileits_w3layouts_mid_1_home">
								<div class="w3l-movie-text">
									<h6><a href="#" class="daleyzou_name"></a></h6>
								</div>
								<div class="mid-2 agile_mid_2_home">
									<p class="daleyzou_time"></p>
									<div class="block-stars">
										<ul class="w3l-ratings">
											<li><i class="fa fa-star" aria-hidden="true"></i></li>
											<li><i class="fa fa-star" aria-hidden="true"></i></li>
											<li><i class="fa fa-star" aria-hidden="true"></i></li>
											<li><i class="fa fa-star" aria-hidden="true"></i></li>
											<li><i class="fa fa-star-half-o" aria-hidden="true"></i></li>
										</ul>
									</div>
									<div class="clearfix"></div>
								</div>
							</div>
						</div>
					</div>
					<div class="item" id="owl-demo5">
						<div class="w3l-movie-gride-agile w3l-movie-gride-slider ">
							<a href="#" class="hvr-sweep-to-bottom"><img src="images/m5.jpg" title="电影名" class="img-responsive" alt=" " />
								<div class="w3l-action-icon"><i class="fa fa-play-circle-o" aria-hidden="true"></i></div>
							</a>
							<div class="mid-1 agileits_w3layouts_mid_1_home">
								<div class="w3l-movie-text">
									<h6><a href="#" class="daleyzou_name"></a></h6>
								</div>
								<div class="mid-2 agile_mid_2_home">
									<p class="daleyzou_time"></p>
									<div class="block-stars">
										<ul class="w3l-ratings">
											<li><i class="fa fa-star" aria-hidden="true"></i></li>
											<li><i class="fa fa-star" aria-hidden="true"></i></li>
											<li><i class="fa fa-star" aria-hidden="true"></i></li>
											<li><i class="fa fa-star" aria-hidden="true"></i></li>
											<li><i class="fa fa-star-half-o" aria-hidden="true"></i></li>
										</ul>
									</div>
									<div class="clearfix"></div>
								</div>
							</div>
						</div>
					</div>
					<div class="item" id="owl-demo6">
						<div class="w3l-movie-gride-agile w3l-movie-gride-slider ">
							<a href="#" class="hvr-sweep-to-bottom"><img src="images/m5.jpg" title="电影名" class="img-responsive" alt=" " />
								<div class="w3l-action-icon"><i class="fa fa-play-circle-o" aria-hidden="true"></i></div>
							</a>
							<div class="mid-1 agileits_w3layouts_mid_1_home">
								<div class="w3l-movie-text">
									<h6><a href="#" class="daleyzou_name"></a></h6>
								</div>
								<div class="mid-2 agile_mid_2_home">
									<p class="daleyzou_time"></p>
									<div class="block-stars">
										<ul class="w3l-ratings">
											<li><i class="fa fa-star" aria-hidden="true"></i></li>
											<li><i class="fa fa-star" aria-hidden="true"></i></li>
											<li><i class="fa fa-star" aria-hidden="true"></i></li>
											<li><i class="fa fa-star" aria-hidden="true"></i></li>
											<li><i class="fa fa-star-half-o" aria-hidden="true"></i></li>
										</ul>
									</div>
									<div class="clearfix"></div>
								</div>
							</div>
						</div>
					</div>
					   </div>
				    </div>
				    <!-- 滚动电影截图结束 -->
		
		
		<!-- 评论结束 -->
		
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


	<!-- Dropdown-Menu-JavaScript -->
<script src="js/jquery-1.11.1.min.js"></script>

			<script>
				function getComForUser() {
					$.ajax({
						type:"post",
						url:"/comment/getCommentForUser",
						data:{"userId":"<%=user.getId()%>","startPage":"0"},
						dataType:"json",
						success:function (json) {

							$("#commentNum").html(json.comNumForUser);

							var list = json.list;
							var str;
							for (var i= 0; i< list.length;i++){
								var comTime = list[i].time.replace(/T/," ");
								str = str +"<tr><td class=\"w3-list-info\">"+comTime+"</td>";
								str = str +"<td class=\"w3-list-info\">"+list[i].content+"</td> </tr>";
							}

							$("#commentlist").html(str);
						}
					});
				}
			</script>


<script>
    function lookhistory() {

        $.ajax({
            type:"post",
            url:"/ticket/histicks",
            data:{"userid":"<%=user.getId()%>"},
            dataType:"json",
            success:function (json) {
                var list = json.hts;
                var str="";
                for (var i= 0; i < list.length;i++){
					var historyTime = list[i].time.replace(/T/," ");
                	str =str+"<div class='jumbotron' >"+
                        "<h3>"+list[i].moviename+"</h3>"+
                        "<p>"+historyTime+"</p>"+
                        "<p><a href='#' class='btn btn-primary btn-lg' onclick='delhistory("+list[i].id+")'>删除</a>"+
                    	"<button class='btn btn-primary btn-lg' ><a href='/comment.jsp?id="+list[i].movieId+"'>写评论</a></button></p>"+
						"</div>";
                }
                $("#historytickets").html(str);
            }
        });
    }

    function delhistory(t_id) {
        $.ajax({
            type:"post",
            url:"/ticket/delhistick",
            data:{"id":t_id},
            dataType:"json",
            success:function (json) {
                window.location.reload(true);
            }
        });
    }
</script>
			<script>
				$(document).ready(function(){
					$(".dropdown").hover(            
						function() {
							$('.dropdown-menu', this).stop( true, true ).slideDown("fast");
							$(this).toggleClass('open');        
						},
						function() {
							$('.dropdown-menu', this).stop( true, true ).slideUp("fast");
							$(this).toggleClass('open');       
						}
					);
				});

				var validate = true;
                // 验证用户名
                $("#username").focus(function(){
                    $(this).html("");
                    $(this).next().html("");
                    $(this).next().removeClass('state4').removeClass('state4');
                }).blur(function(){
                    validate = false;
                    $.post("/UserInfo/validateUserName",{"userinput":$(this).val()},
                        function(backData,textStatus,ajax){

                            if (textStatus == "success") {
                                //遍历
                                //4 返回json数组对象,对其遍历
                                $.each(backData, function (i, json) {

                                    if (i == "result") {
                                        if (json == "justdo"){
                                            alert("输入成功");
                                            validate = true;
										}else {
                                            alert("用户名已存在");
                                            validate = false;
										}
                                    }
                                });
                            }else {
                                alert("daleyzou的ajax加载验证信息失败了！")
                            }
                        },"json");
                });
                $("#toSubmit").click(function(){

					if (validate){
                        $("#doPost").submit();
					}
                });

			</script>
		<!-- //Dropdown-Menu-JavaScript -->
		<!-- search-jQuery -->
				<script src="js/main.js"></script>
			<!-- //search-jQuery -->

			<script src="js/simplePlayer.js"></script>

			<script>
				$("document").ready(function() {
					//异步加载底部页面
					loadIamges("owl-demo","owl-demo")

				});
			</script>
			<script>
				$("document").ready(function() {
					$("#video").simplePlayer();
				});
			</script>
			<script>
				$("document").ready(function() {
					$("#video1").simplePlayer();
				});
			</script>
			<script>
				$("document").ready(function() {
					$("#video2").simplePlayer();
				});
			</script>
				<script>
				$("document").ready(function() {
					$("#video3").simplePlayer();
				});
			</script>
			<script>
				$("document").ready(function() {
					$("#video4").simplePlayer();
				});
			</script>
			<script>
				$("document").ready(function() {
					$("#video5").simplePlayer();
				});
			</script>
			<script>
				$("document").ready(function() {
					$("#video6").simplePlayer();
				});
			</script>

			<!-- pop-up-box -->  
		<script src="js/jquery.magnific-popup.js" type="text/javascript"></script>
	<!--//pop-up-box -->

			<div id="small-dialog1" class="mfp-hide">
		<iframe src=""></iframe>
	</div>
	<div id="small-dialog2" class="mfp-hide">
		<iframe src=""></iframe>
	</div>
	<script>
		$(document).ready(function() {
		$('.w3_play_icon,.w3_play_icon1,.w3_play_icon2').magnificPopup({
			type: 'inline',
			fixedContentPos: false,
			fixedBgPos: true,
			overflowY: 'auto',
			closeBtnInside: true,
			preloader: false,
			midClick: true,
			removalDelay: 300,
			mainClass: 'my-mfp-zoom-in'
		});
																		
		});
	</script>
<script src="js/easy-responsive-tabs.js"></script>
<script>
$(document).ready(function () {
$('#horizontalTab').easyResponsiveTabs({
type: 'default', //Types: default, vertical, accordion           
width: 'auto', //auto or any width like 600px
fit: true,   // 100% fit in a container
closed: 'accordion', // Start closed if in accordion view
activate: function(event) { // Callback function if tab is switched
var $tab = $(this);
var $info = $('#tabInfo');
var $name = $('span', $info);
$name.text($tab.text());
$info.show();
}
});
$('#verticalTab').easyResponsiveTabs({
type: 'vertical',
width: 'auto',
fit: true
});
});
</script>
<link href="css/owl.carousel.css" rel="stylesheet" type="text/css" media="all">
<script src="js/owl.carousel.js"></script>
<script>
	$(document).ready(function() { 
		$("#owl-demo").owlCarousel({
	 
		 autoPlay: 3000, //Set AutoPlay to 3 seconds
		  autoPlay : true,
		   navigation :true,

		  items : 5,
		  itemsDesktop : [640,4],
		  itemsDesktopSmall : [414,3]
	 
		});
	 
	}); 
</script> 

<!--/script-->
<script type="text/javascript" src="js/move-top.js"></script>
<script type="text/javascript" src="js/easing.js"></script>

<script type="text/javascript">
			jQuery(document).ready(function($) {
				$(".scroll").click(function(event){		
					event.preventDefault();
					$('html,body').animate({scrollTop:$(this.hash).offset().top},900);
				});
			});
</script>
 <script type="text/javascript">
						$(document).ready(function() {
							/*
							var defaults = {
					  			containerID: 'toTop', // fading element id
								containerHoverID: 'toTopHover', // fading element hover id
								scrollSpeed: 1200,
								easingType: 'linear' 
					 		};
							*/
							
							$().UItoTop({ easingType: 'easeOutQuart' });
							
						});
					</script>
<!--end-smooth-scrolling-->
	<script src="js/bootstrap.js"></script>

<script type="text/javascript">
    //退票
    function delt(n,t,i){
        document.getElementById("tname").innerHTML=n;
        document.getElementById("ttime").innerHTML=t;
        document.getElementById("t_id").value=i;
    }
</script>

</body>
</html>