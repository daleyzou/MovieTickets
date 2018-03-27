<%@ page import="com.movie.entity.Movieinfo" %>
<%@ page import="com.movie.entity.User" %>
s<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@taglib prefix="s" uri="/struts-tags"%>
<html>
<head>
<title>详情</title>
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
<link rel="stylesheet" type="text/css" href="css/order.css" />

</head>

<%
	HttpSession s = request.getSession();
	Movieinfo movieinfo = (Movieinfo) s.getAttribute("moviedesc");
	User user = (User)s.getAttribute("user");
%>

<body>
<!--/main-header-->
  <!--/banner-section-->
	<div id="demo-1" class="banner-inner">
	 <div class="banner-inner-dott">
		<!--/header-w3l-->
			   <div class="header-w3-agileits" id="home">
			     <div class="inner-header-agile part2">	
				<nav class="navbar navbar-default">
					<div class="navbar-header">
						<h1><a  href="index.jsp"><span>好</span>朋友电影院 <span>购</span>票网</a></h1>
					</div>
					<!-- navbar-header -->
					<div class="collapse navbar-collapse" id="bs-example-navbar-collapse-1">
							<ul class="nav navbar-nav">
							<li><a href="index.jsp">主页</a></li>
								<%
									if (user != null){
								%>
							<li><a href="/ticket/showalltickets">我的</a></li>
								<%
									}
								%>
							<li><a href="/movie/showallmovies?start=0&page=0">所有电影</a></li>
						</ul>

					</div>
					<div class="clearfix"> </div>	
				</nav>
					<div class="w3ls_search">
									<div class="cd-main-header">
										<ul class="cd-header-buttons">
											<li><a class="cd-search-trigger" href="#"> <span></span></a></li>
										</ul> <!-- cd-header-buttons -->
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
		</div>
    </div>
  <!--/banner-section-->

<!-- 详细内容介绍 -->

	<div class="w3_content_agilleinfo_inner">
		<div class="agile_featured_movies">
			<div class="inner-agile-w3l-part-head">
				<s:set name="desc" value="#session.moviedesc"/>
				<h3 class="w3l-inner-h-title"><s:property value="#desc.name"/></h3>
				<p class="w3ls_head_para"><s:property value="#desc.type"/></p>
			</div>
			<div class="info_description">
				<span>导演： <s:property value="#desc.director"/></span>
				<br/><br/>
				<span>上映时间：<s:property value="#desc.time"/></span>
				<br/><br/>
				<span>内容介绍：<br/><br/>	<s:property value="#desc.introduce"/></span>
				<br/><br/>
				<span>演员表：<s:property value="#desc.actors"/></span>
				<br/><br/>
			</div>
		</div>
		
		<h3 class="agile_w3_title"> <span>电影截图：</span></h3>
			<!--开始-->				
			<div class="w3_agile_latest_movies">
			
				<div id="owl-demo" class="owl-carousel owl-theme">
					<!-- 滚动小模块 -->
					<div class="item">
						<div>
							<img src="images/m5.jpg"/>
							<div class="w3l-action-icon"><i class="fa fa-play-circle-o" aria-hidden="true"></i></div>
						</div>
					</div>
					<div class="item">
						<div>
							<img src="images/m5.jpg"/>
							<div class="w3l-action-icon"><i class="fa fa-play-circle-o" aria-hidden="true"></i></div>
						</div>
					</div>
					<div class="item">
						<div>
							<img src="images/m5.jpg"/>
							<div class="w3l-action-icon"><i class="fa fa-play-circle-o" aria-hidden="true"></i></div>
						</div>
					</div>
					<div class="item">
						<div>
							<img src="images/m5.jpg"/>
							<div class="w3l-action-icon"><i class="fa fa-play-circle-o" aria-hidden="true"></i></div>
						</div>
					</div>
					<div class="item">
						<div>
							<img src="images/m5.jpg"/>
							<div class="w3l-action-icon"><i class="fa fa-play-circle-o" aria-hidden="true"></i></div>
						</div>
					</div>
					<div class="item">
						<div>
							<img src="images/m5.jpg"/>
							<div class="w3l-action-icon"><i class="fa fa-play-circle-o" aria-hidden="true"></i></div>
						</div>
					</div>
					<div class="item">
						<div>
							<img src="images/m5.jpg"/>
							<div class="w3l-action-icon"><i class="fa fa-play-circle-o" aria-hidden="true"></i></div>
						</div>
					</div>
					   </div>
				    </div>
				    <!-- 滚动电影截图结束 -->
		<!-- 评论 -->
		<h3 class="agile_w3_title"> <span>电影评论：</span></h3>
		<div class="w3_content_agilleinfo_inner">
		<div class="agile_featured_movies">
		<div id="myTabContent" class="tab-content">
		<div role="tabpanel" class="tab-pane fade in active" id="home" aria-labelledby="home-tab">
								<div class="agile-news-table">
									<div class="w3ls-news-result">
										<h4>评论数 : <span id="commentNum"></span></h4>
									</div>
									<table id="table-breakpoint">
										<thead>
										  <tr>
											<th>用户</th>
											<th>时间</th>
											<th>评论</th>
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

		<!--选座的弹出框 -->
		<div class="modal fade" id="order" tabindex="-1" role="dialog" >

			<div class="modal-dialog">

				<div class="modal-content">
					<div class="modal-header">
						<button type="button" class="close" data-dismiss="modal">&times;</button>
						<h4><span id="m_name1"></span></h4>
						<div class="login-form">

							<div id="main">
								<h2 class="top_title"><a href="#"></a></h2>
								<div class="demo">
									<div id="seat-map">
										<div class="front">屏幕</div>
									</div>
									<form action="ticket/buytickets" method="post" >
										<input type="hidden" name="movieName" id="movieName" value=""/>
										<input type="hidden" name="time" id="time" value=""/>
										<input type="hidden" name="seatId" id="seatId" value=""/>
										<input type="hidden" name="ticketnum" id="ticketnum" value=""/>
										<input type="hidden" name="money" id="money" value=""/>
										<div class="booking-details">
											<p>影片：<span id="m_name2"></span></p>
											<p>时间：<span id="m_time"></span></p>
											<p>座位：</p>
											<ul id="selected-seats"></ul>
											<p>票数：<span id="counter">0</span></p>
											<p>总计：<b>￥<span id="total">0</span></b></p>
											<%
												if (user == null){
											%>
											<button  class="btn btn-default" disabled="disabled">请先登录</button>
											<%
											}else {
											%>
											<button class="btn btn-default" type="submit" onclick="return buy();">确定购买</button>
											<%
												}
											%>
											<div id="legend"></div>
										</div>
									</form>
									<div style="clear:both"></div>
								</div>
								<br/>
							</div>
						</div>
					</div>
				</div>
			</div>
		</div>
		<!-- 评论结束 -->
		
		<div style="text-align: center">
			<input class="btn btn-default" type="button"  data-toggle="modal" data-target="#order"
				   onclick="chooseset('<%=movieinfo.getName()%>','<%=movieinfo.getTime()%>')" value="选座">
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

<script src="js/jquery-1.11.1.min.js"></script>
<script src="js/jquery.seat-charts.min.js"></script>

<script>
	$(function () {
		$.ajax({
			type:"post",
			url:"/comment/getCommentForMovie",
			data:{"movieId":"<%=movieinfo.getId()%>","startPage":"0"},
			dataType:"json",
			success:function (json) {

				$("#commentNum").html(json.comNumForMovie);

				var list = json.list;
				var str;
				for (var i= 0; i < list.length;i++){
					str = str +"<tr> <td class=\"w3-list-info\"> "+list[i].username+"</td>";
					str = str +"<td class=\"w3-list-info\">"+list[i].time+"</td>";
					str = str +"<td class=\"w3-list-info\">"+list[i].content+"</td> </tr>";
				}
				$("#commentlist").html(str);
			}
		});
	});

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
			</script>

		<!-- //Dropdown-Menu-JavaScript -->
		<!-- search-jQuery -->
				<script src="js/main.js"></script>
			<!-- //search-jQuery -->

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
    var price = 80; //票价
    $(document).ready(function() {
        var $cart = $('#selected-seats'), //座位区
            $counter = $('#counter'), //票数
            $total = $('#total'); //总计金额

        var sc = $('#seat-map').seatCharts({
            map: [  //座位图
                '__aaaaaa__',
                '_aaaaaaaa_',
                '__________',
                'aaaaaaaaaa',
                'aaaaaaaaaa',
                'aaaaaaaaaa',
                'aaaaaaaaaa',
                'aaaaaaaaaa',
                'aaaaaaaaaa',
                'aa__aa__aa'
            ],
            naming : {
                top : false,
                getLabel : function (character, row, column) {
                    return column;
                }
            },
            legend : { //定义图例
                node : $('#legend'),
                items : [
                    [ 'a', 'available',   '可选座' ],
                    [ 'a', 'unavailable', '已售出']
                ]
            },
            click: function () { //点击事件
                if (this.status() == 'available') { //可选座
                    $('<ol>'+(this.settings.row+1)+'排'+this.settings.label+'座</ol>')
                        .attr('id', 'cart-item-'+this.settings.id)
                        .data('seatId', this.settings.id)
                        .appendTo($cart);

                    $counter.text(sc.find('selected').length+1);
                    $total.text(recalculateTotal(sc)+price);

                    return 'selected';
                } else if (this.status() == 'selected') { //已选中
                    //更新数量
                    $counter.text(sc.find('selected').length-1);
                    //更新总计
                    $total.text(recalculateTotal(sc)-price);

                    //删除已预订座位
                    $('#cart-item-'+this.settings.id).remove();
                    //可选座
                    return 'available';
                } else if (this.status() == 'unavailable') { //已售出
                    return 'unavailable';
                } else {
                    return this.style();
                }
            }
        });
        //已售出的座位
        sc.get(['1_2', '4_4']).status('unavailable');

    });


    //计算总金额
    function recalculateTotal(sc) {
        var total = 0;
        sc.find('selected').each(function () {
            total += price;
        });

        return total;
    }
</script>
<script type="text/javascript">
    //判断是否允许购买
    function buy() {
        var count=document.getElementById("counter").innerText; //票数
        if(count>0){
            alert("购买成功！");
            var movieName =  document.getElementById("m_name2").innerText;
            document.getElementById("movieName").value=movieName;
            var time =  document.getElementById("m_time").innerText;
            document.getElementById("time").value=time;
            var seatId =  document.getElementById("selected-seats").innerText;
            document.getElementById("seatId").value=seatId;
            var seatnum =  document.getElementById("counter").innerText;
            document.getElementById("ticketnum").value=seatnum;
            var money =  document.getElementById("total").innerText;
            document.getElementById("money").value=money;
            return true;
        }else{
            alert("没有选择座位！");
            return false;
        }
    }

    /*设置每个选座对应的电影*/
    function chooseset(n,t){
        document.getElementById("m_name1").innerHTML=n+"---选座";
        document.getElementById("m_name2").innerHTML=n;
        document.getElementById("m_time").innerHTML=t;
    }
</script>

</body>
</html>