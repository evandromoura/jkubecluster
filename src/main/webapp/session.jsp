<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@page import="java.util.*, java.lang.reflect.*, javax.servlet.http.HttpSession "%>
<%
 String basePath = request.getScheme() + "://" + request.getServerName() + ":" + request.getServerPort();
 String contextPath = request.getContextPath();
 String servletPath = request.getServletPath();
 String nodeId = System.getProperty("jboss.node.name");
 String variableString = (String)session.getAttribute("SESSION_VARIABLE");
 int count = 0;

  if(variableString != null)
 {
  count = Integer.parseInt(variableString);
  count++;
 }

  session.setAttribute("SESSION_VARIABLE", String.valueOf(count));
%>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>WildFly 18 Session</title>
</head>
<body bgcolor=white>
  <table columns=1>
 
  </table>
<table columns=2>
      <caption>JKubeCluster - App</caption>
      <tr><td></td>
      <tr><td></td>
      <tr><td><font color=#00cc00>The Session Id is:  </font></td><td><%=session.getId() %></td>
      <tr><td><font color=#00cc00>The Session Objetct is:   </font></td><td><%=session %></td>
      <tr><td><font color=#00cc00>The Node Id is:  </font></td><td><%=nodeId %></td>
      <tr><td><font color=#00cc00>Number of requests placed on session:  </font></td><td><%=count %></td>
  </table>
</body>
</html>