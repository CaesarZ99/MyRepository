﻿<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>

<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8" />
<title></title>
<link type="text/css" rel="stylesheet" href="../css/public.css">
<link rel="stylesheet" type="text/css" href="css/birthday.css">
<script language="javascript" type="text/javascript" src="../js/birthday.js"></script>
<script language="JavaScript" type="text/JavaScript">
<!--
function MM_jumpMenu(targ,selObj,restore){ //v3.0
  eval(targ+".location='"+selObj.options[selObj.selectedIndex].value+"'");
  if (restore) selObj.selectedIndex=0;
}
//-->
function subUser()
{
  var names = document.getElementById("names");
  var test_names = document.getElementById("test_names");
 
  test_names.style.display =  "none";
  
  var returnInfo;
 	if(names.value == "")
	{
		test_names.style.display = "block";
		
		returnInfo = false;
	}

return returnInfo;
}
</script>
<style type="text/css">
<!--
.style2 {
	font-size: 12px
}
-->
</style>
</head>
<body>
<table border="0" width="100%" cellspacing="0">
	<tr>
		<td background="../images/topBarBg.gif" height="23">订单信息</td>
	</tr>
</table>
<table width="100%" border="0" cellpadding="0" cellspacing="0"
	bordercolor="#6490C2">
	<tr>
		<td width="25" height="24" background="../images/tab/firstLeftSel.gif">&nbsp;</td>
		<td width="100" background="../images/tab/middleSel.gif">
		<div align="center"><span class="tabTitleSel">请填写内容</span></div>
		</td>
		<td width="50" background="../images/tab/lastRightSel.gif">&nbsp;</td>
		<td background="../images/tab/bg.gif">&nbsp;</td>
	</tr>
</table>
<form name="listform" action="vieworder.jsp" method="post" onSubmit="return subUser() ">
  <table class="maintable" width="97%" border="0" cellspacing="0">
 
    <tr>
      <td width="14%"><div align="center">订单号</div></td>
      <td width="23%"><input type="text" name="names" id="names" >
      *<div id="test_names" style="display:none ">请填写订单号</div>      </td>
      <td width="15%"><div align="center">客户号</div></td>
      <td width="48%"><input type="text" name="otherLink" id="otherLink"></td>
    </tr>
    <tr>
      <td><div align="center">车编号</div></td>
      <td><input type="text" id="linkPhone" name="linkPhone"></td>
      <td><div align="center">车名称</div></td>
      <td><input type="text" id="age" name="age"></td>
    </tr>
    <tr>
      <td><div align="center">成交价</div></td>
      <td><input type="text" name="specialty" id="specialty"></td>
      <td><div align="center">车类型</div></td>
      <td><input type="text" name="school" id="school"></td>
    </tr>
    <tr>
      <td><div align="center">车流向</div></td>
      <td><input type="text" name="school" id="school"></td>
      <td><div align="center">销售日期</div></td>
      <td>
	  <input type="text" name="mailingTime" id="mailingTime" onClick="show_cele_date(this,'','',this)"></td>
    </tr>
    <tr align="center" bgcolor="#99CCFF">
      <td height="26" colspan="4" class="titleLine"><div align="left"> 订单说明：<span class="style2"></span></div></td>
    </tr>
    <tr>
      <td height="121" colspan="4" align="center"><textarea name="texts" id="texts" cols="140" rows="5"></textarea></td>
    </tr>
  </table>
  <option></option>
<option></option>
<table align="left" width="100%">
	<tr>
		<td height="107">
		<div align="center"><input type="submit" name="Submit"
			value="提交"> 
		  <input type="reset" name="Submit"
			value="重置">
		
		
		<input type="button" name="Submit"
			value="返回" onClick="history.back()">
		</div>
	  </td>
	</tr>
	<tr>
		<td height="30" background="../images/tab/bg.gif"></td>
	</tr>
</table>
</form>
</body>
</html>
