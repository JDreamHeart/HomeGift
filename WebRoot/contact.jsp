<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<title>家礼网</title>
<link href="css/bootstrap.css" rel='stylesheet' type='text/css' />
<!-- jQuery (necessary JavaScript plugins) -->
<script type='text/javascript' src="js/jquery-1.11.1.min.js"></script>
<!-- Custom Theme files -->
<link href="css/style.css" rel='stylesheet' type='text/css' />
<!-- Custom Theme files -->
<!--//theme-style-->
<meta name="viewport" content="width=device-width, initial-scale=1">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<meta name="keywords" content="Medical_Equipment Responsive web template, Bootstrap Web Templates, Flat Web Templates, Andriod Compatible web template, 
Smartphone Compatible web template, free webdesigns for Nokia, Samsung, LG, SonyErricsson, Motorola web design" />
<script type="application/x-javascript"> addEventListener("load", function() { setTimeout(hideURLbar, 0); }, false); function hideURLbar(){ window.scrollTo(0,1); } </script>
<!-- start menu -->
<script type="text/javascript" src="js/bootstrap.js"></script>
<script type="text/javascript" src="js/home_to_det.js"></script>
<script src="js/simpleCart.min.js"> </script>
<script src="js/responsiveslides.min.js"></script>

<script>
    $(function () {
      $("#slider").responsiveSlides({
      	auto: true,
      	nav: true,
      	speed: 500,
        namespace: "callbacks",
        pager: true,
      });
    });
	
  </script>
<script type="text/javascript" src="js/move-top.js"></script>
       <script type="text/javascript" src="js/easing.js"></script>
		<script type="text/javascript">
			jQuery(document).ready(function($) {
				$(".scroll").click(function(event){		
					event.preventDefault();
					$('html,body').animate({scrollTop:$(this.hash).offset().top},1200);
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
</head>
<body onLoad="log_YON()">
<!-- header -->
<div class="header_bg">
<div class="container">
	<div class="header">
	<div class="head-t">
		<div class="logo">
			<a href="#" onclick="goHomepage()"><img src="images/LOGO.gif" class="img-responsive" alt=""/> </a>
		</div>
		<!-- start header_right -->
		<div class="header_right">
			<div class="rgt-bottom">
				<div id="hiddenORshow" style="display:"><li class="LogOrRes"><a href="login.jsp">登录/注册</a></li></div>
				<div id="hiidenORshow1" style="display:none">欢迎用户${user.name }</div>
				<div class="clearfix"> </div>
			</div>
		<div class="se-ca">
			<div class="search">
				<form>
					<input type="text" value="" placeholder="search...">
					<input type="submit" value="">
				</form>
			</div>
			<div class="cart box_1">
					<a href="#" onclick="gocheckout()">
						<h3>购物车 <span class="simpleCart_total"> ($0.00) </span>  <img src="images/bag.png" alt=""></h3>
					</a>	
					<p><a href="javascript:;" class="simpleCart_empty">  </a></p>
					<div class="clearfix"> </div>
				</div>
			<div class="clearfix"> </div>
		</div>
		</div>
			<div class="clearfix"> </div>
	</div>	
	
		<!-- start header menu -->
		<div class="header-top">
			<nav class="navbar navbar-default">
  <div class="container-fluid">
    <!-- Brand and toggle get grouped for better mobile display -->
    <div class="navbar-header">
      <button type="button" class="navbar-toggle collapsed" data-toggle="collapse" data-target="#bs-example-navbar-collapse-1" aria-expanded="false">
        <span class="sr-only">Toggle navigation</span>
        <span class="icon-bar"></span>
        <span class="icon-bar"></span>
        <span class="icon-bar"></span>
      </button>
      
    </div>

    <!-- Collect the nav links, forms, and other content for toggling -->
    <div class="collapse navbar-collapse" id="bs-example-navbar-collapse-1">
      <ul class="nav navbar-nav">   
        <li><a href="#" onclick="goHomepage()">首页</a></li>
        <li class="dropdown">
          <a href="#" class="dropdown-toggle" data-toggle="dropdown" role="button" aria-haspopup="true" aria-expanded="false">家礼商城 <span class="caret"></span></a>
          <ul class="dropdown-menu">
            <li><a href="#" onclick="index_lnfz()">老年服装</a></li>
            <li><a href="#" onclick="index_bjyp()">保健用品</a></li>
            <li><a href="#" onclick="index_jjyp()">家具用品</a></li>
            <li><a href="#" onclick="index_znsb()">智能设备</a></li>  
            <li><a href="#" onclick="index_fzyp()">辅助用品</a></li>
            <li><a href="#" onclick="index_bjqc()">保健器材</a></li>
            <li><a href="#" onclick="index_kfhl()">康复护理</a></li>
          </ul>
        </li>
         <li class="dropdown">
          <a href="community/index.html" class="dropdown-toggle" data-toggle="dropdown" role="button" aria-haspopup="true" aria-expanded="false">家礼社区 <span class="caret"></span></a>
            <ul class="dropdown-menu">
            <li><a href="#" onclick="gocommunity_index()">老年社区</a></li>
            <li><a href="#" onclick="gocommunity_index()">儿女社区</a></li>      
         </ul>
        </li>
        <li><a href="#" onclick="gotheuser()"> 用户专区 </a></li>
		<li><a href="#" onclick="gocontact()">在线客服</a></li>
        <li><a href="#" onclick="goaboutus()">关于我们</a></li>
      </ul>
      
    
    </div><!-- /.navbar-collapse -->
  </div><!-- /.container-fluid -->
</nav>
		</div>
		<!-- start header menu -->
	</div>
</div>
</div>

<!-- start banner -->
<div class="main">
      <div class="contact_top">
		<div class="container">
			<div class="row">
				<div class="col-md-7 map">
				  <div class="map">
					
					<div class="address">
				                <p>&nbsp;</p>
				   		<p>联系人 : 杨经理</p>
				   		<p> 联系电话: (0086) 15602293014</p>
				 	 	<p>Email : <a href="mailto:info@example.com">523902307@qq.com </a></p>
				   </div>
				</div>
			</div>
			<div class="row">
				<div class="col-md-12 contact">
				  <form method="post" action="contact-post.html">
					<div class="to">
                     	<input type="text" class="text" value="请输入您的姓名" onfocus="this.value = '';" onblur="if (this.value == '') {this.value = '请输入您的姓名';}">
					 	<input type="text" class="text" value="请输入您的e-mail" onfocus="this.value = '';" onblur="if (this.value == '') {this.value = '请输入您的e-mail';}">
					 	<input type="text" class="text" value="请输入您的手机号码" onfocus="this.value = '';" onblur="if (this.value == '') {this.value = '请输入您的手机号码';}">
					</div>
					<div class="text">
	                   <textarea value="请输入您的留言" onfocus="this.value = '';" onblur="if (this.value == '') {this.value = '请输入您的留言';}">请输入您的留言</textarea>
	                   <div class="form-submit">
			           <input name="submit" type="submit" id="submit" value="提交您的留言"><br>
			           </div>
	                </div>
	                <div class="clear"></div>
                   </form>
			     </div>
		    </div>
	     </div>
	   </div>
	  </div>


<div class="footer">
	<div class="container">
		

<div class="footer">
	<div class="container">
		<div class="col-md-3 cust">
			<h4>友情链接</h4>
				<li><a href="#"></a></li>
				<li><a href="http://www.yanglao.com.cn/">养老网</a></li>
				<li><a href="http://www.cncahl.com/">中国智能养老团</a></li>
				<li><a href="http://www.sinoyanglao.com/">中华养老网</a></li>
		</div>
		<div class="col-md-3 abt">
			<h4>关于我们</h4>
				<li><a href="#">公司简介</a></li>
				<li><a href="#">发展历程</a></li>
				<li><a href="#">荣誉</a></li>
		</div>
		<div class="col-md-3 myac">
			<h4>责任与观念</h4>
				<li><a href="register.html">社会责任</a></li>
				<li><a href="#">企业价值观</a></li>
				<li><a href="#">企业文化观</a></li>
			
		</div>
		<div class="col-md-3 our-st">
				<h4>联系我们</h4>
				<li><i class="add"> </i>广州大学城</li>
                <li> &nbsp 杨先生</li>
				<li><i class="phone"> </i>15602293014</li>
				<li><a href="523902307@qq.com"><i class="mail"> </i>523902307@qq.com </a></li>
			
		</div>
		<div class="clearfix"> </div>
			
	</div>
</div>
<a href="#" id="toTop" style="display: block;"><span id="toTopHover" style="opacity: 0;"></span> <span id="toTopHover" style="opacity: 0;"> </span></a>
</body>
</html>