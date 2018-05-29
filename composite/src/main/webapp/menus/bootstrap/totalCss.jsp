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
		background-color:#aaa;
	}
	.row{
		margin-bottom:15px;
	}
</style>

</head>
<body>
	
	<!-- container布局容器,自带居中,一般放在它里面 -->
	<div class="container">
		<h1><a href="${pageContext.request.contextPath}/bootstrap/gridSystem.do">栅格系统</a></h1>
		<h1><a href="${pageContext.request.contextPath}/bootstrap/composing.do">排版</a></h1>
		<h1><a></a></h1>
		<h1><a></a></h1>
	</div>
	
</body>
</html>