<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>图像报表</title>
<link rel="stylesheet" href="${pageContext.request.contextPath}/bs/css/bootstrap.min.css">
<script type="text/javascript" src="${pageContext.request.contextPath}/bs/js/jquery.min.js"></script>
<script type="text/javascript" src="${pageContext.request.contextPath}/bs/js/bootstrap.js"></script>
<script type="text/javascript" src="${pageContext.request.contextPath}/bs/js/holder.min.js"></script>
</head>
<body>
		<!-- container布局容器,自带居中 -->
	<div class="container">
		<h1 class="page-header">图像报表:</h1>
		<div class="row">
			<div class="col-md-2">
			<button onclick="window.location.href='${pageContext.request.contextPath}/echarts/pieModel.do'" class="btn btn-default btn-block">pie</button>
			<button onclick="window.location.href='${pageContext.request.contextPath}/echarts/barModel.do'" class="btn btn-default btn-block">bar</button>
			</div>
			<div class="col-md-10">
				<img alt="" src="holder.js/100px300">
			</div>
		</div>
	</div>
</body>
</html>