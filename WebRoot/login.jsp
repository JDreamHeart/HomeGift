<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>
<!DOCTYPE html>
<html>
<head>
<title>登录/注册</title>
<link href="css/styles.css" rel='stylesheet' type='text/css' />
<meta name="viewport" content="width=device-width, initial-scale=1">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<meta name="keywords" content="App Loction Form,Login Forms,Sign up Forms,Registration Forms,News latter Forms,Elements"./>

</head>
<body onload="getmess()">
	<h1>登录/注册</h1>
		<div class="app-location">
			<h2>欢迎来到家礼</h2>
			<div class="line"><span></span></div>
			<div class="location"><img src="images/LOGO1.gif" class="img-responsive" alt="" /></div>
			<form action="LoginServlet" method="post">
				<input type="text" name="username" class="text" value="" onfocus="this.value = '';" >
				<input type="password" name="password" value="" onfocus="this.value = '';" >
				<div class="submit"><input type="submit" value="登录" onclick="return true;"></div>
				<div class="clear"></div>
				<div class="new">
					<h3><a href="#">忘记密码 ?</a></h3>
					<h4><a href="register.jsp">新用户注册</a></h4>
					<div class="clear"></div>
				</div>
			</form>
		</div>
	<!--start-copyright-->
   		
	<!--//end-copyright-->
</body>
</html>