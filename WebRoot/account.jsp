<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jstl/core_rt" prefix="c"%>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>

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

<script type="text/javascript" language="javascript">
function give_up()
{
	var userid=document.hiddenform.hid_id.value;
	location.href="Homepage.jsp?"+userid;
}
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
<body>
<!-- header -->
<div class="header_bg">
<div class="container">
	<div class="header">
	<div class="head-t">
		<div class="logo">
			<a href="Homepage.jsp?${user.id }"><img src="images/LOGO.gif" width="60" height="60" alt=""/> </a>
		</div>
		<!-- start header_right -->
		<div class="header_right">
			<div class="rgt-bottom">
				<li class="LogOrRes"><h5>${welcome_user }</h5></li>
				
				<div class="clearfix"> </div>
			</div>
		</div>
			<div class="clearfix"> </div>
	</div>	
	
</div>
</div>

<!-- Start banner -->
<div class="banner">
	<div class="container">
    <h1>订单详情</h1>
			 <div class="cart-header">
			<form action="LoginServlet" name="hiddenform" method="post">
			<input type="hidden" name="pagename" value="account_page">
			<input type="hidden" name="hid_id" value=${user.id }>
			<c:forEach var="detail_goods" items="${requestScope.gd_lisk}">
				 <div class="cart-sec simpleCart_shelfItem">
						<div class="cart-item cyc">
						<img src=${detail_goods.gd_picsrc } class="img-responsive" alt=""/>
						<input type="hidden" name="getdate" value=${detail_goods.gd_date }>
						</div>
					   <div class="cart-item-info">
						<h3>${detail_goods.gd_number }<span>商品名：${detail_goods.gd_name }</span></h3>
							 <div class="delivery">
							 <p><h6>单价：${detail_goods.gd_price }<br/>
								 数量：${detail_goods.gd_num }
							 </h6>总额：${detail_goods.gd_totalprice }</p>
							 <span>${detail_goods.gd_date }</span>
							 <div class="clearfix"></div>
				       		 </div>	
					   </div>
					   <div class="clearfix"></div>	
				  </div>
			 </c:forEach>
			 	付款总额：${totalprice }RMB<br><br>
			 <h4>付款方式</h4>
			 <input type="radio" name="pay_method" value="Zhifubao" checked>支付宝&nbsp;&nbsp;&nbsp;&nbsp;
			 <input type="radio" name="pay_method" value="Yinlian">银联&nbsp;&nbsp;&nbsp;&nbsp;
			 <input type="radio" name="pay_method" value="Weixin">微信&nbsp;&nbsp;&nbsp;&nbsp;
			 <input type="radio" name="pay_method" value="Huodao">货到付款<br><br>
			 <div class="price-details">
               <a class="continue" href="payment.jsp?${user.id }">付款</a>
			</div>
			 <center>
			 <input type="button" name="submitmod" value="放弃本次操作" onClick="give_up()"><br><br>
			 </center>
	 		 </form>
			 </div>
			</div>
	</div>
</div>

<div class="Lastversion"><center>版权所有@</center></div>
  </body>
</html>
