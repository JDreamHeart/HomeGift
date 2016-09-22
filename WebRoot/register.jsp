<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
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
<script type="text/javascript" language="JavaScript">
	function getmess()
	{
		var flag="${message}";
		if(flag=="0")
		{
			alert("用户名已存在！请重新注册...");
		}
		if(flag=="1")
		{
			alert("注册成功，请点击登录...");
			location.href="login.jsp";
		}
	}
	function addhandle()
	{
		var name=document.user_reg.name.value;
		var sex0=document.user_reg.sex[0].checked;
		var sex1=document.user_reg.sex[1].checked;
		var phone=document.user_reg.phone.value;
		var email=document.user_reg.email.value;
		var username=document.user_reg.username.value;
		var password=document.user_reg.userpassword.value;
		var password0=document.user_reg.sure_password.value;
        if(name=="")
        {
            alert("姓名不能为空!");
        }
        else if(sex0==false&sex1==false)
       	{
        	alert("请选择性别!");
       	}
       	else if(phone=="")
        {
            alert("手机不能为空!");
        }
        else if(email=="")
        {
            alert("邮箱不能为空!");
        }
        else if(username=="")
        {
            alert("用户名不能为空!");
        }
        else if(password=="")
        {
           alert("密码不能为空!");
        }
        else  if(password0=="")
        {
           alert("确认密码不能为空!");
        }
		else if(password0!=password)
        {
           alert("确认密码与密码不一致!"); 
        }
		else
		{
			document.user_reg.submit();
		}
	}
</script>
</head>
<body onload="getmess()">
<!-- header -->
<div class="header_bg">
<div class="container">
	<div class="header">
	<div class="head-t">
		<div class="logo">
			<a href="#" onclick="goHomepage()"><img src="images/LOGO.gif" width="60" height="60" alt=""/> </a>
		</div>
	</div>		
	</div>
</div>
</div>
<div class="banner">
	<div class="container">
	<center>
    <h1>用户注册</h1>
    <form name="user_reg" action="LoginServlet" method="post">
   	姓名：<input type="text" name="name">*<br><br>
   	性别：<input type="radio" name="sex" value="male">男
   		<input type="radio" name="sex" value="female">女<br><br>
   	电话：<input type="text" name="phone">*<br><br>
   	E-mail：<input type="text" name="email">*<br><br>
   	用户名：<input type="text" name="username">*<br><br>
   	密码：<input type="password" name="userpassword">*<br><br>
   	密码确认：<input type="password" name="sure_password">*<br><br>
	<input type="button" name="addok" value="注册" onClick="addhandle()">
	<input type="button" name="addno" value="重置" onClick="reset()">
    </form></center>
    </div>
</div>

<div class="Lastversion"><center>版权所有@</center></div>
</body>
</html>
