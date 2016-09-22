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
<meta content="width=dvice-width, initial-scale=1">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<meta name="keywords" content="Medical_Equipment Responsive web template, Bootstrap Web Templates, Flat Web Templates, Andriod Compatible web template, 
Smartphone Compatible web template, free webdesigns for Nokia, Samsung, LG, SonyErricsson, Motorola web design" />
<script type="application/x-javascript"> addEventListener("load", function() { setTimeout(hideURLbar, 0); }, false); function hideURLbar(){ window.scrollTo(0,1); } </script>
<!-- start menu -->
<script type="text/javascript" src="js/bootstrap.js"></script>
<script type="text/javascript" src="js/home_to_det.js"></script>
<script src="js/simpleCart.min.js"> </script>
<script src="js/responsiveslides.min.js"></script>

<script type="text/javascript" language="JavaScript">
function log_YON()
{
	var str=location.href;
	var chStr=str.split("?");
	if(chStr!=str&chStr[1]!="")
	{
		document.hiddenform.hid_id.value=chStr[1];
		document.hiddenform.submit();
	}
}
</script>
</head>
<body onload="log_YON()">
<form name="hiddenform" action="LoginServlet" method="post">
<input type="hidden" name="pagename" value="home_page">
<input type="hidden" name="hid_id" value=${user.id }>           
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
						<h3>购物车 <span class="simpleCart_total"></span>  <img src="images/bag.png" alt=""></h3>
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
            <li><a href="#index_lnfz">老年服装</a></li>
            <li><a href="#index_bjyp">保健用品</a></li>
            <li><a href="#index_jjyp">家具用品</a></li>
            <li><a href="#index_znsb">智能设备</a></li>  
            <li><a href="#index_fzyp">辅助用品</a></li>
            <li><a href="#index_bjqc">保健器材</a></li>
            <li><a href="#index_kfhl">康复护理</a></li>
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
<!-- start banner -->
<div class="banner">
	<div class="container">
		<div class="col-md-6 banner-left">
			<div class="header-slider">
				<div class="slider">
					<div class="callbacks_container">
					  	<ul class="rslides" id="slider">
							<li>
								<img src="images/lnfz/1.png" class="img-responsive" alt="">
								<div class="caption">
									<h3>老年服装 </h3>
								</div>
							</li>
							<li>
                            <h3></h3>
								<img src="images/bjsp/1.png" class="img-responsive" alt="">
								<div class="caption">
									<h3>保健食品</h3>
								</div>
							</li>
							<li>
								<img src="images/jjyp/1.png" class="img-responsive" alt="">
								<div class="caption">
									<h3>家具用品</h3>
								</div>
							</li>
							<li>
								<img src="images/znsb/1.png" class="img-responsive" alt="">
								<div class="caption">
									<h3>智能设备</h3>
								</div>
							</li>
							<li>
								<img src="images/fzyp/1.png" class="img-responsive" alt="">
								<div class="caption">
									<h3>辅助用品</h3>
								</div>
							</li>
							<li>
								<img src="images/bjqc/1.png" class="img-responsive" alt="">
								<div class="caption">
									<h3>保健器材</h3>
								</div>
							</li>
							<li>
								<img src="images/kfyp/1.png" class="img-responsive" alt="">
								<div class="caption">
									<h3>康复护理</h3>
								</div>
							</li>
						</ul>
			  		</div>
				 </div>
			</div>
		</div>
	</div>
</div><br/><br/>
<!-- end banner -->
<h1>      &nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp 老年服装</h1>
			<a name="index_lnfz" id="index_lnfz"></a>
<div class="special">
	<div class="container">
		<div class="specia-top">
			<ul class="grid_2">
		<li>
				<a href="detail.jsp?${user.id }?1"><img src="images/lnfz/1.png" class="img-responsive" alt=""></a>
				<div class="special-info grid_1 simpleCart_shelfItem">
					<div class="item_add"><span class="item_price"><h6>56RMB</h6></span></div>
					<center><a href="#" onclick="detailgoods_1()">服装1</a></center>
				</div>
		</li>
		<li>
				<a href="detail.jsp?${user.id }?2"><img src="images/lnfz/2.png" class="img-responsive" alt=""></a>
				<div class="special-info grid_1 simpleCart_shelfItem">
					<div class="item_add"><span class="item_price"><h6>56RMB</h6></span></div>
					<center><a href="#" onclick="detailgoods_2()">服装2</a></center>
			</div>
		</li>
		<li>
				<a href="detail.jsp?${user.id }?3"><img src="images/lnfz/3.png" class="img-responsive" alt=""></a>
				<div class="special-info grid_1 simpleCart_shelfItem">
					<div class="item_add"><span class="item_price"><h6>56RMB</h6></span></div>
					<center><a href="#" onclick="detailgoods_3()">服装3</a></center>
			</div>
		</li>
		<li>
				<a href="detail.jsp?${user.id }?4"><img src="images/lnfz/6.png" class="img-responsive" alt=""></a>
				<div class="special-info grid_1 simpleCart_shelfItem">
					<div class="item_add"><span class="item_price"><h6>56RMB</h6></span></div>
					<center><a href="#" onclick="detailgoods_4()">服装4</a></center>
				</div>
		</li>
		<div class="clearfix"> </div>
	</ul>
		</div>
	</div>
</div>
<h1> &nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp  保健食品</h1>
		<a name="index_bjyp" id="index_bjyp"></a>
<div class="special">
	<div class="container">
		<div class="specia-top">
			<ul class="grid_2">
		<li>
				<a href="detail.jsp?${user.id }?5"><img src="images/bjsp/2.png" class="img-responsive" alt=""></a>
				<div class="special-info grid_1 simpleCart_shelfItem">
					<div class="item_add"><span class="item_price"><h6>56RMB</h6></span></div>
					<center><a href="#" onclick="detailgoods_5()">保健食品1</a></center>
			</div>
		</li>
		<li>
				<a href="detail.jsp?${user.id }?6"><img src="images/bjsp/3.png" class="img-responsive" alt=""></a>
				<div class="special-info grid_1 simpleCart_shelfItem">
					<div class="item_add"><span class="item_price"><h6>56RMB</h6></span></div>
					<center><a href="#" onclick="detailgoods_6()">保健食品2</a></center>
			</div>
		</li>
		
		<div class="clearfix"> </div>
	</ul>
		</div>
	</div>
</div>
<!-- special -->

<h1> &nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp 家具用品</h1>
		<a name="index_jjyp" id="index_jjyp"></a>
<div class="special">
	<div class="container">
		<div class="specia-top">
			<ul class="grid_2">
		<li>
				<a href="detail.jsp?${user.id }?7"><img src="images/jjyp/1.png" class="img-responsive" alt=""></a>
				<div class="special-info grid_1 simpleCart_shelfItem">
					<div class="item_add"><span class="item_price"><h6>56RMB</h6></span></div>
					<center><a href="#" onclick="detailgoods_7()">家具用品1</a></center>
			</div>
		</li>
		<li>
				<a href="detail.jsp?${user.id }?8"><img src="images/jjyp/2.png" class="img-responsive" alt=""></a>
				<div class="special-info grid_1 simpleCart_shelfItem">
					<div class="item_add"><span class="item_price"><h6>56RMB</h6></span></div>
					<center><a href="#" onclick="detailgoods_8()">家具用品2</a></center>
			</div>
		</li>
        
        	<li>
				<a href="detail.jsp?${user.id }?9"><img src="images/jjyp/3.png" class="img-responsive" alt=""></a>
				<div class="special-info grid_1 simpleCart_shelfItem">
					<div class="item_add"><span class="item_price"><h6>56RMB</h6></span></div>
					<center><a href="#" onclick="detailgoods_9()">家具用品3</a></center>
			</div>
		</li>
		<div class="clearfix"> </div>
	</ul>
		</div>
	</div>
</div>


<h1>  &nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp 智能设备</h1>
		<a name="index_znsb" id="index_znsb"></a>
<div class="special">
	<div class="container">
		<div class="specia-top">
			<ul class="grid_2">
		<li>
				<a href="detail.jsp?${user.id }?10"><img src="images/znsb/1.png" class="img-responsive" alt=""></a>
				<div class="special-info grid_1 simpleCart_shelfItem">
					<div class="item_add"><span class="item_price"><h6>56RMB</h6></span></div>
					<center><a href="#" onclick="detailgoods_10()">智能设备1</a></center>
			</div>
		</li>
		<li>
				<a href="detail.jsp?${user.id }?11"><img src="images/znsb/2.png" class="img-responsive" alt=""></a>
				<div class="special-info grid_1 simpleCart_shelfItem">
					<div class="item_add"><span class="item_price"><h6>56RMB</h6></span></div>
					<center><a href="#" onclick="detailgoods_11()">智能设备2</a></center>
			</div>
		</li>
		<div class="clearfix"> </div>
	</ul>
		</div>
	</div>
</div>


<h1>  &nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp 辅助用品</h1>
		<a name="index_fzyp" id="index_fzyp"></a>
<div class="special">
	<div class="container">
		<div class="specia-top">
			<ul class="grid_2">
		<li>
				<a href="detail.jsp?${user.id }?12"><img src="images/fzyp/1.png" class="img-responsive" alt=""></a>
				<div class="special-info grid_1 simpleCart_shelfItem">
					<div class="item_add"><span class="item_price"><h6>56RMB</h6></span></div>
					<center><a href="#" onclick="detailgoods_12()">辅助设备1</a></center>
			</div>
		</li>
		
		
		
		<div class="clearfix"> </div>
	</ul>
		</div>
	</div>
</div>


<h1> &nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp 保健器材</h1>
		<a name="index_bjqc" id="index_bjqc"></a>
<div class="special">
	<div class="container">
		<div class="specia-top">
			<ul class="grid_2">
		<li>
				<a href="detail.jsp?${user.id }?13"><img src="images/bjqc/1.png" class="img-responsive" alt=""></a>
				<div class="special-info grid_1 simpleCart_shelfItem">
					<div class="item_add"><span class="item_price"><h6>56RMB</h6></span></div>
					<center><a href="#" onclick="detailgoods_13()">保健器材1</a></center>
			</div>
		</li>
		<li>
				<a href="detail.jsp?${user.id }?14"><img src="images/bjqc/2.png" class="img-responsive" alt=""></a>
				<div class="special-info grid_1 simpleCart_shelfItem">
					<div class="item_add"><span class="item_price"><h6>56RMB</h6></span></div>
					<center><a href="#" onclick="detailgoods_14()">保健器材2</a></center>
			</div>
		</li>
        
        	<li>
				<a href="detail.jsp?${user.id }?15"><img src="images/bjqc/3.png" class="img-responsive" alt=""></a>
				<div class="special-info grid_1 simpleCart_shelfItem">
					<div class="item_add"><span class="item_price"><h6>56RMB</h6></span></div>
					<center><a href="#" onclick="detailgoods_15()">保健器材3</a></center>
			</div>
		</li>
			<div class="clearfix"> </div>
	</ul>
		</div>
	</div>
</div>
<h1> &nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp 康复护理</h1>
		<a name="index_kfhl" id="index_kfhl"></a>
<div class="special">
	<div class="container">
		<div class="specia-top">
			<ul class="grid_2">
		<li>
				<a href="detail.jsp?${user.id }?16"><img src="images/kfyp/1.png" class="img-responsive" alt=""></a>
				<div class="special-info grid_1 simpleCart_shelfItem">
					<div class="item_add"><span class="item_price"><h6>56RMB</h6></span></div>
					<center><a href="#" onclick="detailgoods_16()">康复护理1</a></center>
			</div>
		</li>
		<li>
				<a href="detail.jsp?${user.id }?17"><img src="images/kfyp/2.png" class="img-responsive" alt=""></a>
				<div class="special-info grid_1 simpleCart_shelfItem">
					<div class="item_add"><span class="item_price"><h6>56RMB</h6></span></div>
					<center><a href="#" onclick="detailgoods_17()">康复护理2</a></center>
			</div>
		</li>
        
        	<li>
				<a href="detail.jsp?${user.id }?18"><img src="images/kfyp/3.png" class="img-responsive" alt=""></a>
				<div class="special-info grid_1 simpleCart_shelfItem">
					<div class="item_add"><span class="item_price"><h6>56RMB</h6></span></div>
					<center><a href="#" onclick="detailgoods_18()">康复护理3</a></center>
			</div>
		</li>
		<div class="clearfix"> </div>
	</ul>
		</div>
	</div>
</div>

		
		<div class="clearfix"> </div>
	</ul>
		</div>
	</div>
</div>

			<div class="clearfix"> </div>
	</div>
</div>

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
			<h4>关于我们</h4><a name="#aboutus" id="#aboutus"></a>
				<li><a href="#">公司简介</a></li>
				<li><a href="#">发展历程</a></li>
				<li><a href="#">荣誉</a></li>
		</div>
		<div class="col-md-3 myac">
			<h4>责任与观念</h4>
				<li><a href="#">社会责任</a></li>
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
<div class="Lastversion"><center>版权所有@</center></div>
<a href="#" id="toTop" style="display: block;"><span id="toTopHover" style="opacity: 0;"></span> <span id="toTopHover" style="opacity: 0;"> </span></a>
</body>
</html>