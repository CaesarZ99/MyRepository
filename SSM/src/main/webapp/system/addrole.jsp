<%@ page language="java" import="java.util.*" pageEncoding="utf-8"%>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8" />
<title></title>
<body>
	<script language="javascript" src="js/ajax.js"></script>
	<table border="0" width="100%" cellspacing="0">
		<tr>
			<td background="images/topBarBg.gif" height="23">
				<div>
					<strong>系统管理∶添加新角色</strong>
				</div>
			</td>
		</tr>
	</table>
	<table width="100%" border="0" cellpadding="0" cellspacing="0"
		bordercolor="#6490C2">
		<tr>
			<td width="25" height="24" background="images/tab/firstLeftSel.gif">&nbsp;</td>
			<td width="100" background="images/tab/middleSel.gif"><div
					align="center">
					<span class="tabTitleSel">请填写内容</span>
				</div></td>
			<td width="50" background="images/tab/lastRightSel.gif">&nbsp;</td>
			<td background="images/tab/bg.gif">&nbsp;</td>
		</tr>
	</table>
	<form action="${pageContext.request.contextPath}/addrole"
		method="post" onSubmit="return subUser()">
		<table class="maintable" width="100%" border="0" cellspacing="0">
			<tr>
				<td width="104"><div align="right">角色名：</div></td>
				<td width="201" height="24"><input name="rolename" type="text"
					class="inputcontent" id="username" size="20" onChange="checkUser()">
					<span class="star">*</span></td>
				<td width="473"></td>
			</tr>
			<tr>
				<td width="104"><div align="right">角色描述：</div></td>
				<td height="24"><input name="rolediscription" type="text"
					class="inputcontent" id="password" size="20" maxlength="16" /> <span
					class="star">*</span></td>
				<td height="24"></td>
			</tr>
			<tr>
				<td width="104"><div align="right">角色权限：</div></td>
				<td height="24" colspan="2"><select name="powerid" id="powerid">
						<c:forEach items="${plist}" var="p">
							<option value="${p.powerid}">${p.powerid}. ${p.powername}</option>
						</c:forEach>
				</select> <span class="star">*</span></td>
			</tr>
		</table>
		<table align="right" width="100%">
			<tr>
				<td height="30" width="70"></td>
				<td width="65"><input type="submit" name="Submit" value="提交"></td>
				<td width="96"><div align="center">
						<label> <input type="button" name="Submit" value="返回"
							onClick="history.back()">
						</label>
					</div></td>
				<td width="60">&nbsp;</td>
				<td width="486"></td>
			</tr>
			<tr>
				<td height="30" colspan="5" background="images/tab/bg.gif"></td>
			</tr>
		</table>
	</form>
</body>
</html>
