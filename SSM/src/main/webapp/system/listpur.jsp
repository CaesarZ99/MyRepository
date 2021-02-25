<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%
	String path = request.getContextPath();
	String basePath = request.getScheme() + "://"
			+ request.getServerName() + ":" + request.getServerPort()
			+ path + "/";
%>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">

<link type="text/css" rel="stylesheet" href="../css/public.css">
</head>
<script type="text/javascript" src="../js/jquery-3.1.1.min.js"></script>
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
	<form action="${pageContext.request.contextPath }/delpowers?delids=-1" method="post">
		<table class="maintable" border="0" width="100%" cellspacing="0">
			<tr>
				<td background="../images/topBarBg.gif">系统管理：权限管理</td>
				<td width="20" height="23" background="images/topBarBg.gif">
					<div align="right">
						<a href="#"><img src="images/iHelp.gif" width="16" height="16"
							border="0"> </a>
					</div>
				</td>
			</tr>
		</table>
		<table class="tablelistcontent" width="100%" border="1"
			cellspacing="1">
				<th width="27"><input type="checkbox" name="delids" id="All"
					onclick="checkStatus()" value="-1"></th>
				<th>权限编号</th>
				<th width="521">权限</th>
				<th>修改</th>
			</tr>
			<c:forEach items="${plist}" var="p">
				<tr class=Off onMouseOut="this.className='Off'"
					onMouseOver="this.className='Up'">
					<td height="24">
						<div align="center">
							<input name="delids" type="checkbox" id="delids"
								value="${p.powerid}" onclick="checkC()">
						</div>
					</td>
					<td>
						<div align="center">${p.powerid}</div>
					</td>
					<td>
						<div align="center">${p.powername}</div>
					</td>

					<td>
						<div align="left"></div>
						<div align="center">
							<a href="${pageContext.request.contextPath }/updatepur?powerid=${p.powerid}"><img src="${pageContext.request.contextPath }/images/edit.gif"
								width="16" height="19" border="0"> </a>
						</div>
						<div align="center"></div>
					</td>
				</tr>
			</c:forEach>
		</table>

		<table width="100%">
			<tr>
				<td height="40" width="28">
					<div align="left"></div>
				</td>
				<td width="591">
					<div align="left">
						<input type="submit" name="sub" value="删除">
					</div>
				</td>
				<td width="51">
					<div align="left">
						<p>添加权限</p>
					</div>
				</td>
				<td width="168">
					<div align="left">
						<input type="text" name="powername" id="cc">
					</div>
				</td>
				<td width="42">
					<div align="left">
						<input type="submit" name="sub" value="添加">
					</div>
				</td>
			</tr>
		</table>
	</form>
</body>
</html>
