<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>

<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8" />
<title>销售管理</title>
		  <script language="javascript" type="text/javascript" src="../js/birthday.js"></script>
<link type="text/css" rel="stylesheet" href="../css/public.css">
<script language="JavaScript" type="text/JavaScript">
<!--
function MM_jumpMenu(targ,selObj,restore){ //v3.0
  eval(targ+".location='"+selObj.options[selObj.selectedIndex].value+"'");
  if (restore) selObj.selectedIndex=0;
}
//-->
</script>
</head>
<script language="javascript" type="text/javascript">
        var popUp; 
		function openwin(idname)
		{
			popUp = window.open('date.html?formname=form1&id=' + idname,
			'ѡ������',
			'height=180, width=200,left=300,top=150, toolbar=no, menubar=no, scrollbars=no, resizable=no, location=no, status=no');
		}

		function SetDate(id,newDate)
		{
			
			popUp.close();
			form1.elements[id].value = newDate;
		}
</script>
<body>
<table class="maintable" border="0" width="100%" cellspacing="0">
	<tr>
		<td background="../images/topBarBg.gif">销售管理</td>
		<td width="20" height="23" background="../images/topBarBg.gif">
		<div align="right"><a href="#"><img
			src="../images/iHelp.gif" width="16" height="16" border="0"></a></div>
		</td>
	</tr>
</table>
<table width="100%" border="0" cellpadding="0" cellspacing="0"
	bordercolor="#6490C2">
	<tr>
		<td width="25" height="24" background="../images/tab/firstLeftSel.gif">&nbsp;</td>
		<td width="100" background="../images/tab/middleSel.gif">
		<div align="center">销售信息</div>
		</td>
		<td width="50" background="../images/tab/lastRightSel.gif">&nbsp;</td>
		<td background="../images/tab/bg.gif">&nbsp;</td>
	</tr>
</table>
<form action="listResume.do?page=1" method="post">
<table class="maintable" border="0" width="100%" cellspacing="0">
	<tr>
		<td width="22%" height="48" class="searchfontlist">
		<div align="right">
		  <label>
		  <select name="select">
		    <option>订单号</option>
		    <option>客户号</option>
		    <option>车编号</option>
		    <option>车名称</option>
	      </select>
		  </label>
		  ：</div>		</td>
		<td width="19%">
		<div align="left">
		  <input type='text' name='menu1'/>
		</div>		</td>
		<td width="5%">&nbsp;</td>
	  <td width="54%"><label>销售日期：
          <input type="text" name="mailingTime" id="mailingTime" onClick="show_cele_date(this,'','',this)"> 　　　
          <input type="button" name="Submit3" value="查询">
</label></td>
	</tr>
</table>
<p>&nbsp;</p>
</form>
<form action="deleteResume.do" method="post">
<table class="tablelistcontent" width="100%" border="1" cellspacing="1">
	<tr>
		<th width="50"><label>
		  <input type="checkbox" name="checkbox2" value="checkbox">
	    </label></th>
		<th width="87">订单号</th>
		<th width="79">客户号</th>
		<th width="72">车编号</th>
		<th width="66">车名称</th>
		<th width="66"> 成交价</th>
		<th width="77">车类型</th>
		<th width="96">车流向</th>
		<th width="90">销售日期</th>
		<th width="69">销售状态</th>
	</tr>
	
	<tr class=Off onMouseOut="this.className='Off'"
		onMouseOver="this.className='Up'">
	  <td height="24"><div align="center">
	    <input type="checkbox" name="checkbox22" value="checkbox">
	    </div></td>
	  <td><div align="center">1</div></td>
	  <td><div align="center">001</div></td>
	  <td><div align="center">F001</div></td>
	  <td><div align="center">宝马</div></td>
	  <td><div align="center">11111</div></td>
	  <td><div align="center">F001</div></td>
	  <td><div align="center">上海</div></td>
	  <td><div align="center">2005-01-01</div></td>
	  <td><div align="center">已发货</div></td>
	</tr>
	<tr class=Off onMouseOut="this.className='Off'"
		onMouseOver="this.className='Up'">
      <td height="24"><div align="center">
          <input type="checkbox" name="checkbox23" value="checkbox">
      </div></td>
	  <td><div align="center">2</div></td>
	  <td><div align="center">002</div></td>
	  <td><div align="center">BMW1</div></td>
	  <td><div align="center">奔驰</div></td>
	  <td><div align="center">2222</div></td>
	  <td><div align="center">BMW1</div></td>
	  <td><div align="center">北京</div></td>
	  <td><div align="center">2007-01-12</div></td>
	  <td><div align="center">路上</div></td>
	</tr>
	<tr class=Off onMouseOut="this.className='Off'"
		onMouseOver="this.className='Up'">
      <td height="24"><div align="center">
          <input type="checkbox" name="checkbox"
			value="${RL.owenResumeId}">
      </div></td>
	  <td><div align="center">3</div></td>
	  <td><div align="center">003</div></td>
	  <td><div align="center">s660</div></td>
	  <td><div align="center">法拉利</div></td>
	  <td><div align="center">523</div></td>
	  <td><div align="center">s660</div></td>
	  <td><div align="center">重庆</div></td>
	  <td><div align="center">2006-08-08</div></td>
	  <td><div align="center">没发货</div></td>
	</tr>
	<tr class=Off onMouseOut="this.className='Off'"
		onMouseOver="this.className='Up'">
	  <td height="24"><div align="center">
	    <input type="checkbox" name="checkbox23" value="checkbox">
	    </div></td>
	  <td><div align="center">4</div></td>
	  <td><div align="center">004</div></td>
	  <td><div align="center">BMW2</div></td>
	  <td><div align="center">奔驰</div></td>
	  <td><div align="center">1232</div></td>
	  <td><div align="center">BMW2</div></td>
	  <td><div align="center">香港</div></td>
	  <td><div align="center">2007-03-12</div></td>
	  <td><div align="center">已到达</div></td>
	</tr>
	<tr class=Off onMouseOut="this.className='Off'"
		onMouseOver="this.className='Up'">
		<td height="24">
		  <div align="center">
		    <input type="checkbox" name="checkbox"
			value="${RL.owenResumeId}">
		  </div></td>
		<td><div align="center">5</div></td>
		<td>
	      <div align="center">005</div></td>
		<td>
          <div align="center">s600</div></td>
		<td>
	      <div align="center">宝马</div></td>
		<td>
          <div align="center">5213</div></td>
		<td>
	      <div align="center">s600</div></td>
		<td>
	      <div align="center">武汉</div></td>
		<td>
	      <div align="center">2008-08-08</div></td>
		<td>
	      <div align="center">没发货</div></td>
	</tr>
</table>
<table width="100%">
	<tr>
		<td height="40" align="center" valign="middle">
		<div align="left">
		  <label></label> 
		  
          <input type="button" name="Submit"
			value="删除" onClick="window.location.href='listorder.jsp'">
		</div>
		<div align="center"></div>
		<div align="center"></div>		</td>
		<td width="20">
		<div align="center"></div>		</td>
		<td width="20">
		<div align="center"><a href="listResume.do?page=1"><img
			src="../images/report/firstPage.gif" width="17" height="11"
			border="0"></a></div>		</td>
		<td width="20">
		<div align="center">
		  <c:if test="${showPage <= 1 }"></c:if>
		  <img
			src="../images/report/prePage.gif" width="14" height="11" border="0"></div>		</td>
		<td width="20">
		<div align="center">
		  <c:if test="${showPage >= pageSum }"></c:if>
		  <img
			src="../images/report/nextPage.gif" width="14" height="11" border="0"></div>		</td>
		<td width="20">
		<div align="center"><a href="listResume.do?page=${pageSum}"><img
			src="../images/report/endPage.gif" width="17" height="11" border="0"></div>		</td>
		<td width="40">
		<div align="left"><a href="#">页次</a></div>		</td>
		<td width="40">
		<div align="left"></div>		</td>
		<td width="40">
		<div align="right">转至</div>		</td>
		<td width="35" align="center"><input class="inputcontent"
			name="go" type="textfield" size="5"></td>
		<td width="80" align="center"><input type="image" name="Submit2" src="../images/report/go.gif"></td>
		<td width="6"></td>
	</tr>
</table>
</form>
</body>
</html>
