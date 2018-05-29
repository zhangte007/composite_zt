<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    <%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>下载jxl</title>
</head>
<body>
	<table align="center" width="60%" border="1px solid blank">
			<tr>
				<th>编号</th>
				<th>id</th>
				<th>姓名</th>
				<th>性别</th>
			</tr>
		<c:forEach varStatus="i" var="v" items="${infos}">
		<tr>
				<th>${i.index+pageInfo.startRow}</th>
				<th>${v.id}</th>
				<th>${v.name}</th>
				<th>${v.gender }</th>
			</tr>
		</c:forEach>
		<tr>
			<th colspan="4" align="center">
				<a href="${pageContext.request.contextPath}/jxl/downloadJxl.do?pageNum=${pageInfo.navigateFirstPage}">首页</a>
				<c:forEach items="${pageInfo.navigatepageNums}" var="k">
				<a href="${pageContext.request.contextPath}/jxl/downloadJxl.do?pageNum=${k}">${k}</a>
				</c:forEach>
				<a href="${pageContext.request.contextPath}/jxl/downloadJxl.do?pageNum=${pageInfo.navigateLastPage}">尾页</a>
			</th>
		</tr>
		<tr><th colspan="4"><a href="${pageContext.request.contextPath}/jxl/downloadJxlStart.do">点击下载本页</a></th></tr>
	</table>
	
</body>
</html>