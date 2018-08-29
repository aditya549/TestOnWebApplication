<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>
</head>
<body >
<% 
String errmsg=(String)session.getAttribute("errmsg");
String errmsg1=(String)session.getAttribute("errmsg1");
String name=(String)session.getAttribute("name");
String password=(String)session.getAttribute("password");
%>
<p align="center"><img src="logo_new.jpg" height="60px" width="300px" alt="Cubic Logo" align="middle"></img></p>
	<h1 align="center" style="text-align: center;font-family:cursive;">Sign in to Cubic</h1>
	<div style="margin-left: 500px;margin-right: 500px;border:outset;background-color: white">
	<form action="LoginServlet" method="post" >
	<table cellpadding="8">
		<tr><td style="font-size: large;font-weight: bold;font-style: italic;">Admin Name or Email Id</td></tr>
		<tr><td>
		<% 
		if(errmsg==null){%>
		<input type="text" name="uname" required="required" style="border: ridge;width: 100%;font-size:x-large;text-decoration: none;font-style: italic;"></td></tr>
		<%}else{%>
		<input type="text" name="uname" value="<%=name%>" required="required" style="border: ridge;width: 100%;font-size:x-large;text-decoration: none;font-style: italic;"></td></tr>
		<%}%>
		<tr><td>
		<% 
		if(errmsg==null){%>
		<span  id="span" style="color: white;"></span></td></tr>
		<%}else{%> 
		<span  id="span" style="color: red;"><%= errmsg%></span></td></tr>
		<%}%>
		<tr><td style="font-size: large;font-weight: bold;font-style: italic;">Password &nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp<a href="forgotpassword.jsp">Forgot Password?</a></td></tr>
		<tr><td>
		<% 
		if(errmsg==null){%>
		<input type="password" name="password" required="required" style="border: ridge;width: 100%;font-size:x-large;text-decoration: none;"></td></tr>
		<%}else{%> 
		<input type="password" name="password" value="<%=password %>" required="required" style="border: ridge;width: 100%;font-size:x-large;text-decoration: none;"></td></tr>
		<%}%>
	</table>
	<input type="submit" value="Submit" style="border: outline;width: 100%;font-size:x-large;background-color: green;text-decoration: none;color:white;font-weight: bold;">
	</form>
	</div>
	<br>
	
	<div style="text-align:center;margin-left: 500px;margin-right: 500px;border:outset;background-color: white">
	<br>
	New To Cubic? &nbsp<a href="insert.jsp">Create Account Here</a>
	<br><br>
</div>
</body>
</html>