<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>jxl Demo</title>

<link rel="stylesheet" href="${pageContext.request.contextPath}/bs/css/bootstrap.min.css">
<script type="text/javascript" src="${pageContext.request.contextPath}/bs/js/jquery.min.js"></script>
<script type="text/javascript" src="${pageContext.request.contextPath}/bs/js/bootstrap.js"></script>
<script type="text/javascript" src="${pageContext.request.contextPath}/bs/js/holder.min.js"></script>
<script type="text/javascript">
	var path ="${pageContext.request.contextPath}";
</script>
<script type="text/javascript" src="${pageContext.request.contextPath}/js/menus/jxl/jxlMenus.js"></script>
</head>
<body>
	<!-- container布局容器,自带居中 -->
	<div class="container">
		<h1 class="page-header">jxl Demo:</h1>
		<div class="row">
			<div class="col-md-2">
			<button onclick="window.location.href='${pageContext.request.contextPath}/jxl/downloadJxl.do'" class="btn btn-default btn-block">downloadJxl</button>
			<button onclick="window.location.href='${pageContext.request.contextPath}/jxl/uploadJxlUi.do'" class="btn btn-default btn-block">uploadJxlUi</button>
			</div>
			<div class="col-md-10">
				<img alt="" src="holder.js/100px300">
			</div>
		</div>
	</div>
	
</body>
</html>