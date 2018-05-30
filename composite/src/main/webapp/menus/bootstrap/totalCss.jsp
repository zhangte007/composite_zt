<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">
<head>
<meta charset="UTF-8">
<title>totalCss</title>
<link rel="stylesheet" href="${pageContext.request.contextPath}/bs/css/bootstrap.min.css">
<script type="text/javascript" src="${pageContext.request.contextPath}/bs/js/jquery.min.js"></script>
<script type="text/javascript" src="${pageContext.request.contextPath}/bs/js/bootstrap.js"></script>
<script type="text/javascript" src="${pageContext.request.contextPath}/bs/js/holder.min.js"></script>
<style type="text/css">
	.container{
	}
	.row{
		margin-bottom:15px;
	}
</style>

</head>
<body>
	<!-- container布局容器,自带居中,一般放在它里面 -->
	<div class="container">
		<h1 class="page-header">totalCss:</h1>
		<div class="row">
			<div class="col-md-2">
			<button onclick="window.location.href='${pageContext.request.contextPath}/bootstrap/gridSystem.do'" class="btn btn-default btn-block">栅格系统</button>
			<button onclick="window.location.href='${pageContext.request.contextPath}/bootstrap/composing.do'" class="btn btn-default btn-block">排版</button>
			</div>
			<div class="col-md-10">
				<img alt="" src="holder.js/100px300">
			</div>
		</div>
	</div>
</body>
</html>