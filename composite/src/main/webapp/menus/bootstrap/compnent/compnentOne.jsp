<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE>
<html lang="en">
<head>
<meta charset="UTF-8">
<title>组件</title>
<link rel="stylesheet" href="${pageContext.request.contextPath}/bs/css/bootstrap.min.css">
<script type="text/javascript" src="${pageContext.request.contextPath}/bs/js/jquery.min.js"></script>
<script type="text/javascript" src="${pageContext.request.contextPath}/bs/js/bootstrap.js"></script>
<script type="text/javascript" src="${pageContext.request.contextPath}/bs/js/holder.min.js"></script>
<style type="text/css"></style>

</head>
<body>
	
	<!-- container布局容器,自带居中,一般放在它里面 -->
	<div class="container">
		<h1>Bootstrap前段框架(组件部分)</h1>
		<h1 class="page-header">1、图标示例</h1>
		<h2>
		<span class="glyphicon glyphicon-question-sign"></span>小金不许睡觉!
		<button class="btn btn-success">更多小金<span class="glyphicon glyphicon-triangle-right"></span></button>
		<button class="btn btn-success">更多小金<span class="glyphicon glyphicon-triangle-top"></span></button>
		<button class="btn btn-success">更多小金<span class="glyphicon glyphicon-triangle-left"></span></button>
		<button class="btn btn-success">更多小金<span class="glyphicon glyphicon-triangle-bottom"></span></button>
		</h2>
		<h1 class="page-header">2、下拉菜单</h1>
		
		<div class="dropdown">
			<button class="btn btn-primary" data-toggle="dropdown">更多课程 <span class="caret"></span></button>
			<ul class="dropdown-menu">
				<li><a href="">百度</a></li>
				<li><a href="">百度</a></li>
				<li><a href="">百度</a></li>
				<li><a href="">百度</a></li>
				<li><a href="">百度</a></li>
				<li><a href="">百度</a></li>
				<li><a href="">百度</a></li>
			</ul>
		</div>
		
		
		<div class="dropdown">
			<button class="btn btn-primary" data-toggle="dropdown">更多课程 <span class="caret"></span></button>
			<ul class="dropdown-menu">
				<li class="dropdown-header">周一事项</li>
				<li><a href="">百度</a></li>
				<li><a href="">百度</a></li>
				<li><a href="">百度</a></li>
				<li role="separator" class="divider"></li>
				<li class="dropdown-header">周二事项</li>
				<li><a href="">百度</a></li>
				<li class="disabled"><a href="javascript:;">禁用</a></li>
			</ul>
		</div>
		
		<h1 class="page-header">3、按钮组</h1>
		<div class="btn-group">
			<button class="btn btn-success">按钮组</button>
			<button class="btn btn-success">百度</button>
			<button class="btn btn-success">百度</button>
			<button class="btn btn-success">百度</button>
			<button class="btn btn-success">百度</button>
			<button class="btn btn-success">百度</button>
		</div>
		
		<div class="btn-toolbar">
			<div class="btn-group btn-group-lg">
				<button class="btn btn-success">按钮工具组</button>
				<button class="btn btn-success">百度</button>
				<button class="btn btn-success">百度</button>
			</div>
			<div class="btn-group btn-group-sm">
				<button class="btn btn-success">按钮工具组</button>
				<button class="btn btn-success">百度</button>
				<button class="btn btn-success">百度</button>
			</div>
			<div class="btn-group btn-group-xs">
				<button class="btn btn-success">按钮工具组</button>
				<button class="btn btn-success">百度</button>
			</div>
		</div>
		
		<div class="btn-group">
				<button class="btn btn-success">百度</button>
				<button class="btn btn-success">百度</button>
				<div class="btn-group">
					<button class="btn btn-success dropdown-toggle" data-toggle="dropdown">百度 <span class="caret"></span></button>
					<ul class="dropdown-menu">
						<li><a href="">下拉</a></li>
						<li><a href="">下拉</a></li>
						<li><a href="">下拉</a></li>
						<li><a href="">下拉</a></li>
						<li><a href="">下拉</a></li>
					</ul>
				</div>
		</div>
		
		<div class="btn-group-vertical">
				<button class="btn btn-success">垂直按钮</button>
				<button class="btn btn-success">百度</button>
				<div class="btn-group">
					<button class="btn btn-success dropdown-toggle" data-toggle="dropdown">百度 <span class="caret"></span></button>
					<ul class="dropdown-menu">
						<li><a href="">下拉</a></li>
						<li><a href="">下拉</a></li>
						<li><a href="">下拉</a></li>
						<li><a href="">下拉</a></li>
						<li><a href="">下拉</a></li>
					</ul>
				</div>
		</div>
		
		<div class="btn-group btn-group-justified">
			<div class="btn-group">
				<button class="btn btn-success">两端对齐的按钮</button>
			</div>
			<div class="btn-group">
				<button class="btn btn-success">两端对齐的按钮</button>
			</div>
			<div class="btn-group">
				<button class="btn btn-success">两端对齐的按钮</button>
			</div>
		</div>
		
		
		
		<h1 class="page-header">4、</h1>
		
		<h1 class="page-header">5、</h1>
		
		<h1 class="page-header">6、</h1>
		
		<h1 class="page-header">7、</h1>
		
		<h1 class="page-header">8、</h1>
		
		<h1 class="page-header">9、</h1>
		
		<h1 class="page-header">10、</h1>
		<h1 class="page-header">11、</h1>
		<h1 class="page-header">12、</h1>
		<h1 class="page-header">13、</h1>
		<h1 class="page-header">14、</h1>
		<h1 class="page-header">15、</h1>
		<h1 class="page-header">16、</h1>
		<h1 class="page-header">17、</h1>
	</div>
	
</body>
</html>