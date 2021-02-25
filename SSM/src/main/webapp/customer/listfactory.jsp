<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8" />
<title>客户管理</title>
<link type="text/css" rel="stylesheet" href="css/public.css">
<script language="JavaScript" type="text/JavaScript">
<!--
	function MM_jumpMenu(targ, selObj, restore) { //v3.0
		eval(targ + ".location='" + selObj.options[selObj.selectedIndex].value
				+ "'");
		if (restore)
			selObj.selectedIndex = 0;
	}
//-->
</script>
</head>
<script language="javascript" type="text/javascript">
	var popUp;
	function openwin(idname) {
		popUp = window
				.open(
						'date.html?formname=form1&id=' + idname,
						'ѡ������',
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
	function check(){
		var del=document.getElementById("sel");
		var v=document.getElementById("val");
		 v.name=del.options[del.selectedIndex].value
	}
</script>
<body>
	<table class="maintable" border="0" width="100%" cellspacing="0">
		<tr>
			<td background="images/topBarBg.gif">客户管理</td>
			<td width="20" height="23" background="images/topBarBg.gif">
				<div align="right">
					<a href="#"><img src="images/iHelp.gif" width="16" height="16"
						border="0"></a>
				</div>
			</td>
		</tr>
	</table>
	<table width="100%" border="0" cellpadding="0" cellspacing="0"
		bordercolor="#6490C2">
		<tr>
			<td width="25" height="24" background="images/tab/firstLeftSel.gif">&nbsp;</td>
			<td width="100" background="images/tab/middleSel.gif">
				<div align="center">厂商信息</div>
			</td>
			<td width="50" background="images/tab/lastRightSel.gif">&nbsp;</td>
			<td background="images/tab/bg.gif">&nbsp;</td>
		</tr>
	</table>
	<form action="${pageContext.request.contextPath}/queryComByCondition" method="post">
		<table class="maintable" border="0" width="100%" cellspacing="0">
			<tr>
				<td width="3%" class="searchfontlist">&nbsp;</td>
				<td width="41%"><select onchange="check()" id="sel">厂商信息：
					<option value="comname">厂商名</option>
					<option value="comlia">厂商联系人</option>
					<option value="cusphone">厂商联系电话</option>
					<option value="cuszip">厂商邮编</option>
					<option value="cusloc">厂商地址</option>
				</select> <label> <input type="text"
					id="val" name="comname">
				</label></td>
				<td width="47%" class="searchfontlist"><label> <input
						type="submit" name="Submit3" value="查询">
				</label></td>
				<td width="3%">&nbsp;</td>
				<td width="3%">&nbsp;</td>
				<td width="3%"></td>
			</tr>
		</table>
	</form>
	<form action="${pageContext.request.contextPath}/delCompanys?delids=-1" method="post">
		<table class="tablelistcontent" width="100%" border="1"
			cellspacing="1">
			<tr>
				<th width="73">选择<input type="checkbox" name="delids"
					id="delids" onclick="checkStatus()" value="-1"></th>
				<th width="125">厂商编号</th>
				<th width="114">厂商名</th>
				<th width="104">厂商联系人</th>
				<th width="121">厂商联系电话</th>
				<th width="101">厂商邮编</th>
				<th width="87">厂商地址</th>
				<th width="147">修改</th>
			</tr>
			<c:forEach items="${comlist}" var="c">
				<tr class=Off onMouseOut="this.className='Off'"
					onMouseOver="this.className='Up'">
					<td height="24"><div align="center">
							<input onclick="checkC()" type="checkbox" name="delids"
								value="${c.comid}">
						</div></td>
					<td><div align="center">${c.comid}</div></td>
					<td><div align="center">${c.comname}</div></td>
					<td><div align="center">${c.comlia}</div></td>
					<td><div align="center">${c.comphone}</div></td>
					<td><div align="center">${c.comzip}</div></td>
					<td><div align="center">${c.comloc}</div></td>
					<td><div align="center">
							<a href="${pageContext.request.contextPath}/updateComView?comid=${c.comid}">修改</a>
						</div></td>
				</tr>
			</c:forEach>
		</table>
		<table width="100%">
			<tr>
				<td height="40">
					<div align="left">
						<input type="button" name="Submit" value="增加"
							onClick="window.location.href='${pageContext.request.contextPath}/addComView'"> <input
							type="submit" name="Submit" value="删除">
					</div>
					<div align="center"></div>
					<div align="center"></div>
				</td>
				<td width="20" style="width: 360px;">
					<div align="center">总数:${pageInfo.total}/总页数:${pageInfo.pages}/当前页:${pageInfo.pageNum}</div>
				</td>
				<td width="20">
					<div align="center">
						<c:if test="${pageInfo.pageNum!=1}">
							<a
								href="${pageContext.request.contextPath}/companyView?pageNum=1"><img
								src="images/report/firstPage.gif" width="17" height="11"
								border="0"></a>
						</c:if>
					</div>
				</td>
				<td width="20">
					<div align="center">
					<c:if test="${pageInfo.pageNum!=1}">
						<a
							href="${pageContext.request.contextPath}/companyView?pageNum=${pageInfo.prePage}"><img
							src="images/report/prePage.gif" width="14" height="11" border="0"></a>
							</c:if>
					</div>
				</td>
				<td width="20">
					<div align="center">
					<c:if test="${pageInfo.pageNum!=pageInfo.pages}">
						<a
							href="${pageContext.request.contextPath}/companyView?pageNum=${pageInfo.nextPage}"><img
							src="${pageContext.request.contextPath}/images/report/nextPage.gif"
							width="14" height="11" border="0"></a>
							
					</div>
				</td>
				<td width="20">
					<div align="center">
						<a
							href="${pageContext.request.contextPath}/companyView?pageNum=${pageInfo.pages}"><img
							src="${pageContext.request.contextPath}/images/report/endPage.gif"
							width="17" height="11" border="0"></a>
							</c:if>
					</div>
				</td>
				<td width="40">
				</td>
				<td width="40">
					<div align="left"></div>
				</td>
				<td width="40">
					<div align="right">转至</div>
				</td>
				<td width="36"><div align="right">转至</div></td>
				<td width="35" align="center"><input name="pageNum" type="text"
					size="2" ></td>
				<td width="84" align="center"><input type="image"
					name="Submit2" onclick="window.location.href='${pageContext.request.contextPath }/companyView?pageNum'" src="images/report/go.gif"></td>
				<td width="0"></td>
			</tr>
		</table>
	</form>
</body>
</html>
