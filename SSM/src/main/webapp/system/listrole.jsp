<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%
	String path = request.getContextPath();
	String basePath = request.getScheme() + "://"
			+ request.getServerName() + ":" + request.getServerPort()
			+ path + "/";
%>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title></title>
<link type="text/css" rel="stylesheet"
	href="<%=basePath%>/css/public.css">
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
</script>
<body>
	<table class="maintable" border="0" width="100%" cellspacing="0">
		<tr>
			<td background="<%=basePath%>/images/topBarBg.gif">系统管理：角色管理</td>
			<td width="20" height="23"
				background="<%=basePath%>images/topBarBg.gif"><div
					align="right">
					<a href="#"><img src="images/iHelp.gif" width="16" height="16"
						border="0"></a>
				</div></td>
		</tr>
	</table>


	<form action="${pageContext.request.contextPath }/delroles?delids=-1" method="post">
		<table class="tablelistcontent" width="100%" border="1"
			cellspacing="1">
			<tr>
				<th width="61"><div align="center">
						<input type="checkbox" name="delids" id="delids"
							onClick="checkStatus()" value="-1">
					</div></th>
				<th width="87"><div align="center">角色编号</div></th>
				<th width="93"><div align="center">角色名称</div></th>
				<th width="114"><div align="center">角色描述</div></th>
				<th width="348"><div align="center">权限</div></th>
				<th width="168">编辑</th>
			</tr>
			<c:forEach items="${rlist}" var="r">
				<tr class=Off onMouseOut="this.className='Off'"
					onMouseOver="this.className='Up'">
					<td height="24"><div align="center">
							<input onclick="checkC()" type="checkbox" name="delids"
								value="${r.roleid}">
						</div></td>
					<td><div align="center">${r.roleid}</div></td>
					<td><div align="center">${r.rolename}</div></td>
					<td><div align="center">${r.rolediscription}</div></td>
					<td><div align="center">
							<div align="center">
								<div align="center">${r.p.powername}</div>
							</div>
						</div></td>
					<td><div align="center">
							<a href="${pageContext.request.contextPath}/updateRole?roleid=${r.roleid}"><img
								src="<%=basePath%>images/edit.gif" width="16" height="19"
								border="0"></a>
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
							onClick="window.location.href='${pageContext.request.contextPath }/addrole'">
					</div></td>
				<td width="86"><div align="center"></div></td>
				<td width="69"><div align="center"></div></td>
				<td width="69"><div align="center"></div></td>
				<td width="69"><div align="center"></div></td>
				<td width="17"><div align="center"></div></td>
				<td width="19"><div align="center">
				<c:if test="${pageInfo.pageNum!=1}">
							<a
								href="${pageContext.request.contextPath }/toroleview?pageNum=1">
								<img src="<%=basePath%>/images/report/firstPage.gif" width="17"
								height="11" border="0">
							</a>
					</div></td>

				<td width="19"><div align="center">
							<a
								href="${pageContext.request.contextPath }/toroleview?pageNum=${pageInfo.prePage}"><img
								src="<%=basePath%>/images/report/prePage.gif" width="14"
								height="11" border="0"></a>
					</div></c:if></td>
				
				<td width="19"><div align="center">
					<c:if test="${pageInfo.pageNum!=pageInfo.pages}">
					<a href="${pageContext.request.contextPath }/toroleview?pageNum=${pageInfo.nextPage}"><img
						src="<%=basePath%>/images/report/nextPage.gif" width="14"
						height="11" border="0"></a>
					</div></td>
				<td width="19"><div align="center">
						<a href="${pageContext.request.contextPath }/toroleview?pageNum=${pageInfo.pages}"><img
							src="<%=basePath%>/images/report/endPage.gif" width="17"
							height="11" border="0">
					</div></td>
				<td width="37"><div align="left">
						<a href="#">页次</a>:
					</div></c:if></td>
				<td width="37" style="width: 193px;">&nbsp;总数:${pageInfo.total}/总页数:${pageInfo.pages}/当前页:${pageInfo.pageNum}</td>
				<td width="36"><div align="right">转至</div></td>
				<td width="35" align="center"><input name="pageNum" type="text"
					size="2" ></td>
				<td width="84" align="center"><input type="image"
					name="Submit2" onclick="window.location.href='${pageContext.request.contextPath }/toroleview?pageNum'" src="<%=basePath%>/images/report/go.gif"></td>
				<td width="0"></td>
			</tr>
		</table>
	</form>
</body>
</html>
