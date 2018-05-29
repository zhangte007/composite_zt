<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">
<head>
<meta charset="UTF-8">
<title>栅格系统</title>
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
		<h1>Bootstrap前段框架</h1>
		<!-- 栅格系统 -->
		<div class="row">
			<div class="col-md-3 col-md-offset-3">
				<img src="${pageContext.request.contextPath}/image/bootstrap/logo.png" width="100%" alt="" >
			</div>
			<div class="col-md-3">
				<img src="${pageContext.request.contextPath}/image/bootstrap/logo.png" width="100%" alt="" >
			</div>
			<div class="col-md-3">
				<img src="${pageContext.request.contextPath}/image/bootstrap/logo.png" width="100%" alt="" >
			</div>
		</div>
		
		<div class="row">
			<div class="col-md-4">
				<img src="${pageContext.request.contextPath}/image/bootstrap/logo.png" width="100%" alt="" >
			</div>
			<div class="col-md-4 col-md-offset-4">
				<img src="${pageContext.request.contextPath}/image/bootstrap/logo.png" width="100%" alt="" >
			</div>
		</div>
		
		<div class="row">
			<div class="col-md-6">
				<img src="${pageContext.request.contextPath}/image/bootstrap/logo.png" width="100%" alt="" >
			</div>
			<div class="col-md-6">
				<div class="col-md-6">
				<img src="${pageContext.request.contextPath}/image/bootstrap/logo.png" width="100%" alt="" >
				</div>
				<div class="col-md-6">
				<img src="${pageContext.request.contextPath}/image/bootstrap/logo.png" width="100%" alt="" >
				</div>
			</div>
		</div>
		
		<div class="row">
			<div class="col-md-4">
				<img src="holder.js/212x212" width="100%" alt="" >
			</div>
			<div class="col-md-4">
				<img src="holder.js/212x212" width="100%" alt="" >
			</div>
			<div class="col-md-4">
				<img src="holder.js/212x212" width="100%" alt="" >
			</div>
		</div>
		
	</div>
	
</body>
</html>