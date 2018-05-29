<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">
<head>
<meta charset="UTF-8">
<title>排版</title>
<link rel="stylesheet" href="${pageContext.request.contextPath}/bs/css/bootstrap.min.css">
<script type="text/javascript" src="${pageContext.request.contextPath}/bs/js/jquery.min.js"></script>
<script type="text/javascript" src="${pageContext.request.contextPath}/bs/js/bootstrap.js"></script>
<script type="text/javascript" src="${pageContext.request.contextPath}/bs/js/holder.min.js"></script>
<style type="text/css"></style>

</head>
<body>
	
	<!-- container布局容器,自带居中,一般放在它里面 -->
	<div class="container">
		<h1>Bootstrap前段框架</h1>
		<h1 class="page-header">1、标题(.page-header)</h1>
		<h1>2、段落(.lead)</h1>
		<p class="lead">This text is meant to be treated as sample output from a computer program.
		This text is meant to be treated as sample output from a computer program.
		This text is meant to be treated as sample output from a computer program.
		This text is meant to be treated as sample output from a computer program.</p>
		<h1>3、mark标记</h1>
		You can use the mark tag to <mark>highlight</mark> text.
		<h1>4、del删除线</h1>
		<del>This line of text is meant to be treated as deleted text.</del>
		<h1>5、small小号字体</h1>
		<small>This line of text is meant to be treated as fine print.</small>
		<h1>6、文本对齐</h1>
		<p class="text-left">Left aligned text.</p>
		<p class="text-center">Center aligned text.</p>
		<p class="text-right">Right aligned text.</p>
		<h1>7、文本大小写</h1>
		<p class="text-lowercase">Lowercased text.</p>
		<p class="text-uppercase">Uppercased text.</p>
		<p class="text-capitalize">Capitalized text.</p>
		<h1>8、无样式列表</h1>
		<ul class="list-unstyled">
		  <li>linux</li>
		  <li>linux</li>
		  <li>linux</li>
		  <li>linux</li>
		</ul>
		<h1>9、内联列表</h1>
		<dl>
		  <dt>选择题..</dt>
		  <dd>linux..</dd>
		  <dd>linux..</dd>
		  <dd>linux..</dd>
		  <dd>linux..</dd>
		</dl>
		<h1>10、自定义列表</h1>
		<dl class="dl-horizontal text-overflow">
		  <dt>选择题..</dt>
		  <dd>linux..</dd>
		  <dd>linux..</dd>
		  <dd>linux..</dd>
		  <dd>linux..</dd>
		</dl>
		
		<h1>11、水平列表排列</h1>
		<dl class="dl-horizontal">
		  <dt>选择题..</dt>
		  <dd>linux..</dd>
		  <dd>linux..</dd>
		  <dd>linux..</dd>
		  <dd>linux..</dd>
		</dl>
		<h1>@@@、代码部分</h1>
		<h1>12、code</h1>
		<code>linux</code> is very much!		
		<h1>13、pre 按原格式输出</h1>
		<pre>if($a<5){echo 'aaaaaa';}</pre>	
		<h1>14、kbd</h1>
		<p>linux is 按<kbd>ctrl+shift</kbd> very much!</p>	
		<h1>15、var 斜体或者i</h1>		
		<p><i>y</i>=<i>a</i>+<i>b</i></p>	
		<h1>16、table</h1>
		<table class="table table-striped table-bordered table-hover">
			<tr><th>ID</th><th>用户名</th><th>密码</th></tr>
			<tr class="active"><td>001</td><td>002</td><td>003</td></tr>
			<tr class="success"><td>001</td><td>002</td><td>003</td></tr>
			<tr class="info"><td>001</td><td>002</td><td>003</td></tr>
			<tr class="warning"><td>001</td><td>002</td><td>003</td></tr>
			<tr class="danger"><td>001</td><td>002</td><td>003</td></tr>
		</table>
		<table class="table table-striped table-bordered table-hover table-condensed">
			<tr><th>ID</th><th>table-condensed</th><th>密码</th></tr>
			<tr class="active"><td>001</td><td>002</td><td>003</td></tr>
			<tr class="success"><td>001</td><td>002</td><td>003</td></tr>
			<tr class="info"><td>001</td><td>002</td><td>003</td></tr>
			<tr class="warning"><td>001</td><td>002</td><td>003</td></tr>
			<tr class="danger"><td>001</td><td>002</td><td>003</td></tr>
		</table>
		<div class="table-responsive">
				<table class="table table-striped table-bordered table-hover table-condensed">
					<tr><th>列太少可能出不来</th><th>响应式表格</th><th>密码</th><th>密码</th><th>密码</th><th>ID</th><th>响应式表格</th><th>密码</th><th>密码</th><th>密码</th></tr>
					<tr class="active"><td>001</td><td>002</td><td>003</td><td>003</td><td>003</td><td>001</td><td>002</td><td>003</td><td>003</td><td>003</td></tr>
					<tr class="success"><td>001</td><td>002</td><td>003</td><td>003</td><td>003</td><td>001</td><td>002</td><td>003</td><td>003</td><td>003</td></tr>
					<tr class="info"><td>001</td><td>002</td><td>003</td><td>003</td><td>003</td><td>001</td><td>002</td><td>003</td><td>003</td><td>003</td></tr>
					<tr class="warning"><td>001</td><td>002</td><td>003</td><td>003</td><td>003</td><td>001</td><td>002</td><td>003</td><td>003</td><td>003</td></tr>
					<tr class="danger"><td>001</td><td>002</td><td>003</td><td>003</td><td>003</td><td>001</td><td>002</td><td>003</td><td>003</td><td>003</td></tr>
				</table>
		</div>
		<h1>17、code</h1>
			
	</div>
	
</body>
</html>