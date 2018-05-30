<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
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
		<h1 class="page-header">首页:</h1>
		<div class="row">
			<div class="col-md-2">
			<button onclick="window.location.href='${pageContext.request.contextPath}/manager/ajax.do'" class="btn btn-default btn-block">ajax</button>
			<button onclick="window.location.href='${pageContext.request.contextPath}/manager/restfull.do'" class="btn btn-default btn-block">restfull</button>
			<button onclick="window.location.href='${pageContext.request.contextPath}/manager/fileupload.do'" class="btn btn-default btn-block">fileupload</button>
			<button onclick="window.location.href='${pageContext.request.contextPath}/manager/jxl.do'" class="btn btn-default btn-block">jxl</button>
			<button onclick="window.location.href='${pageContext.request.contextPath}/manager/echarts.do'" class="btn btn-default btn-block">echarts</button>
			<button onclick="window.location.href='${pageContext.request.contextPath}/manager/bootstrap.do'" class="btn btn-default btn-block">bootstrap</button>
			<button onclick="window.location.href=''" class="btn btn-default btn-block">none</button>
			</div>
			<div class="col-md-10">
				<img alt="" src="holder.js/100px300">
			</div>
		</div>
	</div>
</body>
</html>