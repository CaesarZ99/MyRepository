﻿<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>	
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8" />
<title></title>
<link type="text/css" rel="stylesheet" href="../css/public.css">
<script language="JavaScript" type="text/JavaScript">
<!--
function MM_jumpMenu(targ,selObj,restore){ //v3.0
  eval(targ+".location='"+selObj.options[selObj.selectedIndex].value+"'");
  if (restore) selObj.selectedIndex=0;
}
//-->
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
		<td background="../images/topBarBg.gif" height="23">仓库管理</td>
	</tr>
</table>
<table width="100%" border="0" cellpadding="0" cellspacing="0"
	bordercolor="#6490C2">
	<tr>
		<td width="25" height="24" background="../images/tab/firstLeftSel.gif">&nbsp;</td>
		<td width="100" background="../images/tab/middleSel.gif">
		<div align="center">仓库信息查看</div>
		</td>
		<td width="50" background="../images/tab/lastRightSel.gif">&nbsp;</td>
		<td background="../images/tab/bg.gif">&nbsp;</td>
	</tr>
</table>
<form name="form1" method="post" action="">
  <label></label>
　　　　　仓库名：
<select name="select">
  <option>上海仓库</option>
  <option>北京仓库</option>
  <option>武汉仓库</option>
</select> 　　
汽车类型：
<label>
<select name="select2">
  <option>法拉利</option>
  <option>宝马</option>
  <option>奔驰</option>
</select>
</label> 　 
汽车型号：
<label>
<input type="text" name="textfield">
</label>　　
<label>
<input type="submit" name="Submit" value="查询">
</label>
<p>&nbsp;</p>
</form>
<form name="editdemo" action="addResume.do" method="post">
<table class="maintable" width="100%" border="0" cellspacing="0">
	<tr>
		<td width="12%" height="27">
	  <div align="center">仓　　库：</div>		</td>
		<td width="13%"><div align="center">上海仓库</div></td>
		<td width="14%">&nbsp;</td>
		<td width="14%">&nbsp;</td>
		<td width="20%">
		  <div align="center">仓库存储量：</div></td>
		<td width="27%"><div align="center">100辆</div></td>
	</tr>
	<tr>
		<td colspan="6">
		<hr color="#99CCFF">		</td>
	</tr>
	<tr>
		<td height="23">
	  <div align="center">仓库地址：</div>		</td>
		<td colspan="5"><div align="center">中华人民共和国湖北省武汉市东湖开发区</div></td>
	</tr>
	<tr>
		<td colspan="6">
		<hr color="#99CCFF">		</td>
	</tr>
	<tr>
      <td><div align="center">汽车名称：</div></td>
	  <td><div align="center">奔驰</div></td>
	  <td><div align="center">型号：</div></td>
	  <td><div align="center">S600</div></td>
	  <td><div align="center">数　　量：</div></td>
	  <td><div align="center">10辆</div></td>
    </tr>
	<tr>
		<td colspan="6">
		<hr color="#99CCFF">		</td>
	</tr>
	<tr>
      <td><div align="center">汽车名称：</div></td>
	  <td><div align="center">宝马</div></td>
	  <td><div align="center">型号：</div></td>
	  <td><div align="center">BMW</div></td>
	  <td><div align="center">数　　量：</div></td>
	  <td><div align="center">20辆</div></td>
    </tr>
	<tr>
		<td colspan="6">
		<hr color="#99CCFF">		</td>
	</tr>
	<tr>
      <td><div align="center">汽车名称：</div></td>
	  <td><div align="center">法拉利</div></td>
	  <td><div align="center">型号：</div></td>
	  <td><div align="center">F001</div></td>
	  <td><div align="center">数　　量：</div></td>
	  <td><div align="center">5辆</div></td>
    </tr>
	<tr>
		<td colspan="6">
		<hr color="#99CCFF">		</td>
	</tr>

	<tr align="center" bgcolor="#FFFFFF">
		<td height="19" colspan="6" class="titleLine" bgcolor="#99CCFF">
		<div align="left">
		  <p>&nbsp;</p>
		  <p>&nbsp;</p>
		</div>		</td>
	</tr>
	<tr>
      <td height="27"><div align="center">仓　　库：</div></td>
	  <td><div align="center">北京仓库</div></td>
	  <td>&nbsp;</td>
	  <td>&nbsp;</td>
	  <td><div align="center">仓库存储量：</div></td>
	  <td><div align="center">200辆</div></td>
    </tr>
	<tr>
      <td colspan="6"><hr color="#99CCFF">      </td>
    </tr>
	<tr>
      <td height="23"><div align="center">仓库地址：</div></td>
	  <td colspan="5"><div align="center">中华人民共和国上海浦东开发区</div>
      <div align="center"></div>	    <div align="center"></div></td>
    </tr>
	<tr>
      <td colspan="6"><hr color="#99CCFF">      </td>
    </tr>
	<tr>
      <td><div align="center">汽车名称：</div></td>
	  <td><div align="center">奔驰</div></td>
	  <td><div align="center">型号：</div></td>
	  <td><div align="center">S600</div></td>
	  <td><div align="center">数　　量：</div></td>
	  <td><div align="center">10辆</div></td>
    </tr>
	<tr>
      <td colspan="6"><hr color="#99CCFF">      </td>
    </tr>
	<tr>
      <td><div align="center">汽车名称：</div></td>
	  <td><div align="center">宝马</div></td>
	  <td><div align="center">型号：</div></td>
	  <td><div align="center">BMW</div></td>
	  <td><div align="center">数　　量：</div></td>
	  <td><div align="center">20辆</div></td>
    </tr>
	<tr>
      <td colspan="6"><hr color="#99CCFF">      </td>
    </tr>
	<tr>
      <td><div align="center">汽车名称：</div></td>
	  <td><div align="center">法拉利</div></td>
	  <td><div align="center">型号：</div></td>
	  <td><div align="center">F001</div></td>
	  <td><div align="center">数　　量：</div></td>
	  <td><div align="center">5辆</div></td>
    </tr>

	<tr>
		<td colspan="6" align="center">&nbsp;</td>
	</tr>
</table>
<table align="center" width="100%">
	<tr>
		<td height="30">
		  <div align="center"></div></td>
	</tr>
	<tr>
		<td height="30" background="images/tab/bg.gif"></td>
	</tr>
</table>
</form>
</body>
</html>
