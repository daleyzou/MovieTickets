<%@ page import="com.movie.entity.User" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
<title>主页</title>
<!-- //for-mobile-apps -->
<link href="css/bootstrap.css" rel="stylesheet" type="text/css" media="all" />
<!-- pop-up -->
<link href="css/popuo-box.css" rel="stylesheet" type="text/css" media="all" />
<!-- //pop-up -->
<link href="css/easy-responsive-tabs.css" rel='stylesheet' type='text/css'/>
<link rel="stylesheet" type="text/css" href="css/zoomslider.css" />
<link rel="stylesheet" type="text/css" href="css/style.css" />
<link href="css/font-awesome.css" rel="stylesheet">
<link href="css/tip.css"/>
<script type="text/javascript" src="js/modernizr-2.6.2.min.js"></script>
<script src="js/useraction.js"></script>
<script src="js/beginpage.js"></script>
<script src="js/all_page.js"></script>




</head>

<%
	HttpSession s =request.getSession();
	User user = (User)s.getAttribute("user");
%>

<body>
<!--/main-header-->
  <!--/banner-section-->
	<div id="demo-1" data-zs-src='["images/2.jpg", "images/1.jpg", "images/3.jpg","images/4.jpg"]' data-zs-overlay="dots">
		<div class="demo-inner-content">
		<!--/header-w3l-->
			   <div class="header-w3-agileits" id="home">
			     <div class="inner-header-agile">	
				<nav class="navbar navbar-default">
					<div class="navbar-header">
						<h1><a  href="index.jsp"><span>好</span>朋友电影院 <span>购</span>票网</a></h1>
					</div>
					<!-- navbar-header -->
					<div class="collapse navbar-collapse" id="bs-example-navbar-collapse-1">
							<ul class="nav navbar-nav">
							<li><a href="index.jsp">主页</a></li>
							<li><a href="/movie/showallmovies?start=0&page=0">浏览所有</a></li>
								<%
									if(user ==null){
								%>
									<li><a href="#" data-toggle="modal" data-target="#myModal4">登录</a></li>
									<li><a href="#" data-toggle="modal" data-target="#myModal5">注册</a></li>
								<%
									}else{
								%>
									<li><a href="/ticket/showalltickets">我的</a></li>
									<li><a href="" onclick="exit()">退出</a></li>
								<%
									}
								%>
						</ul>

					</div>
					<div class="clearfix"> </div>	
				</nav>
					<div class="w3ls_search">
									<div class="cd-main-header">
										<ul class="cd-header-buttons">
											<li><a class="cd-search-trigger" href="#"> <span></span></a></li>
										</ul>
									</div>
									<div id="cd-search" class="cd-search">
										<form action="#" method="post">
											<input name="Search" type="search" placeholder="查找...">
										</form>
									</div>
								</div>
			</div> 

			   </div>
		<!--//header-w3l-->
			<!--/banner-info-->
			   <div class="baner-info">
			      <h3>带着 <span>好朋友</span> <span>一起</span>去看电影</h3>
				  <h4>妈妈再也不用担心我看电影排队啦.</h4>
				  <!-- <a class="w3_play_icon1" href="#">
											Watch Trailer
										</a> -->
			   </div>	
		</div>
    </div>
    
  <!--/banner-section-->
 <!--//main-header-->
	         <!--/banner-bottom-->
			  <div class="w3_agilits_banner_bootm">
			     <div class="w3_agilits_inner_bottom">
			            <div class="col-md-6 wthree_agile_login">
						     <ul>
								 <%
									 if (user!=null){
								 %>
								 <li><span class="glyphicon glyphicon-user"></span></li>
								 <li><i aria-hidden="true"></i><%=user.getUsername()%></li>
								 <%
									 }else {
								 %>
								 <li><span class="glyphicon glyphicon-user">未登录</span></li>
								 <%
									 }
								 %>
								</ul>
						</div>
						 <div class="col-md-6 wthree_share_agile">
									
									<div class="single-agile-shar-buttons">
									<ul>
								<li>
									<div class="fb-like" data-href="" data-layout="button_count" data-action="like" data-size="small" data-show-faces="false" data-share="false"></div>
									
								</li>
							</ul>
								</div>
						</div>
				</div>
			</div>
			<!--//banner-bottom-->
		     <!-- Modal1 -->
					<div class="modal fade" id="myModal4" tabindex="-1" role="dialog" >

							<div class="modal-dialog">
							<!-- 登录输入框-->
								<div class="modal-content">
									<div class="modal-header">
										<button type="button" class="close" data-dismiss="modal">&times;</button>
										<h4>登录</h4>
										<div class="login-form">
											<form id="userInfo"  method="post" >
												<input type="text" name="username" placeholder="用户名" required="">
												<input type="password" name="password" placeholder="密码" required="">
												<span id="checkLogin" style="color:red;font-size: 3px"></span>
												<div class="tp">
													<input class="btn btn-default" type="button" value="登录" onclick="login()" style="width: 100%">
												</div>
											</form>
										</div>
									</div>
								</div>
							</div>
						</div>
		
					<div class="modal fade" id="myModal5" tabindex="-1" role="dialog" >

							<div class="modal-dialog">
							<!-- 注册输入框-->
								<div class="modal-content">
									<div class="modal-header">
										<button type="button" class="close" data-dismiss="modal">&times;</button>
										<h4>注册</h4>
										<div class="login-form">
											<form  id="regInfo" method="post" >
											    <input type="text" name="username" placeholder="用户名" id="username">
												<span id="checkUserName" style="color:red;font-size: 3px"></span>
												<input type="password" name="password" placeholder="密码" id="password">
												<span id="checkPassWord" style="color:red;font-size: 3px"></span>
												<input type="password" name="conform password" placeholder="重复密码" id="repassword">
												<div class="tp">
													<input class="btn btn-default" type="button" value="注册" onclick="reg()" style="width: 100%">
												</div>
											</form>
										</div>
									</div>
								</div>
							</div>
						</div>
				<!-- 电影展示-->
			
				<div class="w3_content_agilleinfo_inner">
					<div class="agile_featured_movies">
						
					   <div class="agileinfo_tabs">
						<!--3个推荐模块开始-->
					    <div id="horizontalTab">
								<ul class="resp-tabs-list">
									<li>推荐</li>
									<li onclick="loadIamges('upset','upset')">冷门</li>
									<li onclick="loadIamges('giverandom','giverandom')">随机</li>
								</ul>
						<div class="resp-tabs-container">
						<!--最新模块-->
							<div class="tab1">
								<div class="tab_movies_agileinfo">
									<div class="w3_agile_featured_movies" id="recommend">
										<div class="col-md-5 video_agile_player">
											<div class="video-grid-single-page-agileits">
												<div data-video="fNKUgX8PhMA"> <img src="images/11.jpg" alt="" class="img-responsive" /> </div>
											</div>


											<div class="player-text">
												<p class="fexi_header">暮光之城 </p>
												<p class="fexi_header_para"><span class="conjuring_w3">故事简介<label>:</label></span>因为父母离异，贝拉（克里斯汀•斯图尔特 Kristen Stewart 饰）随父亲来到小镇生活。
													在新学校里，贝拉留意到一群举止诡异的怪人，他们特立独行，很是神秘....                                               你好
													在事实面前，一场人鬼之恋由此展开……
												</p>
												<p class="fexi_header_para"><span>
														上映时间<label>:</label></span>2009-11-25 </p>
												<p class="fexi_header_para"><span>
														导演<label>:</label></span>凯瑟琳·哈德威克
												</p>
												<p class="fexi_header_para"><span>
														演员<label>:</label></span>克里斯汀·斯图尔特 / 罗伯特·帕丁森
												</p>
												<p class="fexi_header_para">
														<span>
															类型<label>:</label> </span>
													<a href="genre.html">剧情 </a> |
													<a href="genre.html">爱情 </a> |
													<a href="genre.html">惊悚 </a>
												</p>
												<p class="fexi_header_para fexi_header_para1"><span>
														评分<label>:</label></span>
													<i class="fa fa-star" aria-hidden="true"></i>
													<i class="fa fa-star" aria-hidden="true"></i>
													<i class="fa fa-star-half-o" aria-hidden="true"></i>
													<i class="fa fa-star-o" aria-hidden="true"></i>
													<i class="fa fa-star-o" aria-hidden="true"></i>
												</p>
											</div>

										</div>
										<div class="col-md-7 wthree_agile-movies_list">
											<!-- 左边小模块开始 -->
											<div class="w3l-movie-gride-agile" id="recommend1">
												<a href="#" class="hvr-sweep-to-bottom"><img src="#" title="Movies Pro" class="img-responsive" alt=" ">
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
																<li><i class="fa fa-star-o" aria-hidden="true"></i></li>
																<li><i class="fa fa-star-o" aria-hidden="true"></i></li>
																<li><i class="fa fa-star-o" aria-hidden="true"></i></li>
															</ul>
														</div>
														<div class="clearfix"></div>
													</div>
												</div>
												<div class="ribben">
													<p class="daleyzou_p">新</p>
												</div>
											</div>
											<div class="w3l-movie-gride-agile" id="recommend2">
												<a href="#" class="hvr-sweep-to-bottom"><img src="#" title="Movies Pro" class="img-responsive" alt=" ">
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
																<li><a href="#"><i class="fa fa-star" aria-hidden="true"></i></a></li>
																<li><a href="#"><i class="fa fa-star" aria-hidden="true"></i></a></li>
																<li><a href="#"><i class="fa fa-star-o" aria-hidden="true"></i></a></li>
																<li><a href="#"><i class="fa fa-star-o" aria-hidden="true"></i></a></li>
																<li><a href="#"><i class="fa fa-star-o" aria-hidden="true"></i></a></li>
															</ul>
														</div>
														<div class="clearfix"></div>
													</div>
												</div>
												<div class="ribben">
													<p class="daleyzou_p">新</p>
												</div>
											</div>
											<div class="w3l-movie-gride-agile" id="recommend3">
												<a href="#" class="hvr-sweep-to-bottom"><img src="#" title="Movies Pro" class="img-responsive" alt=" ">
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
																<li><a href="#"><i class="fa fa-star" aria-hidden="true"></i></a></li>
																<li><a href="#"><i class="fa fa-star" aria-hidden="true"></i></a></li>
																<li><a href="#"><i class="fa fa-star-o" aria-hidden="true"></i></a></li>
																<li><a href="#"><i class="fa fa-star-o" aria-hidden="true"></i></a></li>
																<li><a href="#"><i class="fa fa-star-o" aria-hidden="true"></i></a></li>
															</ul>
														</div>
														<div class="clearfix"></div>
													</div>
												</div>
												<div class="ribben">
													<p class="daleyzou_p">新</p>
												</div>
											</div><div class="w3l-movie-gride-agile" id="recommend4">
											<a href="#" class="hvr-sweep-to-bottom"><img src="#" title="Movies Pro" class="img-responsive" alt=" ">
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
															<li><a href="#"><i class="fa fa-star" aria-hidden="true"></i></a></li>
															<li><a href="#"><i class="fa fa-star" aria-hidden="true"></i></a></li>
															<li><a href="#"><i class="fa fa-star-o" aria-hidden="true"></i></a></li>
															<li><a href="#"><i class="fa fa-star-o" aria-hidden="true"></i></a></li>
															<li><a href="#"><i class="fa fa-star-o" aria-hidden="true"></i></a></li>
														</ul>
													</div>
													<div class="clearfix"></div>
												</div>
											</div>
											<div class="ribben">
												<p class="daleyzou_p">新</p>
											</div>
										</div><div class="w3l-movie-gride-agile" id="recommend5">
											<a href="#" class="hvr-sweep-to-bottom"><img src="#" title="Movies Pro" class="img-responsive" alt=" ">
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
															<li><a href="#"><i class="fa fa-star" aria-hidden="true"></i></a></li>
															<li><a href="#"><i class="fa fa-star" aria-hidden="true"></i></a></li>
															<li><a href="#"><i class="fa fa-star-o" aria-hidden="true"></i></a></li>
															<li><a href="#"><i class="fa fa-star-o" aria-hidden="true"></i></a></li>
															<li><a href="#"><i class="fa fa-star-o" aria-hidden="true"></i></a></li>
														</ul>
													</div>
													<div class="clearfix"></div>
												</div>
											</div>
											<div class="ribben">
												<p class="daleyzou_p">新</p>
											</div>
										</div>
											<div class="w3l-movie-gride-agile" id="recommend6">
												<a href="#" class="hvr-sweep-to-bottom"><img src="#" title="Movies Pro" class="img-responsive" alt=" ">
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
																<li><a href="#"><i class="fa fa-star" aria-hidden="true"></i></a></li>
																<li><a href="#"><i class="fa fa-star" aria-hidden="true"></i></a></li>
																<li><a href="#"><i class="fa fa-star-o" aria-hidden="true"></i></a></li>
																<li><a href="#"><i class="fa fa-star-o" aria-hidden="true"></i></a></li>
																<li><a href="#"><i class="fa fa-star-o" aria-hidden="true"></i></a></li>
															</ul>
														</div>
														<div class="clearfix"></div>
													</div>
												</div>
												<div class="ribben">
													<p class="daleyzou_p">新</p>
												</div>
											</div>
											<div class="w3l-movie-gride-agile" id="recommend7">
												<a href="#" class="hvr-sweep-to-bottom"><img src="#" title="Movies Pro" class="img-responsive" alt=" ">
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
																<li><a href="#"><i class="fa fa-star" aria-hidden="true"></i></a></li>
																<li><a href="#"><i class="fa fa-star" aria-hidden="true"></i></a></li>
																<li><a href="#"><i class="fa fa-star-o" aria-hidden="true"></i></a></li>
																<li><a href="#"><i class="fa fa-star-o" aria-hidden="true"></i></a></li>
																<li><a href="#"><i class="fa fa-star-o" aria-hidden="true"></i></a></li>
															</ul>
														</div>
														<div class="clearfix"></div>
													</div>
												</div>
												<div class="ribben">
													<p class="daleyzou_p">新</p>
												</div>
											</div>
											<div class="w3l-movie-gride-agile" id="recommend8">
												<a href="#" class="hvr-sweep-to-bottom"><img src="#" title="Movies Pro" class="img-responsive" alt=" ">
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
																<li><a href="#"><i class="fa fa-star" aria-hidden="true"></i></a></li>
																<li><a href="#"><i class="fa fa-star" aria-hidden="true"></i></a></li>
																<li><a href="#"><i class="fa fa-star-o" aria-hidden="true"></i></a></li>
																<li><a href="#"><i class="fa fa-star-o" aria-hidden="true"></i></a></li>
																<li><a href="#"><i class="fa fa-star-o" aria-hidden="true"></i></a></li>
															</ul>
														</div>
														<div class="clearfix"></div>
													</div>
												</div>
												<div class="ribben">
													<p class="daleyzou_p">新</p>
												</div>
											</div>


											<!-- 左边小模块结束 -->
										</div>
										<div class="clearfix"> </div>
									</div>
									<div class="cleafix"></div>
								</div>
							</div>


								<!-- 最热模块 -->
							<div class="tab2">
								<div class="tab_movies_agileinfo">
										<div class="w3_agile_featured_movies" id="upset">
											<div class="col-md-5 video_agile_player">
										            <div class="video-grid-single-page-agileits">
														<div data-video="fNKUgX8PhMA"> <img src="images/22.jpg" alt="" class="img-responsive" /> </div>
													</div>


												<div class="player-text">
													<p class="fexi_header">遇见你之前 </p>
													<p class="fexi_header_para"><span class="conjuring_w3">故事简介<label>:</label></span>来自于小镇的年轻女孩小露（艾米莉亚·
														克拉克 Emilia Clarke 饰）应聘成为了一名看护，她所要照顾的对象，是一位名叫威尔（山姆·克拉弗林 Sam Claflin 饰）的男子。
														曾经的威尔家境优渥，热爱自由，喜欢到世界各地冒险，然而...
													</p>
													<p class="fexi_header_para"></p>
													<p class="fexi_header_para"><span>
														上映时间<label>:</label></span>2016-06-03 </p>
													<p class="fexi_header_para"><span>
														导演<label>:</label></span>罗西娅·夏罗克
													</p>
													<p class="fexi_header_para"><span>
														演员<label>:</label></span>: 艾米莉亚·克拉克 / 山姆·克拉弗林
													</p>
													<p class="fexi_header_para">
														<span>
															类型<label>:</label> </span>
														<a href="genre.html">剧情 </a> |
														<a href="genre.html">爱情 </a>
													</p>


													<p class="fexi_header_para"></p>
													<p class="fexi_header_para fexi_header_para1"><span>
														评分<label>:</label></span>
														<i class="fa fa-star" aria-hidden="true"></i>
														<i class="fa fa-star" aria-hidden="true"></i>
														<i class="fa fa-star-half-o" aria-hidden="true"></i>
														<i class="fa fa-star-o" aria-hidden="true"></i>
														<i class="fa fa-star-o" aria-hidden="true"></i>
													</p>
												</div>

										    </div>
										     <div class="col-md-7 wthree_agile-movies_list">
												<!-- 左边小模块开始 -->
												<div class="w3l-movie-gride-agile" id="upset1">
												<a href="#" class="hvr-sweep-to-bottom"><img src="#" title="Movies Pro" class="img-responsive" alt=" ">
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
																<li><i class="fa fa-star-o" aria-hidden="true"></i></li>
																<li><i class="fa fa-star-o" aria-hidden="true"></i></li>
																<li><i class="fa fa-star-o" aria-hidden="true"></i></li>
															</ul>
														</div>
														<div class="clearfix"></div>
													</div>
												</div>
												<div class="ribben">
													<p class="daleyzou_p">新</p>
												</div>
											</div>
											<div class="w3l-movie-gride-agile" id="upset2">
												<a href="#" class="hvr-sweep-to-bottom"><img src="#" title="Movies Pro" class="img-responsive" alt=" ">
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
																<li><a href="#"><i class="fa fa-star" aria-hidden="true"></i></a></li>
																<li><a href="#"><i class="fa fa-star" aria-hidden="true"></i></a></li>
																<li><a href="#"><i class="fa fa-star-o" aria-hidden="true"></i></a></li>
																<li><a href="#"><i class="fa fa-star-o" aria-hidden="true"></i></a></li>
																<li><a href="#"><i class="fa fa-star-o" aria-hidden="true"></i></a></li>
															</ul>
														</div>
														<div class="clearfix"></div>
													</div>
												</div>
												<div class="ribben">
													<p class="daleyzou_p">新</p>
												</div>
											</div>
												<div class="w3l-movie-gride-agile" id="upset3">
												<a href="#" class="hvr-sweep-to-bottom"><img src="#" title="Movies Pro" class="img-responsive" alt=" ">
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
																<li><a href="#"><i class="fa fa-star" aria-hidden="true"></i></a></li>
																<li><a href="#"><i class="fa fa-star" aria-hidden="true"></i></a></li>
																<li><a href="#"><i class="fa fa-star-o" aria-hidden="true"></i></a></li>
																<li><a href="#"><i class="fa fa-star-o" aria-hidden="true"></i></a></li>
																<li><a href="#"><i class="fa fa-star-o" aria-hidden="true"></i></a></li>
															</ul>
														</div>
														<div class="clearfix"></div>
													</div>
												</div>
												<div class="ribben">
													<p class="daleyzou_p">新</p>
												</div>
											</div><div class="w3l-movie-gride-agile" id="upset4">
												<a href="#" class="hvr-sweep-to-bottom"><img src="#" title="Movies Pro" class="img-responsive" alt=" ">
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
																<li><a href="#"><i class="fa fa-star" aria-hidden="true"></i></a></li>
																<li><a href="#"><i class="fa fa-star" aria-hidden="true"></i></a></li>
																<li><a href="#"><i class="fa fa-star-o" aria-hidden="true"></i></a></li>
																<li><a href="#"><i class="fa fa-star-o" aria-hidden="true"></i></a></li>
																<li><a href="#"><i class="fa fa-star-o" aria-hidden="true"></i></a></li>
															</ul>
														</div>
														<div class="clearfix"></div>
													</div>
												</div>
												<div class="ribben">
													<p class="daleyzou_p">新</p>
												</div>
											</div><div class="w3l-movie-gride-agile" id="upset5">
												<a href="#" class="hvr-sweep-to-bottom"><img src="#" title="Movies Pro" class="img-responsive" alt=" ">
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
																<li><a href="#"><i class="fa fa-star" aria-hidden="true"></i></a></li>
																<li><a href="#"><i class="fa fa-star" aria-hidden="true"></i></a></li>
																<li><a href="#"><i class="fa fa-star-o" aria-hidden="true"></i></a></li>
																<li><a href="#"><i class="fa fa-star-o" aria-hidden="true"></i></a></li>
																<li><a href="#"><i class="fa fa-star-o" aria-hidden="true"></i></a></li>
															</ul>
														</div>
														<div class="clearfix"></div>
													</div>
												</div>
												<div class="ribben">
													<p class="daleyzou_p">新</p>
												</div>
											</div>
											 <div class="w3l-movie-gride-agile" id="upset6">
												<a href="#" class="hvr-sweep-to-bottom"><img src="#" title="Movies Pro" class="img-responsive" alt=" ">
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
																<li><a href="#"><i class="fa fa-star" aria-hidden="true"></i></a></li>
																<li><a href="#"><i class="fa fa-star" aria-hidden="true"></i></a></li>
																<li><a href="#"><i class="fa fa-star-o" aria-hidden="true"></i></a></li>
																<li><a href="#"><i class="fa fa-star-o" aria-hidden="true"></i></a></li>
																<li><a href="#"><i class="fa fa-star-o" aria-hidden="true"></i></a></li>
															</ul>
														</div>
														<div class="clearfix"></div>
													</div>
												</div>
												<div class="ribben">
													<p class="daleyzou_p">新</p>
												</div>
											</div>
												 <div class="w3l-movie-gride-agile" id="upset7">
													 <a href="#" class="hvr-sweep-to-bottom"><img src="#" title="Movies Pro" class="img-responsive" alt=" ">
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
																	 <li><a href="#"><i class="fa fa-star" aria-hidden="true"></i></a></li>
																	 <li><a href="#"><i class="fa fa-star" aria-hidden="true"></i></a></li>
																	 <li><a href="#"><i class="fa fa-star-o" aria-hidden="true"></i></a></li>
																	 <li><a href="#"><i class="fa fa-star-o" aria-hidden="true"></i></a></li>
																	 <li><a href="#"><i class="fa fa-star-o" aria-hidden="true"></i></a></li>
																 </ul>
															 </div>
															 <div class="clearfix"></div>
														 </div>
													 </div>
													 <div class="ribben">
														 <p class="daleyzou_p">新</p>
													 </div>
												 </div>
												 <div class="w3l-movie-gride-agile" id="upset8">
													 <a href="#" class="hvr-sweep-to-bottom"><img src="#" title="Movies Pro" class="img-responsive" alt=" ">
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
																	 <li><a href="#"><i class="fa fa-star" aria-hidden="true"></i></a></li>
																	 <li><a href="#"><i class="fa fa-star" aria-hidden="true"></i></a></li>
																	 <li><a href="#"><i class="fa fa-star-o" aria-hidden="true"></i></a></li>
																	 <li><a href="#"><i class="fa fa-star-o" aria-hidden="true"></i></a></li>
																	 <li><a href="#"><i class="fa fa-star-o" aria-hidden="true"></i></a></li>
																 </ul>
															 </div>
															 <div class="clearfix"></div>
														 </div>
													 </div>
													 <div class="ribben">
														 <p class="daleyzou_p">新</p>
													 </div>
												 </div>
											<!-- 左边小模块结束 -->
											 </div>
											<div class="clearfix"> </div>
										  </div>
										  <div class="cleafix"></div>
									</div>
							</div>
						<!-- 推荐模块 -->
							<div class="tab2">
								<div class="tab_movies_agileinfo">
										<div class="w3_agile_featured_movies" id="giverandom">
											<div class="col-md-5 video_agile_player">
										            <div class="video-grid-single-page-agileits">
														<div data-video="fNKUgX8PhMA"> <img src="images/44.jpg" alt="" class="img-responsive" /> </div>
													</div>


                                                <div class="player-text">
                                                    <p class="fexi_header">逗鸟外传:萌宝满天飞 </p>
                                                    <p class="fexi_header_para"><span class="conjuring_w3">故事简介<label>:</label></span>鹳鸟送子，天经地义……至少以前是这样。现在，他们负责给角落商店送货。
                                                        朱尼尔），是公司里的最佳快递员，即将升职的他在某天值勤时，
                                                        遇到了宝宝制造厂被意外启动的事件。结果.....
                                                    </p>
                                                    <p class="fexi_header_para"></p>
                                                    <p class="fexi_header_para"><span>
														上映时间<label>:</label></span>2016-09-2 </p>
                                                    <p class="fexi_header_para"><span>
														导演<label>:</label></span>尼古拉斯·斯托勒 / 道格·斯威特兰德
                                                    </p>
                                                    <p class="fexi_header_para"><span>
														演员<label>:</label></span>:  安迪·萨姆伯格 / 凯蒂·克朗 / 凯尔希·格兰莫
                                                    </p>
                                                    <p class="fexi_header_para">
														<span>
															类型<label>:</label> </span>
                                                        <a href="genre.html">喜剧 </a> |
                                                        <a href="genre.html">动画 </a> |a
                                                        <a href="genre.html">奇幻 </a>
                                                    </p>


                                                    <p class="fexi_header_para"></p>
                                                    <p class="fexi_header_para fexi_header_para1"><span>
														评分<label>:</label></span>
                                                        <i class="fa fa-star" aria-hidden="true"></i>
                                                        <i class="fa fa-star" aria-hidden="true"></i>
                                                        <i class="fa fa-star-half-o" aria-hidden="true"></i>
                                                        <i class="fa fa-star-o" aria-hidden="true"></i>
                                                        <i class="fa fa-star-o" aria-hidden="true"></i>
                                                    </p>
                                                </div>

										    </div>
										     <div class="col-md-7 wthree_agile-movies_list">
												<!-- 左边小模块开始 -->
												<div class="w3l-movie-gride-agile" id="giverandom1">
												<a href="#" class="hvr-sweep-to-bottom"><img src="#" title="Movies Pro" class="img-responsive" alt=" ">
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
																<li><a href="#"><i class="fa fa-star" aria-hidden="true"></i></a></li>
																<li><a href="#"><i class="fa fa-star" aria-hidden="true"></i></a></li>
																<li><a href="#"><i class="fa fa-star-o" aria-hidden="true"></i></a></li>
																<li><a href="#"><i class="fa fa-star-o" aria-hidden="true"></i></a></li>
																<li><a href="#"><i class="fa fa-star-o" aria-hidden="true"></i></a></li>
															</ul>
														</div>
														<div class="clearfix"></div>
													</div>
												</div>
												<div class="ribben">
													<p class="daleyzou_p">新</p>
												</div>
											</div>
											<div class="w3l-movie-gride-agile" id="giverandom2">
												<a href="#" class="hvr-sweep-to-bottom"><img src="#" title="Movies Pro" class="img-responsive" alt=" ">
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
																<li><a href="#"><i class="fa fa-star" aria-hidden="true"></i></a></li>
																<li><a href="#"><i class="fa fa-star" aria-hidden="true"></i></a></li>
																<li><a href="#"><i class="fa fa-star-o" aria-hidden="true"></i></a></li>
																<li><a href="#"><i class="fa fa-star-o" aria-hidden="true"></i></a></li>
																<li><a href="#"><i class="fa fa-star-o" aria-hidden="true"></i></a></li>
															</ul>
														</div>
														<div class="clearfix"></div>
													</div>
												</div>
												<div class="ribben">
													<p class="daleyzou_p">新</p>
												</div>
											</div>
												<div class="w3l-movie-gride-agile" id="giverandom3">
												<a href="#" class="hvr-sweep-to-bottom"><img src="#" title="Movies Pro" class="img-responsive" alt=" ">
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
																<li><a href="#"><i class="fa fa-star" aria-hidden="true"></i></a></li>
																<li><a href="#"><i class="fa fa-star" aria-hidden="true"></i></a></li>
																<li><a href="#"><i class="fa fa-star-o" aria-hidden="true"></i></a></li>
																<li><a href="#"><i class="fa fa-star-o" aria-hidden="true"></i></a></li>
																<li><a href="#"><i class="fa fa-star-o" aria-hidden="true"></i></a></li>
															</ul>
														</div>
														<div class="clearfix"></div>
													</div>
												</div>
												<div class="ribben">
													<p class="daleyzou_p">新</p>
												</div>
											</div><div class="w3l-movie-gride-agile" id="giverandom4">
												<a href="#" class="hvr-sweep-to-bottom"><img src="#" title="Movies Pro" class="img-responsive" alt=" ">
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
																<li><a href="#"><i class="fa fa-star" aria-hidden="true"></i></a></li>
																<li><a href="#"><i class="fa fa-star" aria-hidden="true"></i></a></li>
																<li><a href="#"><i class="fa fa-star-o" aria-hidden="true"></i></a></li>
																<li><a href="#"><i class="fa fa-star-o" aria-hidden="true"></i></a></li>
																<li><a href="#"><i class="fa fa-star-o" aria-hidden="true"></i></a></li>
															</ul>
														</div>
														<div class="clearfix"></div>
													</div>
												</div>
												<div class="ribben">
													<p class="daleyzou_p">新</p>
												</div>
											</div><div class="w3l-movie-gride-agile" id="giverandom5">
												<a href="#" class="hvr-sweep-to-bottom"><img src="#" title="Movies Pro" class="img-responsive" alt=" ">
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
																<li><a href="#"><i class="fa fa-star" aria-hidden="true"></i></a></li>
																<li><a href="#"><i class="fa fa-star" aria-hidden="true"></i></a></li>
																<li><a href="#"><i class="fa fa-star-o" aria-hidden="true"></i></a></li>
																<li><a href="#"><i class="fa fa-star-o" aria-hidden="true"></i></a></li>
																<li><a href="#"><i class="fa fa-star-o" aria-hidden="true"></i></a></li>
															</ul>
														</div>
														<div class="clearfix"></div>
													</div>
												</div>
												<div class="ribben">
													<p class="daleyzou_p">新</p>
												</div>
											</div>
                                             <div class="w3l-movie-gride-agile" id="giverandom6">
												<a href="#" class="hvr-sweep-to-bottom"><img src="#" title="Movies Pro" class="img-responsive" alt=" ">
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
																<li><a href="#"><i class="fa fa-star" aria-hidden="true"></i></a></li>
																<li><a href="#"><i class="fa fa-star" aria-hidden="true"></i></a></li>
																<li><a href="#"><i class="fa fa-star-o" aria-hidden="true"></i></a></li>
																<li><a href="#"><i class="fa fa-star-o" aria-hidden="true"></i></a></li>
																<li><a href="#"><i class="fa fa-star-o" aria-hidden="true"></i></a></li>
															</ul>
														</div>
														<div class="clearfix"></div>
													</div>
												</div>
												<div class="ribben">
													<p class="daleyzou_p">新</p>
												</div>
											</div>
                                                 <div class="w3l-movie-gride-agile" id="giverandom7">
                                                     <a href="#" class="hvr-sweep-to-bottom"><img src="#" title="Movies Pro" class="img-responsive" alt=" ">
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
                                                                     <li><a href="#"><i class="fa fa-star" aria-hidden="true"></i></a></li>
                                                                     <li><a href="#"><i class="fa fa-star" aria-hidden="true"></i></a></li>
                                                                     <li><a href="#"><i class="fa fa-star-o" aria-hidden="true"></i></a></li>
                                                                     <li><a href="#"><i class="fa fa-star-o" aria-hidden="true"></i></a></li>
                                                                     <li><a href="#"><i class="fa fa-star-o" aria-hidden="true"></i></a></li>
                                                                 </ul>
                                                             </div>
                                                             <div class="clearfix"></div>
                                                         </div>
                                                     </div>
                                                     <div class="ribben">
                                                         <p class="daleyzou_p">新</p>
                                                     </div>
                                                 </div>
                                                 <div class="w3l-movie-gride-agile" id="giverandom8">
                                                     <a href="#" class="hvr-sweep-to-bottom"><img src="#" title="Movies Pro" class="img-responsive" alt=" ">
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
                                                                     <li><a href="#"><i class="fa fa-star" aria-hidden="true"></i></a></li>
                                                                     <li><a href="#"><i class="fa fa-star" aria-hidden="true"></i></a></li>
                                                                     <li><a href="#"><i class="fa fa-star-o" aria-hidden="true"></i></a></li>
                                                                     <li><a href="#"><i class="fa fa-star-o" aria-hidden="true"></i></a></li>
                                                                     <li><a href="#"><i class="fa fa-star-o" aria-hidden="true"></i></a></li>
                                                                 </ul>
                                                             </div>
                                                             <div class="clearfix"></div>
                                                         </div>
                                                     </div>
                                                     <div class="ribben">
                                                         <p class="daleyzou_p">新</p>
                                                     </div>
                                                 </div>
											<!-- 左边小模块结束 -->
											 </div>
											<div class="clearfix"> </div>
										  </div>
										  <div class="cleafix"></div>
									</div>	
							</div>
								<!-- <!--3个推荐模块结束--> 
								
								
							</div>
						</div>
						
					</div>
				<!-- 	轮播电影模块开始-->	
				  <h3 class="agile_w3_title"> <span>最新 </span>电影</h3>
			<!--开始-->				
			<div class="w3_agile_latest_movies">
			
				<div id="owl-demo" class="owl-carousel owl-theme" >
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
											<li><a href="#"><i class="fa fa-star" aria-hidden="true"></i></a></li>
											<li><a href="#"><i class="fa fa-star" aria-hidden="true"></i></a></li>
											<li><a href="#"><i class="fa fa-star" aria-hidden="true"></i></a></li>
											<li><a href="#"><i class="fa fa-star" aria-hidden="true"></i></a></li>
											<li><a href="#"><i class="fa fa-star-half-o" aria-hidden="true"></i></a></li>
										</ul>
									</div>
									<div class="clearfix"></div>
								</div>
							</div>
							<div class="ribben one">
								<p class="daleyzou_p">新</p>
							</div>
						</div>
					</div>
					<div class="item" id="owl-demo2">
						<div class="w3l-movie-gride-agile w3l-movie-gride-slider ">
							<a href="#" class="hvr-sweep-to-bottom"><img src="#" title="Movies Pro" class="img-responsive" alt=" " />
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
											<li><a href="#"><i class="fa fa-star" aria-hidden="true"></i></a></li>
											<li><a href="#"><i class="fa fa-star" aria-hidden="true"></i></a></li>
											<li><a href="#"><i class="fa fa-star" aria-hidden="true"></i></a></li>
											<li><a href="#"><i class="fa fa-star" aria-hidden="true"></i></a></li>
											<li><a href="#"><i class="fa fa-star-o" aria-hidden="true"></i></a></li>
										</ul>
									</div>
									<div class="clearfix"></div>
								</div>
							</div>
							<div class="ribben one">
								<p class="daleyzou_p">新</p>
							</div>
						</div>
					</div>
					<div class="item" id="owl-demo3">
						<div class="w3l-movie-gride-agile w3l-movie-gride-slider ">
							<a href="#" class="hvr-sweep-to-bottom"><img src="#" title="Movies Pro" class="img-responsive" alt=" " />
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
											<li><a href="#"><i class="fa fa-star" aria-hidden="true"></i></a></li>
											<li><a href="#"><i class="fa fa-star" aria-hidden="true"></i></a></li>
											<li><a href="#"><i class="fa fa-star" aria-hidden="true"></i></a></li>
											<li><a href="#"><i class="fa fa-star" aria-hidden="true"></i></a></li>
											<li><a href="#"><i class="fa fa-star-half-o" aria-hidden="true"></i></a></li>
										</ul>
									</div>
									<div class="clearfix"></div>
								</div>
							</div>
							<div class="ribben one">
								<p class="daleyzou_p">新</p>
							</div>
						</div>
					</div>
					<div class="item" id="owl-demo4">
						<div class="w3l-movie-gride-agile w3l-movie-gride-slider ">
							<a href="#" class="hvr-sweep-to-bottom"><img src="#" title="Movies Pro" class="img-responsive" alt=" " />
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
											<li><a href="#"><i class="fa fa-star" aria-hidden="true"></i></a></li>
											<li><a href="#"><i class="fa fa-star" aria-hidden="true"></i></a></li>
											<li><a href="#"><i class="fa fa-star" aria-hidden="true"></i></a></li>
											<li><a href="#"><i class="fa fa-star" aria-hidden="true"></i></a></li>
											<li><a href="#"><i class="fa fa-star-half-o" aria-hidden="true"></i></a></li>
										</ul>
									</div>
									<div class="clearfix"></div>
								</div>
							</div>
							<div class="ribben one">
								<p class="daleyzou_p">新</p>
							</div>
						</div>
					</div><div class="item" id="owl-demo5">
						<div class="w3l-movie-gride-agile w3l-movie-gride-slider ">
							<a href="#" class="hvr-sweep-to-bottom"><img src="#" title="Movies Pro" class="img-responsive" alt=" " />
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
											<li><a href="#"><i class="fa fa-star" aria-hidden="true"></i></a></li>
											<li><a href="#"><i class="fa fa-star" aria-hidden="true"></i></a></li>
											<li><a href="#"><i class="fa fa-star" aria-hidden="true"></i></a></li>
											<li><a href="#"><i class="fa fa-star" aria-hidden="true"></i></a></li>
											<li><a href="#"><i class="fa fa-star-half-o" aria-hidden="true"></i></a></li>
										</ul>
									</div>
									<div class="clearfix"></div>
								</div>
							</div>
							<div class="ribben one">
								<p class="daleyzou_p">新</p>
							</div>
						</div>
					</div>
					<div class="item" id="owl-demo6">
						<div class="w3l-movie-gride-agile w3l-movie-gride-slider ">
							<a href="#" class="hvr-sweep-to-bottom"><img src="#" title="Movies Pro" class="img-responsive" alt=" " />
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
											<li><a href="#"><i class="fa fa-star" aria-hidden="true"></i></a></li>
											<li><a href="#"><i class="fa fa-star" aria-hidden="true"></i></a></li>
											<li><a href="#"><i class="fa fa-star" aria-hidden="true"></i></a></li>
											<li><a href="#"><i class="fa fa-star-half-o" aria-hidden="true"></i></a></li>
											<li><a href="#"><i class="fa fa-star-o" aria-hidden="true"></i></a></li>
										</ul>
									</div>
									<div class="clearfix"></div>
								</div>
							</div>
							<div class="ribben one">
								<p class="daleyzou_p">新</p>
							</div>
						</div>
					</div>
			   </div>
			</div>
				    <!-- 滚动电影结束 -->
				<!--最火电影模块-->
				 <h3 class="agile_w3_title"> <span>最火</span>电影 </h3>
				<!--开始-->
				     <div class="wthree_agile-requested-movies" id="popular">
										<div class="col-md-2 w3l-movie-gride-agile requested-movies" id="popular1">
															<a href="#" class="hvr-sweep-to-bottom"><img src="#" title="电影名" class="img-responsive" alt=" ">
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
																				<li><a href="#"><i class="fa fa-star" aria-hidden="true"></i></a></li>
																				<li><a href="#"><i class="fa fa-star" aria-hidden="true"></i></a></li>
																				<li><a href="#"><i class="fa fa-star-o" aria-hidden="true"></i></a></li>
																				<li><a href="#"><i class="fa fa-star-o" aria-hidden="true"></i></a></li>
																				<li><a href="#"><i class="fa fa-star-o" aria-hidden="true"></i></a></li>
																			</ul>
																		</div>
																		<div class="clearfix"></div>
																	</div>
																</div>
															<div class="ribben one">
																<p class="daleyzou_p">新</p>
															</div>
													</div>
											<div class="col-md-2 w3l-movie-gride-agile requested-movies" id="popular2">
															<a href="#" class="hvr-sweep-to-bottom"><img src="#" title="电影名" class="img-responsive" alt=" ">
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
																				<li><a href="#"><i class="fa fa-star" aria-hidden="true"></i></a></li>
																				<li><a href="#"><i class="fa fa-star" aria-hidden="true"></i></a></li>
																				<li><a href="#"><i class="fa fa-star-o" aria-hidden="true"></i></a></li>
																				<li><a href="#"><i class="fa fa-star-o" aria-hidden="true"></i></a></li>
																				<li><a href="#"><i class="fa fa-star-o" aria-hidden="true"></i></a></li>
																			</ul>
																		</div>
																		<div class="clearfix"></div>
																	</div>
																</div>
															<div class="ribben one">
																<p class="daleyzou_p">新</p>
															</div>
													</div><div class="col-md-2 w3l-movie-gride-agile requested-movies" id="popular3">
															<a href="#" class="hvr-sweep-to-bottom"><img src="#" title="电影名" class="img-responsive" alt=" ">
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
																				<li><a href="#"><i class="fa fa-star" aria-hidden="true"></i></a></li>
																				<li><a href="#"><i class="fa fa-star" aria-hidden="true"></i></a></li>
																				<li><a href="#"><i class="fa fa-star-o" aria-hidden="true"></i></a></li>
																				<li><a href="#"><i class="fa fa-star-o" aria-hidden="true"></i></a></li>
																				<li><a href="#"><i class="fa fa-star-o" aria-hidden="true"></i></a></li>
																			</ul>
																		</div>
																		<div class="clearfix"></div>
																	</div>
																</div>
															<div class="ribben one">
																<p class="daleyzou_p">新</p>
															</div>
													</div>
						 <div class="col-md-2 w3l-movie-gride-agile requested-movies" id="popular4">
															<a href="#" class="hvr-sweep-to-bottom"><img src="#" title="电影名" class="img-responsive" alt=" ">
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
																				<li><a href="#"><i class="fa fa-star" aria-hidden="true"></i></a></li>
																				<li><a href="#"><i class="fa fa-star" aria-hidden="true"></i></a></li>
																				<li><a href="#"><i class="fa fa-star-o" aria-hidden="true"></i></a></li>
																				<li><a href="#"><i class="fa fa-star-o" aria-hidden="true"></i></a></li>
																				<li><a href="#"><i class="fa fa-star-o" aria-hidden="true"></i></a></li>
																			</ul>
																		</div>
																		<div class="clearfix"></div>
																	</div>
																</div>
															<div class="ribben one">
																<p class="daleyzou_p">新</p>
															</div>
													</div>
						 <div class="col-md-2 w3l-movie-gride-agile requested-movies" id="popular5">
							 <a href="#" class="hvr-sweep-to-bottom"><img src="#" title="电影名" class="img-responsive" alt=" ">
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
											 <li><a href="#"><i class="fa fa-star" aria-hidden="true"></i></a></li>
											 <li><a href="#"><i class="fa fa-star" aria-hidden="true"></i></a></li>
											 <li><a href="#"><i class="fa fa-star-o" aria-hidden="true"></i></a></li>
											 <li><a href="#"><i class="fa fa-star-o" aria-hidden="true"></i></a></li>
											 <li><a href="#"><i class="fa fa-star-o" aria-hidden="true"></i></a></li>
										 </ul>
									 </div>
									 <div class="clearfix"></div>
								 </div>
							 </div>
							 <div class="ribben one">
								 <p class="daleyzou_p">新</p>
							 </div>
							 <div class="clearfix"></div>
						 </div>
						 <div class="clearfix"></div>
						</div>
				<!--最火电影结束-->
				<!--口碑电影-->
					<h3 class="agile_w3_title"><span>口碑</span>电影 </h3>
				     <div class="wthree_agile-requested-movies" id="score">
										<div class="col-md-2 w3l-movie-gride-agile requested-movies" id="score1">
															<a href="#" class="hvr-sweep-to-bottom"><img src="#" title="电影名" class="img-responsive" alt=" ">
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
																				<li><a href="#"><i class="fa fa-star" aria-hidden="true"></i></a></li>
																				<li><a href="#"><i class="fa fa-star" aria-hidden="true"></i></a></li>
																				<li><a href="#"><i class="fa fa-star-o" aria-hidden="true"></i></a></li>
																				<li><a href="#"><i class="fa fa-star-o" aria-hidden="true"></i></a></li>
																				<li><a href="#"><i class="fa fa-star-o" aria-hidden="true"></i></a></li>
																			</ul>
																		</div>
																		<div class="clearfix"></div>
																	</div>
																</div>
															<div class="ribben one">
																<p class="daleyzou_p">新</p>
															</div>
													</div>
											<div class="col-md-2 w3l-movie-gride-agile requested-movies" id="score2">
															<a href="#" class="hvr-sweep-to-bottom"><img src="#" title="电影名" class="img-responsive" alt=" ">
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
																				<li><a href="#"><i class="fa fa-star" aria-hidden="true"></i></a></li>
																				<li><a href="#"><i class="fa fa-star" aria-hidden="true"></i></a></li>
																				<li><a href="#"><i class="fa fa-star-o" aria-hidden="true"></i></a></li>
																				<li><a href="#"><i class="fa fa-star-o" aria-hidden="true"></i></a></li>
																				<li><a href="#"><i class="fa fa-star-o" aria-hidden="true"></i></a></li>
																			</ul>
																		</div>
																		<div class="clearfix"></div>
																	</div>
																</div>
															<div class="ribben one">
																<p class="daleyzou_p">新</p>
															</div>
													</div><div class="col-md-2 w3l-movie-gride-agile requested-movies" id="score3">
															<a href="#" class="hvr-sweep-to-bottom"><img src="#" title="电影名" class="img-responsive" alt=" ">
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
																				<li><a href="#"><i class="fa fa-star" aria-hidden="true"></i></a></li>
																				<li><a href="#"><i class="fa fa-star" aria-hidden="true"></i></a></li>
																				<li><a href="#"><i class="fa fa-star-o" aria-hidden="true"></i></a></li>
																				<li><a href="#"><i class="fa fa-star-o" aria-hidden="true"></i></a></li>
																				<li><a href="#"><i class="fa fa-star-o" aria-hidden="true"></i></a></li>
																			</ul>
																		</div>
																		<div class="clearfix"></div>
																	</div>
																</div>
															<div class="ribben one">
																<p class="daleyzou_p">新</p>
															</div>
													</div><div class="col-md-2 w3l-movie-gride-agile requested-movies" id="score4">
															<a href="#" class="hvr-sweep-to-bottom"><img src="#" title="电影名" class="img-responsive" alt=" ">
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
																				<li><a href="#"><i class="fa fa-star" aria-hidden="true"></i></a></li>
																				<li><a href="#"><i class="fa fa-star" aria-hidden="true"></i></a></li>
																				<li><a href="#"><i class="fa fa-star-o" aria-hidden="true"></i></a></li>
																				<li><a href="#"><i class="fa fa-star-o" aria-hidden="true"></i></a></li>
																				<li><a href="#"><i class="fa fa-star-o" aria-hidden="true"></i></a></li>
																			</ul>
																		</div>
																		<div class="clearfix"></div>
																	</div>
																</div>
															<div class="ribben one">
																<p class="daleyzou_p">新</p>
															</div>
													</div><div class="col-md-2 w3l-movie-gride-agile requested-movies" id="score5">
															<a href="#" class="hvr-sweep-to-bottom"><img src="#" title="电影名" class="img-responsive" alt=" ">
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
																				<li><a href="#"><i class="fa fa-star" aria-hidden="true"></i></a></li>
																				<li><a href="#"><i class="fa fa-star" aria-hidden="true"></i></a></li>
																				<li><a href="#"><i class="fa fa-star-o" aria-hidden="true"></i></a></li>
																				<li><a href="#"><i class="fa fa-star-o" aria-hidden="true"></i></a></li>
																				<li><a href="#"><i class="fa fa-star-o" aria-hidden="true"></i></a></li>
																			</ul>
																		</div>
																		<div class="clearfix"></div>
																	</div>
																</div>
															<div class="ribben one">
																<p class="daleyzou_p">新</p>
															</div>
													</div>
												<div class="clearfix"></div>
						</div>
				<!--口碑电影模块结束-->
			</div>
		</div>
			<!--//content-inner-section-->
		
	<!--底部-->
		<div class="contact-w3ls" id="contact">
			<div class="footer-w3lagile-inner">
				<h2>好朋友电影淘票票</h2>
				<p class="para">好电影和好朋友一起看，女朋友算什么，我们有朋友。</p>
					<h3 class="text-center follow">联系我们 </h3>
						<ul class="social-icons1 agileinfo">
							<li><a href="#"><i class="fa fa-weibo"></i></a></li>
							<li><a href="#"><i class="fa fa-wechat"></i></a></li>
							<li><a href="mqqwpa://im/chat?chat_type=wpa&uin=980047129&version=1&src_type=web&web_src=oicqzone.com"><i class="fa fa-qq"></i></a></li>
						</ul>	
					
			 </div>
						
			</div>
			<div class="w3agile_footer_copy">
				    <p>&copy; 2017.软件153-3班@625寝.</p>
			</div>
		<a href="#home" id="toTop" class="scroll" style="display: block;"> <span id="toTopHover" style="opacity: 1;"> </span></a>

<script src="js/jquery-1.11.1.min.js"></script>
	<!-- Dropdown-Menu-JavaScript -->
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
			</script>
		<!-- //Dropdown-Menu-JavaScript -->


<script type="text/javascript" src="js/jquery.zoomslider.min.js"></script>
		<!-- search-jQuery -->
				<script src="js/main.js"></script>
			<script src="js/simplePlayer.js"></script>
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

			//异步加载推荐
            loadIamges("recommend","recommend");
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
        $("#owl-demo").mouseenter(function(){
            loadIamges("owl-demo","owl-demo");
        });

        $("#popular").mouseenter(function(){
            loadIamges("popular","popular");
        });

        $("#owl-demo").mouseenter(function(){
            loadIamges("score","score");
        });

	</script>

</body>
</html>