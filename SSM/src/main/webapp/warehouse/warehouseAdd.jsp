<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8" />
<title>简历中心</title>
<link type="text/css" rel="stylesheet" href="../css/public.css">
<script language="javascript">
	function selected() {
		var a = document.getElementById("role");
		var b = document.getElementById("roleId");
		var r = document.getElementById("department");
		var ri = document.getElementById("depId");
		var d = document.getElementById("project");
		var di = document.getElementById("projectId");
		for (var i = 0; i < a.length; i++) {
			if (a[i].value == b.value) {
				a[i].selected = true;
			}
		}
		for (var i = 0; i < r.length; i++) {
			if (r[i].value == ri.value) {
				r[i].selected = true;
			}
		}
		for (var i = 0; i < d.length; i++) {
			if (d[i].value == di.value) {
				d[i].selected = true;
			}
		}
	}

	function subUser() {
		var username = document.getElementById("username");
		var test_username = document.getElementById("test_username");
		var password = document.getElementById("password");
		var test_password = document.getElementById("test_password");
		var ensurePassword = document.getElementById("ensurePassword");
		var test_ensurePassword = document
				.getElementById("test_ensurePassword");
		var name = document.getElementById("name");
		var test_name = document.getElementById("test_name");

		test_username.style.display = "none";
		test_password.style.display = "none";
		test_ensurePassword.style.display = "none";
		test_name.style.display = "none";

		var returnInfo;
		if (username.value == "") {
			test_username.style.display = "block";
			returnInfo = false;
		}
		if (password.value.length < 6) {
			test_password.style.display = "block";
			password.value = "";
			returnInfo = false;
		}
		if (ensurePassword.value != password.value) {
			test_ensurePassword.style.display = "block";
			ensurePassword.value = "";
			returnInfo = false;
		}
		if (name.value == "") {
			test_name.style.display = "block";
			name.value = "";
			returnInfo = false;
		}
		return returnInfo;
	}
</script>
<body onLoad="selected()">
	<input type="hidden" id="roleId" value="${viewuser.roleId }">
	<input type="hidden" id="depId" value="${viewuser.depId }">
	<input type="hidden" id="projectId" value="${viewuser.projectId }">
	<table border="0" width="100%" cellspacing="0">
		<tr>
			<td background="images/topBarBg.gif" height="23"><strong>
					<div class="searchfontlist">仓库管理</div>
			</strong></td>
		</tr>
	</table>
	<table width="100%" border="0" cellpadding="0" cellspacing="0"
		bordercolor="#6490C2">
		<tr>
			<td width="100" background="images/tab/middleSel.gif">
				<div align="center">增加仓库</div>
			</td>
			<td width="104">
				<div align="right"></div>
			</td>
			<td width="104">
				<div align="right"></div>
			</td>
		</tr>
	</table>
	<form action="../AddServlet?b=4" method="post"
		onSubmit="return subUser()">
		<table class="maintable" width="100%" border="0" cellspacing="0">
			<tr>
				<td width="104">
					<div align="right">仓库名称：</div>
				</td>
				<td height="24"><input name="wareName" type="text"
					class="inputcontent" id="text" size="20" maxlength="16" /></td>
				<td width="104">
					<div align="right"></div>
				</td>
				<td width="104">
					<div align="right"></div>
				</td>
			</tr>

			<tr>
				<td width="104">
					<div align="right">仓库位置：</div>
				</td>
				<td height="24"><input name="warePosition" type="text"
					class="inputcontent" id="text" size="20" maxlength="16" /></td>
				<td width="104">
					<div align="right"></div>
				</td>
				<td width="104">
					<div align="right"></div>
				</td>
			</tr>

			<tr>
				<td width="104">
					<div align="right">仓库储存量：</div>
				</td>
				<td height="24"><input name="wareMax" type="text"
					class="inputcontent" id="name" size="20"></td>
				<td width="104">
					<div align="right"></div>
				</td>
				<td width="104">
					<div align="right"></div>
				</td>
			</tr>
			<tr>
				<td width="104">
					<div align="right">仓库现有储存量：</div>
				</td>
				<td height="24"><input name="wareNow" type="text"
					class="inputcontent" id="name" size="20"></td>
				<td width="104">
					<div align="right"></div>
				</td>
				<td width="104">
					<div align="right"></div>
				</td>
			</tr>
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
		<input type="hidden" name="uid" value="${viewuser.uid }">
	</form>
</body>
</html>
