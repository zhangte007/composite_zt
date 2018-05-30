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
<script type="text/javascript">
	var path ="${pageContext.request.contextPath}";
</script>
<script type="text/javascript" src="${pageContext.request.contextPath}/js/menus/ajax/ajaxMenus.js"></script>
</head>
<body>
	<!-- container布局容器,自带居中,一般放在它里面 -->
	<div class="container">
		<h1 class="page-header">ajax Demo:</h1>
		<div class="row">
			<div class="col-md-2">
			<button id="singleton" class="btn btn-default btn-block">ajax</button>
			</div>
			<div class="col-md-10">
				<img alt="" src="holder.js/100px300">
			</div>
		</div>
	</div>
	
</body>
</html>