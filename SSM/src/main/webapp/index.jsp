<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
request.setCharacterEncoding("utf-8");
%>

<html>
<head>
<link href="css/public.css" rel="stylesheet" type="text/css" />
<title>汽车销售管理系统</title>
</head>
<frameset id="top" rows="101,*,23" border="0" frameborder="0">
  <frame name="header" frameborder="0" src="header.html" noresize="noresize" scrolling="no" marginheight="0" marginwidth="0" />
  <frameset id="middle" cols="190,7,*" border="0" frameborder="0">
    <frameset rows="23,*" border="0" frameborder="0">
      <frame name="modNavTop" frameborder="0" src="modNavTop.html" noresize="noresize" scrolling="no" marginheight="0" marginwidth="0" />
      <frame name="modNav" frameborder="0" src="trees/mainmenu.jsp" noresize="noresize" scrolling="auto" marginheight="0" marginwidth="0" />
    </frameset>
    <frame name="splitor" frameborder="0" src="splitor.html" noresize="noresize" scrolling="no" marginheight="0" marginwidth="0" />
    <frame name="workspace" frameborder="0" src="welcome.html" scrolling="yes" marginheight="0" marginwidth="0" />
  </frameset>
  <frame name="footer" frameborder="0" src="footer.html" noresize="noresize" scrolling="no" marginheight="0" marginwidth="0" />
</frameset>
<noframes></noframes>
</html>
