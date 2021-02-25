<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%
	String path = request.getContextPath();
	String basePath = request.getScheme() + "://" + request.getServerName() + ":" + request.getServerPort()
			+ path + "/";
%>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title></title>
<link type="text/css" rel="stylesheet" href="../css/public.css">
</head>
<script language="javascript" type="text/javascript">
	var popUp;
	function openwin(idname) {
		popUp = window
				.open(
						'date.html?formname=form1&id=' + idname,
						'选择日期',
						'height=180, width=200,left=300,top=150, toolbar=no, menubar=no, scrollbars=no, resizable=no, location=no, status=no');
	}

	function SetDate(id, newDate) {

		popUp.close();
		form1.elements[id].value = newDate;
	}
	function checkStatus() {
		var box = document.getElementsByName("delids");
		for (var i = 0; i < box.length; i++) {
			if (box[0].checked) {
				box[i].checked = true;
			} else {
				box[i].checked = false;
			}
		}
	}
	function checkC() {
		var box = document.getElementsByName("delids");
		var result = false;
		for (var i = 1; i < box.length; i++) {
			if (box[i].checked != true) {
				result = true;
			}
		}
		if (result) {
			box[0].checked = false;
		} else {
			box[0].checked = true;
		}
	}
	function test() {
		var i = document.getElementByName("pageNum").value();
		document.write("22");
		return false;
	}
	
</script>
<body>
	<table class="maintable" border="0" width="100%" cellspacing="0">
		<tr>
			<td background="../images/topBarBg.gif">系统管理：用户管理</td>
			<td width="20" height="23" background="images/topBarBg.gif"><div
					align="right">
					<a href="#"><img src="images/iHelp.gif" width="16" height="16"
						border="0"></a>
				</div></td>
		</tr>
	</table>


	<form action="${pageContext.request.contextPath}/delusers?delids=-1"
		method="post">
		<table class="tablelistcontent" width="100%" border="1"
			cellspacing="1">

			<tr>
				<th width="29"><input type="checkbox" name="delids" id="delids"
					onClick="checkStatus()" value="-1"></th>
				<th width="203">姓名</th>
				<th width="236">角色</th>
				<th width="224">权限</th>
				<th width="195">编辑</th>
			</tr>
			<c:forEach items="${ulist}" var="u">
				<tr class=Off onMouseOut="this.className='Off'"
					onMouseOver="this.className='Up'">
					<td height="24"><div align="center">
							<input onclick="checkC()" type="checkbox" name="delids"
								id="delids" value="${u.uid}">
						</div></td>
					<td><div align="center">${u.username}</div></td>
					<td><div align="center">${u.r.rolename}</div></td>
					<td><div align="center">${u.r.p.powername}</div></td>
					<td><div align="center">
							<a
								href="${pageContext.request.contextPath }/updateUser?str=${u.uid}"><img
								src="${pageContext.request.contextPath }/images/edit.gif"
								width="16" height="19" border="0"></a>
						</div>
						<div align="center"></div></td>
				</tr>
			</c:forEach>
		</table>
		<table width="100%">
			<tr>
				<td height="40" width="10"><div align="center"></div></td>
				<td width="50"><div align="center">
						<input type="submit" name="Submit" value="删除">
					</div></td>
				<td width="50"><div align="center">
						<input type="button" name="Submit" value="添加"
							onClick="window.location.href='${pageContext.request.contextPath}/adduser'">
					</div></td>
				<td width="86"><div align="center"></div></td>
				<td width="69"><div align="center"></div></td>
				<td width="69"><div align="center"></div></td>
				<td width="69"><div align="center"></div></td>
				<td width="17"><div align="center"></div></td>
				<td width="19"><div align="center">
						<c:if test="${pageInfo.pageNum!=1}">

							<a
								href="${pageContext.request.contextPath}/userInfoView?pageNum=1">
								<img src="<%=basePath%>/images/report/firstPage.gif" width="17"
								height="11" border="0">
							</a>
					</div></td>

				<td width="19"><div align="center">
						<a
							href="${pageContext.request.contextPath}/userInfoView?pageNum=${pageInfo.pageNum-1}"><img
							src="<%=basePath%>/images/report/prePage.gif" width="14"
							height="11" border="0"></a>
					</div>
					</c:if></td>
				<c:if test="${pageInfo.pageNum!=pageInfo.pages}">
					<td width="19"><div align="center">
							<a
								href="${pageContext.request.contextPath}/userInfoView?pageNum=${pageInfo.pageNum+1}"><img
								src="<%=basePath%>/images/report/nextPage.gif" width="14"
								height="11" border="0"></a>
						</div></td>
					<td width="19"><div align="center">
							<a
								href="${pageContext.request.contextPath}/userInfoView?pageNum=${pageInfo.pages}"><img
								src="<%=basePath%>/images/report/endPage.gif" width="17"
								height="11" border="0">
						</div>
				</c:if>
				</td>
				<td width="37"><div align="left">页次:</div></td>
				<td width="37" style="width: 193px;">&nbsp;总数:${pageInfo.total}/总页数:${pageInfo.pages}/当前页:${pageInfo.pageNum}</td>
				<td width="36"><div align="right">转至</div></td>
				<td width="35" align="center"><input name="pageNum" type="text"
					size="2" ></td>
				<td width="84" align="center"><input type="image"
					name="Submit2" onclick="window.location.href='${pageContext.request.contextPath }/userInfoView?pageNum'" src="<%=basePath%>/images/report/go.gif"></td>
				<td width="0"></td>
			</tr>
		</table>
	</form>
</body>
</html>
