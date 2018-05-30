<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>文件上传下载</title>
<link rel="stylesheet" href="${pageContext.request.contextPath}/bs/css/bootstrap.min.css">
<script type="text/javascript" src="${pageContext.request.contextPath}/bs/js/jquery.min.js"></script>
<script type="text/javascript" src="${pageContext.request.contextPath}/bs/js/bootstrap.js"></script>
<script type="text/javascript" src="${pageContext.request.contextPath}/bs/js/holder.min.js"></script>
</head>
<body>
	<!-- container布局容器,自带居中 -->
	<div class="container">
		<h1 class="page-header">fileupload Demo:</h1>
		<div class="row">
			<div class="col-md-2">
			<button onclick="window.location.href='${pageContext.request.contextPath}/fileupload/MyProcess.bpmn/downFile.do'" class="btn btn-default btn-block">MyProcess.bpmn</button>
			<button onclick="window.location.href='${pageContext.request.contextPath}/fileupload/MyProcess.png/downFile.do'" class="btn btn-default btn-block">MyProcess.png</button>
			</div>
			<div class="col-md-10">
				<form action="${pageContext.request.contextPath}/fileupload/uploadOne.do" method="post" enctype="multipart/form-data">
					<input type="text" name="username"><br/>
					<input type="file" name="toFile"><br/>
					<input type="submit">
				</form>
			</div>
		</div>
	</div>

</body>
</html>