<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%
	String path = request.getContextPath();
	String basePath = request.getScheme() + "://"
			+ request.getServerName() + ":" + request.getServerPort()
			+ path + "/";
%>

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
<head>
<title></title>
<link href="../css/public.css" rel="stylesheet" type="text/css" />
<meta http-equiv="Content-Type" content="text/html; charset=gb2312">
</head>
<script>
	function work() {
		var resource = '${resource}';
		var str = [ '系统管理', '仓库管理', '统计管理', '销售管理', '客户管理' ];
		for (var i = 0; i < str.length; i++) {
			var number = (i + 1);
			if (resource.indexOf(str[i]) == -1) {
				document.getElementById("KB" + number + "Parent").style.display = 'none';
			} else {
				document.getElementById("KB" + number + "Parent").style.display = 'block';
			}
		}

	}
</script>
<script language=javascript>
	NS4 = (document.layers) ? 1 : 0;
	IE4 = (document.all) ? 1 : 0;
	ver4 = (NS4 || IE4) ? 1 : 0;

	if (ver4) {
		with (document) {
			write("<STYLE TYPE='text/css'>");
			if (NS4) {
				write(".parent {position:absolute; visibility:visible background:red}");
				write(".child {position:absolute; visibility:hide }");
				write(".regular {position:absolute; visibility:visible}")
			} else {
				write(".child {display:none;text-align:left}")
			}
			write("</STYLE>");
		}
	}
</script>
<script language=javascript>
	function expandIt(el) {
		var whichEl = eval(el + "Child");
		var s1 = eval(el + "f");
		//alert(whichEl);

		if (whichEl.style.display != "block") {
			whichEl.style.display = "block";
			//alert(whichEl.style.pixelHeight);
			//alert(whichEl.style.width);
			s1.innerHTML = "<img src='../images/iOpenFolder.gif'>"
		} else {
			whichEl.style.display = "none";
			s1.innerHTML = "<img src='../images/iGenericFolder.gif'>"
		}
		//arrange()
		// whichE1.pageY = 200;
	}
	function button_over(o) {
		o.style.background = "#CCCCCC";
	}

	function button_out(o) {
		o.style.background = "";
	}

	//--------------------
</script>



<body onload="work();">
	<div id="KB1Parent" class="parent">
		<table width="190">
			<tr>
				<td width="16" id="KB1f"><img
					src="../images/iGenericFolder.gif" width="16" height="16"></td>
				<td width="162"><a href="#"
					onClick="expandIt('KB1'); return true">系统管理</a></td>
			</tr>
		</table>
	</div>
	<div id="KB1Child" class="child" style="display: none">
		<table width="190" border=0 cellpadding="0" cellSpacing=0>
			<tr>
				<td width="8"><img src="../images/ftv2vertline.gif"></td>
				<td width="8"><img src="../images/ftv2node.gif" width="16"
					height="22"></td>
				<td width="16"><img src="../images/iGenericAttribute.gif"
					width="16" height="16"></td>
				<td width="158" onMouseover="button_over(this);"
					onMouseout="button_out(this);"><a
					href="${pageContext.request.contextPath}/userInfoView?pageIndex=1&pageSize=2&str=1" target="workspace">用户管理</a></td>
			</tr>

			<tr>
				<td><img src="../images/ftv2vertline.gif"></td>
				<td><img src="../images/ftv2node.gif" width="16" height="22"></td>
				<td><img src="../images/iGenericAttribute.gif" width="16"
					height="16"></td>
				<td onMouseover="button_over(this);" onMouseout="button_out(this);"><a
					href="${pageContext.request.contextPath}/toroleview" target="workspace">角色管理</a></td>
			</tr>

			<tr>
				<td><img src="../images/ftv2vertline.gif"></td>
				<td><img src="../images/ftv2node.gif" width="16" height="22"></td>
				<td><img src="../images/iGenericAttribute.gif" width="16"
					height="16"></td>
				<td onMouseover="button_over(this);" onMouseout="button_out(this);"><a
					href="${pageContext.request.contextPath}/powerView" target="workspace">权限管理</a></td>
			</tr>
		</table>
	</div>






	<div id="KB2Parent" class="parent">
		<table width="190">
			<tr>
				<td width="16" id="KB2f"><img
					src="../images/iGenericFolder.gif" width="16" height="16"></td>
				<td width="162"><a href="#"
					onClick="expandIt('KB2'); return false">仓库管理</a></td>
			</tr>
		</table>
	</div>
	<div id="KB2Child" class="child" style="display: none">
		<table width="190" border=0 cellpadding="0" cellSpacing=0>
			<tr>
				<td width="8"><img src="../images/ftv2vertline.gif"></td>
				<td width="8"><img src="../images/ftv2node.gif" width="16"
					height="22"></td>
				<td width="16"><img src="../images/iGenericAttribute.gif"
					width="16" height="16"></td>
				<td width="158" onMouseover="button_over(this);"
					onMouseout="button_out(this);"><a
					href="${pageContext.request.contextPath}/wareInfoView" target="workspace">仓库信息</a></td>
			</tr>

			<tr>
				<td width="8"><img src="../images/ftv2vertline.gif"></td>
				<td width="8"><img src="../images/ftv2node.gif" width="16"
					height="22"></td>
				<td width="16"><img src="../images/iGenericAttribute.gif"
					width="16" height="16"></td>
				<td width="158" onMouseover="button_over(this);"
					onMouseout="button_out(this);"><a
					href="../warehouse/addcar.jsp" target="workspace">新车入库</a></td>
			</tr>



			<tr>
				<td width="8"><img src="../images/ftv2vertline.gif"></td>
				<td width="8"><img src="../images/ftv2node.gif" width="16"
					height="22"></td>
				<td width="16"><img src="../images/iGenericAttribute.gif"
					width="16" height="16"></td>
				<td width="158" onMouseover="button_over(this);"
					onMouseout="button_out(this);"><a
					href="${pageContext.request.contextPath}/stoceView" target="workspace">库存管理</a></td>
			</tr>

			<tr>
				<td width="8"><img src="../images/ftv2vertline.gif"></td>
				<td width="8"><img src="../images/ftv2node.gif" width="16"
					height="22"></td>
				<td width="16"><img src="../images/iGenericAttribute.gif"
					width="16" height="16"></td>
				<td width="158" onMouseover="button_over(this);"
					onMouseout="button_out(this);"><a
					href="../warehouse/picture.jsp" target="workspace">汽车图片</a></td>
			</tr>
		</table>
	</div>


	<div id="KB3Parent" class="parent">
		<table width="190">
			<tr>
				<td width="16" id="KB3f"><img
					src="../images/iGenericFolder.gif" width="16" height="16"></td>
				<td width="162"><a href="#"
					onClick="expandIt('KB3'); return false">统计管理</a></td>
			</tr>
		</table>
	</div>
	<div id="KB3Child" class="child" style="display: none">
		<table width="190" border=0 cellpadding="0" cellSpacing=0>
			<tr>
				<td width="8"><img src="../images/ftv2vertline.gif"></td>
				<td width="8"><img src="../images/ftv2node.gif" width="16"
					height="22"></td>
				<td width="16"><img src="../images/iGenericAttribute.gif"
					width="16" height="16"></td>
				<td width="158" onMouseover="button_over(this);"
					onMouseout="button_out(this);"><a href="../total/c.jsp"
					target="workspace">库存统计</a></td>
			</tr>



			<tr>
				<td width="8"><img src="../images/ftv2vertline.gif"></td>
				<td width="8"><img src="../images/ftv2node.gif" width="16"
					height="22"></td>
				<td width="16"><img src="../images/iGenericAttribute.gif"
					width="16" height="16"></td>
				<td width="158" onMouseover="button_over(this);"
					onMouseout="button_out(this);"><a href="../total/b.jsp"
					target="workspace">趋势分析</a></td>
			</tr>

			<tr>
				<td width="8"><img src="../images/ftv2vertline.gif"></td>
				<td width="8"><img src="../images/ftv2node.gif" width="16"
					height="22"></td>
				<td width="16"><img src="../images/iGenericAttribute.gif"
					width="16" height="16"></td>
				<td width="158" onMouseover="button_over(this);"
					onMouseout="button_out(this);"><a href="../total/a.jsp"
					target="workspace">客户统计</a></td>
			</tr>
		</table>
	</div>

	<div id="KB4Parent" class="parent">
		<table width="190">
			<tr>
				<td width="16" id="KB4f"><img
					src="../images/iGenericFolder.gif" width="16" height="16"></td>
				<td width="162"><a href="#"
					onClick="expandIt('KB4'); return false">销售管理</a></td>
			</tr>
		</table>
	</div>
	<div id="KB4Child" class="child" style="display: none">
		<table width="190" border=0 cellpadding="0" cellSpacing=0>
			<tr>
				<td width="8"><img src="../images/ftv2vertline.gif"></td>
				<td width="8"><img src="../images/ftv2node.gif" width="16"
					height="22"></td>
				<td width="16"><img src="../images/iGenericAttribute.gif"
					width="16" height="16"></td>
				<td width="158" onMouseover="button_over(this);"
					onMouseout="button_out(this);"><a href="../sell/listcar.jsp"
					target="workspace">汽车详情</a></td>
			</tr>
			<tr>
				<td width="8"><img src="../images/ftv2vertline.gif"></td>
				<td width="8"><img src="../images/ftv2node.gif" width="16"
					height="22"></td>
				<td width="16"><img src="../images/iGenericAttribute.gif"
					width="16" height="16"></td>
				<td width="158" onMouseover="button_over(this);"
					onMouseout="button_out(this);"><a href="../sell/order.jsp"
					target="workspace">订单信息</a></td>
			</tr>
			<tr>
				<td width="8"><img src="../images/ftv2vertline.gif"></td>
				<td width="8"><img src="../images/ftv2node.gif" width="16"
					height="22"></td>
				<td width="16"><img src="../images/iGenericAttribute.gif"
					width="16" height="16"></td>
				<td width="158" onMouseover="button_over(this);"
					onMouseout="button_out(this);"><a href="../sell/SellList.jsp"
					target="workspace">订单列表</a></td>
			</tr>
			<tr>
				<td width="8"><img src="../images/ftv2vertline.gif"></td>
				<td width="8"><img src="../images/ftv2node.gif" width="16"
					height="22"></td>
				<td width="16"><img src="../images/iGenericAttribute.gif"
					width="16" height="16"></td>
				<td width="158" onMouseover="button_over(this);"
					onMouseout="button_out(this);"><a href="../sell/listorder.jsp"
					target="workspace">销售信息</a></td>
			</tr>

		</table>
	</div>





	<div id="KB5Parent" class="parent">
		<table width="190">
			<tr>
				<td width="16" id="KB5f"><img
					src="../images/iGenericFolder.gif" width="16" height="16"></td>
				<td width="162"><a href="#"
					onClick="expandIt('KB5'); return false">客户管理</a></td>
			</tr>
		</table>
	</div>
	<div id="KB5Child" class="child" style="display: none">
		<table width="190" border=0 cellpadding="0" cellSpacing=0>
			<tr>
				<td><img src="../images/ftv2vertline.gif"></td>
				<td><img src="../images/ftv2node.gif" width="16" height="22"></td>
				<td><img src="../images/iGenericAttribute.gif" width="16"
					height="16"></td>
				<td onMouseover="button_over(this);" onMouseout="button_out(this);"><a
					href="${pageContext.request.contextPath}/companyView" target="workspace">厂商信息</a></td>
			</tr>
			<tr>
				<td width="8"><img src="../images/ftv2vertline.gif"></td>
				<td width="8"><img src="../images/ftv2node.gif" width="16"
					height="22"></td>
				<td width="16"><img src="../images/iGenericAttribute.gif"
					width="16" height="16"></td>
				<td width="158" onMouseover="button_over(this);"
					onMouseout="button_out(this);"><a
					href="${pageContext.request.contextPath}/customerView" target="workspace">客户信息</a></td>
			</tr>

			<tr>
				<td><img src="../images/ftv2vertline.gif"></td>
				<td><img src="../images/ftv2node.gif" width="16" height="22"></td>
				<td><img src="../images/iGenericAttribute.gif" width="16"
					height="16"></td>
				<td onMouseover="button_over(this);" onMouseout="button_out(this);"><a
					href="${pageContext.request.contextPath}/visitView" target="workspace">回访信息</a></td>
			</tr>

		</table>
	</div>




	<div id="KB9Parent" class="parent"></div>
	<div id="KB9Child" class="child"></div>



	<div id="KB10Parent" class="parent"></div>
	<div id="KB10Child" class="child"></div>
	<div id="KB11Parent" class="parent"></div>
	<div id="KB11Child" class="child"></div>
</body>
</html>
