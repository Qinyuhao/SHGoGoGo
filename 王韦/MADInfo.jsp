<%@ page language="java" import="java.util.*,java.text.*" contentType="text/html; charset=utf-8"%>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
  <head>
    <base href="<%=basePath%>">
    
    <title>Activity Information</title>
    
	<meta http-equiv="pragma" content="no-cache">
	<meta http-equiv="cache-control" content="no-cache">
	<meta http-equiv="expires" content="0">    
	<meta http-equiv="keywords" content="keyword1,keyword2,keyword3">
	<meta http-equiv="description" content="This is my page">
	<link rel="stylesheet" type="text/css" href="css/MADInfo.css">

  </head>
  
  <body>
	<jsp:useBean id="regActivity" class="entity.Activity" scope="session"/>
	<h1 id="nap0" class="napkeeComponent napkeeParagraph">社团活动之&nbsp;<jsp:getProperty name="regActivity" property="activity_name"/>&nbsp;活动详情</h1>
		<table id="nap6" class="napkeeComponent napkeeCanvas">			
		<tr>
			<td>活动描述</td>
			<td><jsp:getProperty name="regActivity" property="activity_describe"/></td>
		</tr>
		<tr>
			<td>活动地点</td>
			<td><jsp:getProperty name="regActivity" property="activity_location"/></td>
		</tr>
		<tr>
		<td>活动海报:</td>
		<td><img src=<jsp:getProperty name="regActivity" property="activity_poster"/>width="80" height="60"></td>
		<!-- <input type="image" src="Sophia.jpg" name="activity_img"/></td> -->
		<!-- <td><input type = "file" name = "tetttt"></td> -->
		</tr>
		<tr>
		<td>报名开始时间:</td>
		<td><jsp:getProperty name="regActivity" property="start_time"/></td>
		</tr>
		<tr>
		<td>报名截止时间:</td>
		<td><jsp:getProperty name="regActivity" property="end_time"/></td>
		</tr>
		<tr>
		<td>已报名人数:</td>
		<td><jsp:getProperty name="regActivity" property="join_number"/></td>
		</tr>
		</table>
		
		<form action="TotalServlet"method="post"> 
			<input name="activity_name" type="hidden" value=<jsp:getProperty name="regActivity" property="activity_name"/> />
            <input id="nap7" class="napkeeComponent napkeeButton btn" name="Submit" type="submit" value="查看报名者详情" />
		</form>

	 
	<br>
	
	<input id="nap8" class="napkeeComponent napkeeButton btn" type="button" onclick="window.location.href='MInfo.jsp'" value="返回社团信息页"> 
  </body>
</html>
