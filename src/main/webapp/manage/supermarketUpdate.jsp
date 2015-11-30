<%@ page language="java" contentType="text/html;charset=UTF-8" pageEncoding="UTF-8"%>
<%@ page language="java" import="java.util.*" %>
<%@ page language="java" import="com.cc.bean.*" %>
<% 
	//当前路径
	String path = request.getContextPath();
	String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";

	//页面分类
	String type = "supermarket";
	//页面中文
	String text = "超市";
	//基础url
	String baseUrl = basePath + "supermarket";
	//item
	Supermarket item = (Supermarket)request.getAttribute("item");
%>

<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
    <meta charset="UTF-8">
    <title>系统管理</title>
	<link rel="stylesheet" type="text/css" href="../css/manage.css">
	<script type="text/javascript" src="../javascript/jquery.js"></script>
</head>
<body>
<%@ include  file="./top.jsp"%>
<%@ include  file="./left.jsp"%>
<div class="manage_right">
	<div class="content">
		<div class="formTitle">
			<span>编辑<%=text %></span>
		</div>
		<div class="formPage">
		<form action="<%=baseUrl %>/update" method="POST" enctype="multipart/form-data">
				<input type="hidden" name="id" value="<%=item.getId() %>"/>
				<table>
					<tr>
						<td>名称：</td>
						<td><input type="text" name="name" value="<%=item.getName()%>"/></td>
					</tr>
					<tr>
						<td>地址：</td>
						<td><input type="text" name="address" value="<%=item.getAddress()%>"/></td>
					</tr>
					<tr>
						<td>电话：</td>
						<td><input type="text" name="phone" value="<%=item.getPhone()%>"/></td>
					</tr>
					<tr>
						<td>描述：</td>
						<td><input type="text" name="description" value="<%=item.getDescription()%>"/></td>
					</tr>
					<tr>
						<td>图片：</td>
						<td><input name="picture" type="file" accept="image/*" /></td>
					</tr>
					<tr>
						<td></td>
						<td><button class="submit" type="submit">确定</button></td>
					</tr>
				</table>
			</form>
		</div>
	</div>
</div>

</body>
</html>