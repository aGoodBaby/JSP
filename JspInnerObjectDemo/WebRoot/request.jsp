<%@ page language="java" import="java.util.*" contentType="text/html; charset=utf-8"%>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
  <head>
    <base href="<%=basePath%>">
    
    <title>My JSP 'request.jsp' starting page</title>
    
	<meta http-equiv="pragma" content="no-cache">
	<meta http-equiv="cache-control" content="no-cache">
	<meta http-equiv="expires" content="0">    
	<meta http-equiv="keywords" content="keyword1,keyword2,keyword3">
	<meta http-equiv="description" content="This is my page">
	<!--
	<link rel="stylesheet" type="text/css" href="styles.css">
	-->

  </head>
  
  <body>
  	<h1>request内置对象</h1>
  	<hr>
  		<%
  		 request.setCharacterEncoding("utf-8"); //解决传递中文乱码，但无法解决url传递中文乱码问题
  		 request.setAttribute("password", "123456");
  		%>
  		用户名：<%=request.getParameter("username") %> <br>
  		爱好：<%
  						if(request.getParameterValues("favorite")!=null){
	  						String[] favorites=request.getParameterValues("favorite");
	  						for(int i=0;i<favorites.length;i++)
	  						{
	  							out.println(favorites[i]+"&nbsp;&nbsp");
	  						}
	  					}
  		 %><br>
  		 密码：<%=request.getAttribute("password") %><br>
  		 请求体的MIME类型：<%=request.getContentType() %><br>
  		 协议类型及版本号：<%=request.getProtocol() %><br>
  		 服务器主机名：<%=request.getServerName() %><br>
  		 服务器端口名：<%=request.getServerPort() %><br>
  		 请求文件的长度：<%=request.getContentLength() %><br>
  		 请求客户端的IP地址：<%=request.getRemoteAddr() %><br>
  		 请求的真实路径：<%=request.getRealPath("request.jsp") %><br>
  		 请求的上下文路径：<%=request.getContextPath() %><br>
  	
  </body>
</html>
