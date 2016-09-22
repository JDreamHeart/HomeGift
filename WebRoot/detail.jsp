<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jstl/core_rt" prefix="c"%>
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

<script type="text/javascript" language="JavaScript">
function login_YON()
{
	var str=location.href;
	var chStr=str.split("?");
	if(chStr!=str&chStr[1]!="")
	{
		document.hiddenform.hid_id.value=chStr[1];
	}
	if(document.hiddenform.num.value=="")
	{
		document.hiddenform.num.value=chStr[2];
		document.hiddenform.submit();
	}
}
function To_account()
{
	alert("您未登录，暂不能购买。");
}
</script>
</head>
<body onload="login_YON()">
<form name="hiddenform" action="LoginServlet" method="post">
<input type="hidden" name="pagename" value="detail_page">
<input type="hidden" name="hid_id" value=${user.id }>
<input type="hidden" name="num" value=${det.num }>
</form>
<!-- header -->
<div class="header_bg">
<div class="container">
	<div class="header">
	<div class="head-t">
		<div class="logo">
			<a href="Homepage.jsp?${user.id }"><img src="images/LOGO.gif" class="img-responsive" alt=""/> </a>
		</div>
		<!-- start header_right -->
		<div class="header_right">
			<div class="rgt-bottom">
				<li class="LogOrRes"><h5>${welcome_user }</h5></li>
				
				<div id="hiddenORshow" style=${display0}><li class="LogOrRes"><a href="login.jsp">登录/注册</a></li></div>
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
					<a href="checkout.jsp?${user.id }">
						<h3>购物车  <img src="images/bag.png" alt=""></h3>
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
        <li><a href="homepage?${user.id }">首页</a></li>
        <li class="dropdown">
          <a href="#" class="dropdown-toggle" data-toggle="dropdown" role="button" aria-haspopup="true" aria-expanded="false">家礼商城 <span class="caret"></span></a>
          <ul class="dropdown-menu">
            <li><a href="Homepage#index_lnfz?${user.id }">老年服装</a></li>
            <li><a href="Homepage#index_bjyp?${user.id }">保健用品</a></li>
            <li><a href="Homepage#index_jjyp?${user.id }">家具用品</a></li>
            <li><a href="Homepage#index_znsb?${user.id }">智能设备</a></li>  
            <li><a href="Homepage#index_fzyp?${user.id }">辅助用品</a></li>
            <li><a href="Homepage#index_bjqc?${user.id }">保健器材</a></li>
            <li><a href="Homepage#index_kfhl?${user.id }">康复护理</a></li>
          </ul>
        </li>
         <li class="dropdown">
          <a href="community/index.html" class="dropdown-toggle" data-toggle="dropdown" role="button" aria-haspopup="true" aria-expanded="false">家礼社区 <span class="caret"></span></a>
            <ul class="dropdown-menu">
            <li><a href="community/index.jsp?${user.id }">老年社区</a></li>
            <li><a href="community/index.jsp?${user.id }">儿女社区</a></li>      
         </ul>
        </li>
        <li><a href="#"> 用户专区 </a></li>
		<li><a href="contact.jsp${user.id }">在线客服</a></li>
        <li><a href="#aboutus">关于我们</a></li>
      </ul>
      
    
    </div><!-- /.navbar-collapse -->
  </div><!-- /.container-fluid -->
</nav>
		</div>
		<!-- start header menu -->
	</div>
</div>
</div>

<div class="banner">
<center>
<img alt="" src=${det.pic_src } class="img-responsive"><br/>
<h2>${det.name }</h2><br/>
<h2>商品详情</h2>
${detail_det.det_text }
</center>
<div class="item_add"><span class="item_price"><h4>${det.price}RMB</h4></span></div>
<div class="item_add">
<span class="item_price">
<div id="hiddenORshowA" style="display:none${user.id}">
<a href="account.jsp?${user.id }?${det.num }">直接购买</a></div>
<div id="hiddenORshowAb" style=${display0}><a href="#" onclick="To_account()">直接购买</a></div><br>
<a href="checkout.jsp?${user.id }?${det.num }">添加到购物车</a></span>
</div></div>
<div class="Lastversion"><center>版权所有@</center></div>
</body>
</html>