<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<html>
<head>
<link type="text/css" rel="stylesheet" href="../css/public.css">
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8" />
<title></title>
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
			<td width="100" background="images/tab/middleSel.gif">
				<div align="center">
					<span class="tabTitleSel">请填写内容</span>
				</div>
			</td>
			<td width="50" background="images/tab/lastRightSel.gif">&nbsp;</td>
			<td background="images/tab/bg.gif">&nbsp;</td>
		</tr>
	</table>
	<form action="${pageContext.request.contextPath}/updateComView" method="post" onSubmit="return subUser()">
		<table class="maintable" width="100%" border="0" cellspacing="0">
			<c:forEach items="${comlist}" var="c">
				<c:if test="${c.comid==updatecomId}">
					<tr>
						<td width="104">
							<div align="right">厂商编号：</div>
						</td>
						<td width="201" height="24"><input name="comid"
							type="text" class="inputcontent" id="username" value="${c.comid}"
							size="20" readonly="true"></td>
						<td width="473"></td>
					</tr>
					<tr>
						<td width="104">
							<div align="right">厂商名：</div>
						</td>
						<td height="24"><input name="comname" type="text"
							class="inputcontent" id="text" value="${c.comname}" onfocus="if (value =='${c.comname}'){value =''}" onblur="if (value ==''){value='${c.comname}'}" size="20"
							maxlength="16" /></td>
						<td height="24"></td>
					</tr>

					<tr>
						<td width="104">
							<div align="right">厂商联系人：</div>
						</td>
						<td height="24"><input name="comlia" type="text"
							class="inputcontent" id="text" value="${c.comlia}" onfocus="if (value =='${c.comlia}'){value =''}" onblur="if (value ==''){value='${c.comlia}'}" size="20"
							maxlength="16" /></td>
						<td height="24"></td>
					</tr>


					<tr>
						<td width="104">
							<div align="right">厂商联系电话：</div>
						</td>
						<td height="24"><input name="comphone" type="text"
							class="inputcontent" id="text"  value="${c.comphone}" onfocus="if (value =='${c.comphone}'){value =''}" onblur="if (value ==''){value='${c.comphone}'}" size="20"
							maxlength="16" /></td>
						<td height="24"></td>
					</tr>

					<tr>
						<td width="104">
							<div align="right">厂商邮编：</div>
						</td>
						<td height="24"><input name="comzip" type="text"
							class="inputcontent" id="text" value="${c.comzip}" onfocus="if (value =='${c.comzip}'){value =''}" onblur="if (value ==''){value='${c.comzip}'}" size="20"
							maxlength="16" /></td>
						<td height="24"></td>
					</tr>

					<tr>
						<td width="104">
							<div align="right">厂商地址：</div>
						</td>
						<td height="24"><input name="comloc" type="text"
							class="inputcontent" id="name" value="${c.comloc}" onfocus="if (value =='${c.comloc}'){value =''}" onblur="if (value ==''){value='${c.comloc}'}" size="20"></td>
						<td height="24"></td>
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
						<label> <input onClick="history.back()" type="button" name="Submit" value="返回">
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
