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
<link href="css/style.css" rel='stylesheet' type='text/css' />

<script type="text/javascript" language="javascript">
function login_tocheck()
{
	var userid=document.hiddenform.hid_id.value;
	var gdcheck=document.hiddenform.gdcheck.value;
	var str=location.href;
	var chStr=str.split("?");
	if(userid=="")
	{
		if(chStr==str|chStr[1]=="")
		{
			document.hiddenform.hid_id.value="1";
		}
		else
		{
			document.hiddenform.hid_id.value=chStr[1];
		}
		if(gdcheck=="")
		{
			document.hiddenform.num.value=chStr[2];
			document.hiddenform.submit();
		}
	}
}
function toaccount()
{
	var flag=confirm("是否确认购买?")
	if(flag)
	{
		var userid=document.hiddenform.hid_id.value;
		if(userid!="")
		{
			document.hiddenform.pagename.value="account_page";
			document.hiddenform.submit();
		}
	}
}
</script>
</head>
<body onload="login_tocheck()">
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
            <li><a href="#">儿女社区</a></li>      
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
<div class="check">	 
<div class="container">
		<div class="col-md-3 cart-total">
		<div class="col-md-9 cart-items">
			 <h1>我的购物车</h1>
			 <div class="cart-header">
			 <div id="hiddenORshow_cko" style="display:">
			<form name="hiddenform" action="LoginServlet" method="post">
			<input type="hidden" name="pagename" value="checkout_page">
			<input type="hidden" name="hid_id" value=${user.id }>
			<input type="hidden" name="num">
			<input type="hidden" name="gdcheck" value=${check }>
			<input type="hidden" name="delete_id">
			<c:forEach var="detail_goods" items="${requestScope.gd_lisk}">
				 <div style="float:right"><input type="button" class="tolit_left" onclick="deletegd()" value="X"></div>
				 <div class="cart-sec simpleCart_shelfItem">
						<div class="cart-item cyc">
						<input type="checkbox" name="cko_ckb" value=${detail_goods.gd_id }>
						<img src=${detail_goods.gd_picsrc } class="img-responsive" alt=""/>
						</div>
					   <div class="cart-item-info">
						<h3><a href="#">${detail_goods.gd_number }<span>${detail_goods.gd_name }</span></a></h3>
						
							 <div class="delivery">
							 <p>${detail_goods.gd_price }
							 <h6><input type="button" class="number_button" value="-" onclick="minus()">
							 <input type="text" name="goods_num" class="number_text" value=${detail_goods.gd_num }>
							 <input type="button" class="number_button" value="+" onclick="plus()">
							 </h6>${detail_goods.gd_totalprice }</p>
							 <input type="hidden" name="goods_id" value=${detail_goods.gd_id }>
							 <span>${detail_goods.gd_date }</span>
							 <div class="clearfix"></div>
				       		 </div>	
					   </div>
					   <div class="clearfix"></div>	
				  </div>
			 </c:forEach>
			 <center>
			 <input type="button" name="submitmod" value="确认数量修改" onclick="mod_submit()"><br><br>
			 </center>
	 		 </form>
			 </div>
		 	 </div>
			
		 </div>
			 <div class="price-details">
               <a class="continue" href="#" onclick="toaccount()">结算</a>
				 <h3>账单详情</h3>
				 <span>总额</span>
				 <span class="total1">${totalprice }RMB</span>
				 <span>折扣</span>
				 <span class="total1">---</span>
				 <span>运费</span>
				 <span class="total1">0 RMB</span>
				 <div class="clearfix"></div>				 
			 </div>	
			 <ul class="total_price">
			   <li class="last_price"> <h4>总和</h4></li>	
			   <li class="last_price"><span>${totalprice }RMB</span></li>
			   <div class="clearfix"> </div>
			 </ul>
			 <div class="clearfix"></div>
			 <a class="order" href="#">优惠劵</a>
			 <div class="total-item">
				 <h3>请输入您的优惠劵号</h3>
				 <h4>优惠劵</h4><input type="text" name="discount_text">&nbsp;&nbsp;&nbsp;&nbsp;
				 <a class="cpns" href="#">确定使用优惠劵</a>
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
	</div></div>
<div class="Lastversion"><center>版权所有@</center></div>
</body>
</html>