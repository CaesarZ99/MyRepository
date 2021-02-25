<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<html>
<head>
<meta charset="UTF-8">
<link type="text/css" rel="stylesheet" href="../css/public.css">
</head>


<body>

	<table border="0" width="100%" cellspacing="0">
		<tr>
			<td background="images/topBarBg.gif" height="23"><strong>
					<div class="searchfontlist">系统管理∶修改用户</div>
			</strong></td>
		</tr>
	</table>
	<table width="100%" border="0" cellpadding="0" cellspacing="0"
		bordercolor="#6490C2">
		<tr>
			<td width="25" height="24" background="images/tab/firstLeftSel.gif">&nbsp;

			</td>
			<td width="100" background="images/tab/middleSel.gif"></td>
			<td width="50" background="images/tab/lastRightSel.gif">&nbsp;</td>
			<td background="images/tab/bg.gif">&nbsp;</td>
		</tr>
	</table>
	<form action="${pageContext.request.contextPath }/updateUser" method="post"
		onSubmit="return subUser()">
		
		<table class="maintable" width="100%" border="0" cellspacing="0">
			<c:forEach items="${ulist}" var="u">
				<c:if test="${u.uid==updateuserId}">
					<tr>
						<td width="104">
							<div align="right">用户ID：</div>
						</td>
						<td width="201" height="24"><input name="uid"
							type="text" class="inputcontent" id="uid"
							value="${u.uid}" size="20" readonly="true"> <span
							class="star">*</span></td>
						<td width="473"></td>
					</tr>
					<tr>
						<td width="104">
							<div align="right">用户名：</div>
						</td>
						<td width="201" height="24"><input name="account"
							type="text" class="inputcontent" id="account"
							value="${u.account}" size="20" readonly="true"> <span
							class="star">*</span></td>
						<td width="473"></td>
					</tr>
					<tr>
						<td width="104">
							<div align="right">用户密码：</div>
						</td>
						<td height="24"><input name="password" type="password"
							class="inputcontent" id="password" value="${u.password }"
							size="20" maxlength="16" /> <span class="star">*</span></td>
						<td height="24"></td>
					</tr>
					<tr>
						<td width="104">
							<div align="right">姓名：</div>
						</td>
						<td height="24"><input name="username" type="text"
							class="inputcontent" id="username" value="${u.username}" size="20">
							<span class="star">*</span></td>
						<td height="24">
							</div>
						</td>
					</tr>
					<tr>
						<td width="104">
							<div align="right">角色：</div>
						</td>
						<td height="24" colspan="2"><select name="roleid" id="roleid">
								<c:forEach items="${rlist}" var="r">
									<option value="${r.roleid}">${r.roleid}. ${r.rolename}</option>
								</c:forEach>
						</select> <span class="star">*</span></td>
					</tr>
				</c:if>
			</c:forEach>
		</table>
		<table align="right" width="100%">
			<tr>
				<td height="30" width="70"></td>
				<td width="65"><input type="submit" name="Submit" value="确定">
				</td>
				<td width="96">
					<div align="center">
						<label> <input type="button" name="Submit" value="返回"
							onClick="history.back()">
						</label>
					</div>
				</td>
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
