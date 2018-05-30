<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE>
<html lang="en">
<head>
<meta charset="UTF-8">
<title>bootstrapMenus</title>
<link rel="stylesheet" href="${pageContext.request.contextPath}/bs/css/bootstrap.min.css">
<script type="text/javascript" src="${pageContext.request.contextPath}/bs/js/jquery.min.js"></script>
<script type="text/javascript" src="${pageContext.request.contextPath}/bs/js/bootstrap.js"></script>
<script type="text/javascript" src="${pageContext.request.contextPath}/bs/js/holder.min.js"></script>
<!-- 下面这句代码,可以直接检测高宽 -->
<meta name="viewport" content="width=device-width, initial-scale=1, maximum-scale=1, user-scalable=no">
</head>
<body>
	<!-- container布局容器,自带居中 -->
	<div class="container">
		<h1 class="page-header">bootstrapMenus:</h1>
		<div class="row">
			<div class="col-md-2">
			<button onclick="window.location.href='${pageContext.request.contextPath}/bootstrap/totalCss.do'" class="btn btn-default btn-block">totalCss</button>
			</div>
			<div class="col-md-10">
				<img alt="" src="holder.js/100px300">
			</div>
		</div>
	</div>
</body>
</html>