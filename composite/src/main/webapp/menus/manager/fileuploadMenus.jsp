<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
</head>
<body>
	<h1>fileupload Demo</h1>
		<ul>
			<li><a href="${pageContext.request.contextPath}/fileupload/MyProcess.bpmn/downFile.do">点击下载</a></li>
			<li><a href="${pageContext.request.contextPath}/fileupload/MyProcess.png/downFile.do">点击下载</a></li>
			<li></li>
			<li>
				<form action="${pageContext.request.contextPath}/fileupload/uploadOne.do" method="post" enctype="multipart/form-data">
					<input type="text" name="username"><br/>
					<input type="file" name="toFile"><br/>
					<input type="submit">
				</form>
			</li>
		</ul>
</body>
</html>