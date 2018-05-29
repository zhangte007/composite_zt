<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
</head>
<body>
	<h1>首页</h1>
	<ul style="list-style-type: none;text-decoration: none">
		<li><a href="${pageContext.request.contextPath}/manager/ajax.do">ajax</a></li>
		<li><a href="${pageContext.request.contextPath}/manager/restfull.do">restfull</a></li>
		<li><a href="${pageContext.request.contextPath}/manager/fileupload.do">fileupload</a></li>
		<li><a href="${pageContext.request.contextPath}/manager/jxl.do">jxl</a></li>
		<li><a href="${pageContext.request.contextPath}/manager/echarts.do">echarts</a></li>
	</ul>
</body>
</html>