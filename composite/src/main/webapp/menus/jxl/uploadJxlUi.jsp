<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
</head>
<body>
	<h1><a href="${pageContext.request.contextPath}/jxl/downloadJxlModel.do">下载模板</a></h1>
	<div>
		<form action="${pageContext.request.contextPath}/jxl/uploadJxl.do" method="post" enctype="multipart/form-data">
			<input required name="jxlFile" type="file"><br/>
			<input type="submit" name="点击上传">
		</form>
	</div>
</body>
</html>