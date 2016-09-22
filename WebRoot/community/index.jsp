<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>

<!DOCTYPE html>
<html>
<head>
<title>老年社区</title>
<meta name="viewport" content="width=device-width, initial-scale=1">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<meta name="keywords" content="Community Responsive web template, Bootstrap Web Templates, Flat Web Templates, Android Compatible web template, 
Smartphone Compatible web template, free webdesigns for Nokia, Samsung, LG, SonyEricsson, Motorola web design" />
<script type="application/x-javascript"> addEventListener("load", function() { setTimeout(hideURLbar, 0); }, false); function hideURLbar(){ window.scrollTo(0,1); } </script>
<link href="css/bootstrap-3.1.1.min.css" rel='stylesheet' type='text/css' />
<!-- jQuery (necessary for Bootstrap's JavaScript plugins) -->
<script src="js/jquery.min.js"></script>
<script src="js/bootstrap.min.js"></script>
<!-- Custom Theme files -->
<link href="css/style.css" rel='stylesheet' type='text/css' />
<!--webfont-->
<link href='http://fonts.useso.com/css?family=Oswald:300,400,700' rel='stylesheet' type='text/css'>
<link href='http://fonts.useso.com/css?family=PT+Sans:400,700' rel='stylesheet' type='text/css'>
<link href='http://fonts.useso.com/css?family=Fugaz+One' rel='stylesheet' type='text/css'>
<!----drop down----->
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
<!----font-Awesome----->
<link href="css/font-awesome.css" rel="stylesheet"> 
<!----font-Awesome----->
<!--light-box-files -->
<script src="js/jquery.chocolat.js"></script>
<link rel="stylesheet" href="css/chocolat.css" type="text/css" media="screen" charset="utf-8" />
<!--light-box-files -->
<script type="text/javascript" charset="utf-8">
$(function() {
	$('.gallery a').Chocolat();
});
</script>
</head>
<body>
<!-- header-section-starts -->
<div class="header">
		<div class="container">
			<div class="col-sm-3 logo">
			  <h1><a href="index.html"><span class="highlight">家礼</span>社区</a></h1>
			</div>
		   
			<!-- script for menu -->
		
   <!-- Collect the nav links, forms, and other content for toggling -->
    <div class="collapse navbar-collapse" id="bs-megadropdown-tabs">
        
     </div><!-- /.navbar-collapse -->
   </div>
</nav>
<script type="text/javascript">
		$(function() {
		blinkeffect('#txtblnk');
		})
		function blinkeffect(selector) {
		$(selector).fadeOut('slow', function() {
		$(this).fadeIn('slow', function() {
		blinkeffect(this);
		});
		});
		}
</script> 
<div class="demo">
  <marquee behavior="scroll" style="background:#F3DB28; color:#000;" direction="left" onmouseover="this.stop();" onmouseout="this.start();">				
   欢迎来到家礼社区，这里有老年社区板块以及儿女交流板块，在这里，你可以跟大家交流养老的问题
  </marquee> 	 
</div>


<div class="about_banner">
	<div class="container">
		<h2>家礼社区</h2>
		<span class="breadcrumbs"><a href="index.html"><i class="fa fa-home home_1"></i></a> / <span>家礼社区</span></span>
	</div>
</div>



<div class="about_top">
 <div class="container">
	<div class="col-md-3 forum">
	        <div class="fb-like-button social-item">
	  			<a href="#" title="" target="_blank"> <div class="social-item-inner"> 
	  				<span class="fa fa-facebook sc-icon"></span> 
	  				<span class="like-count">50696</span> 
	  				<span class="like-text"> 赞 </span> 
	  			</div></a> 
	  		</div>
	  		<div class="twitter-like-button  social-item ">
	  			 <a href="#" title="" target="_blank"> <div class="social-item-inner">
	  				<span class="fa fa-twitter sc-icon"></span> <span class="like-count">2</span> 
	  				<span class="like-text"> 粉丝 </span> 
	  			</div> </a> 
	  	    </div>
	  	    <div class="youtube-subscribers-button  social-item ">
				 <a href="#" title="" target="_blank"><div class="social-item-inner">
					 <span class="fa fa-youtube sc-icon"></span> <span class="like-count">0</span> 
					 <span class="like-text"> 贡献者 </span>
			   </div> </a> 
	  		</div>
	  		<div class="linkedin-button social-item ">
			 	 <a href="#" title="" target="_blank"> <div class="social-item-inner">
			 		<span class="fa fa-linkedin sc-icon"></span> 
			 		<span class="like-count">1</span> <span class="like-text"> 粉丝 </span>
			 	</div> </a> 
	  		</div>
	  		<div class="dribble-button social-item ">
	 			 <a href="#" title="" target="_blank"> <div class="social-item-inner">
	 				<span class="fa fa fa-dribbble sc-icon"></span> <span class="like-count">90</span> 
	 				<span class="like-text"> 粉丝 </span>
	 			</div> </a> 
	  		</div>
	  		<div class="gplus-like-button  social-item">
	 			 <a href="#" title="" target="_blank"> <div class="social-item-inner">
	 				<span class="fa fa-google-plus sc-icon"></span> <span class="like-count">120</span> 
	 				<span class="like-text"> 粉丝 </span> 
	 			</div> </a>
	  	    </div>
	</div>
    
    
	<div class="col-md-9 column-15">
	   <h6>老年社区</h6>
	   <div class="forum_box1">
	   <a href="forum_single.html"> 老年人应该如何选用保健产品</a>
	   	 <h3>2016/4/29 16:00 星期五</h3>
	   	 <div class="col-sm-3 forum_box1-left">
	   	 	<h4><a href="classified_detail.html">邓先生</a></h4>
	   	 	<a href="classified_detail.html"><img src="images/4.png" class="img-responsive" alt=""/></a>
	   	 	<h5>80 主题</h5>
	   	 	<p>0 回复</p>
	   	 </div>
	   	 <div class="col-sm-9 forum_box1-right">
	   	 	<p>"随着年龄的增长，身体机能会逐渐的下降，而这时候，如何选择一款适合自己的保健产品就变得至关重要了，许多老年人缺乏这方面的知识，在这里，我将为大家介绍一下如何为老年人选用保健用品"</p>
            <div class="post-element clearfix">                         
 	  	        <div class="post__1">
    	          <span class="post__1-item post__1-date"><a href="#">添加新的评论</a></span>
    	          <span class="post__1-item"><span class="link_2"><a href="#" title="like me" class="like_button">
    		          <i class="fa fa-heart-o"></i></a></span><span>1</span>
    		      </span>
    		       <span class="post__1-item"><span class="link_2"><a href="#" title="like me" class="like_button">
    		          <i class="fa fa-comment-o"></i></a></span><span>12</span>
    		      </span>
    		       <span class="post__1-item"><span class="link_2"><a href="#" title="like me" class="like_button">
    		          <i class="fa fa-eye"></i></a></span><span>10</span>
    		      </span>
    		    </div>                     
            </div>
	   	 </div>
	   	 <div class="clearfix"> </div>
	   </div>
       
         <div class="forum_box1">
	   <a href="forum_single.html"> 当你老了，如何爱护自己的身体 </a>
	   	 <h3>2016/4/29 16:00 星期五</h3>
	   	 <div class="col-sm-3 forum_box1-left">
	   	 	<h4><a href="classified_detail.html">苏女士</a></h4>
	   	 	<a href="classified_detail.html"><img src="images/c9.jpg" class="img-responsive" alt=""/></a>
	   	 	<h5>80 主题</h5>
	   	 	<p>0 回复</p>
	   	 </div>
	   	 <div class="col-sm-9 forum_box1-right">
	   	 	<p>"随着年龄的增长，身体机能会逐渐的下降，而这时候，如何选择一款适合自己的保健产品就变得至关重要了，许多老年人缺乏这方面的知识，在这里，我将为大家介绍一下如何为老年人选用保健用品"</p>
            <div class="post-element clearfix">                         
 	  	        <div class="post__1">
    	          <span class="post__1-item post__1-date"><a href="#">添加新的评论</a></span>
    	          <span class="post__1-item"><span class="link_2"><a href="#" title="like me" class="like_button">
    		          <i class="fa fa-heart-o"></i></a></span><span>1</span>
    		      </span>
    		       <span class="post__1-item"><span class="link_2"><a href="#" title="like me" class="like_button">
    		          <i class="fa fa-comment-o"></i></a></span><span>12</span>
    		      </span>
    		       <span class="post__1-item"><span class="link_2"><a href="#" title="like me" class="like_button">
    		          <i class="fa fa-eye"></i></a></span><span>10</span>
    		      </span>
    		    </div>                     
            </div>
	   	 </div>
	   	 <div class="clearfix"> </div>
	   </div>  <div class="forum_box1">
	   <a href="forum_single.html"> 老人如何利用网络进行商品选购</a>
	   	 <h3>2016/4/29 16:00 星期五</h3>
	   	 <div class="col-sm-3 forum_box1-left">
	   	 	<h4><a href="classified_detail.html">凌女士</a></h4>
	   	 	<a href="classified_detail.html"><img src="images/c9.jpg" class="img-responsive" alt=""/></a>
	   	 	<h5>80 主题</h5>
	   	 	<p>0 回复</p>
	   	 </div>
	   	 <div class="col-sm-9 forum_box1-right">
	   	 	<p>"随着年龄的增长，身体机能会逐渐的下降，而这时候，如何选择一款适合自己的保健产品就变得至关重要了，许多老年人缺乏这方面的知识，在这里，我将为大家介绍一下如何为老年人选用保健用品"</p>
            <div class="post-element clearfix">                         
 	  	        <div class="post__1">
    	          <span class="post__1-item post__1-date"><a href="#">添加新的评论</a></span>
    	          <span class="post__1-item"><span class="link_2"><a href="#" title="like me" class="like_button">
    		          <i class="fa fa-heart-o"></i></a></span><span>1</span>
    		      </span>
    		       <span class="post__1-item"><span class="link_2"><a href="#" title="like me" class="like_button">
    		          <i class="fa fa-comment-o"></i></a></span><span>12</span>
    		      </span>
    		       <span class="post__1-item"><span class="link_2"><a href="#" title="like me" class="like_button">
    		          <i class="fa fa-eye"></i></a></span><span>10</span>
    		      </span>
    		    </div>                     
            </div>
	   	 </div>
	   	 <div class="clearfix"> </div>
	   </div>  <div class="forum_box1">
	   <a href="forum_single.html"> 老年人如何出游</a>
	   	 <h3>2016/4/29 16:00 星期五</h3>
	   	 <div class="col-sm-3 forum_box1-left">
	   	 	<h4><a href="classified_detail.html">郝先生</a></h4>
	   	 	<a href="classified_detail.html"><img src="images/c4.jpg" class="img-responsive" alt=""/></a>
	   	 	<h5>80 主题</h5>
	   	 	<p>0 回复</p>
	   	 </div>
	   	 <div class="col-sm-9 forum_box1-right">
	   	 	<p>"随着年龄的增长，身体机能会逐渐的下降，而这时候，如何选择一款适合自己的保健产品就变得至关重要了，许多老年人缺乏这方面的知识，在这里，我将为大家介绍一下如何为老年人选用保健用品"</p>
            <div class="post-element clearfix">                         
 	  	        <div class="post__1">
    	          <span class="post__1-item post__1-date"><a href="#">添加新的评论</a></span>
    	          <span class="post__1-item"><span class="link_2"><a href="#" title="like me" class="like_button">
    		          <i class="fa fa-heart-o"></i></a></span><span>1</span>
    		      </span>
    		       <span class="post__1-item"><span class="link_2"><a href="#" title="like me" class="like_button">
    		          <i class="fa fa-comment-o"></i></a></span><span>12</span>
    		      </span>
    		       <span class="post__1-item"><span class="link_2"><a href="#" title="like me" class="like_button">
    		          <i class="fa fa-eye"></i></a></span><span>10</span>
    		      </span>
    		    </div>                     
            </div>
	   	 </div>
         
         
         
         
         
	   	 <div class="clearfix"> </div>
	   </div>
       
<div class="Lastversion"><center>版权所有@</center></div>
</body>
</html>