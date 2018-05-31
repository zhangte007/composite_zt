<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE>
<html lang="en">
<head>
<meta charset="UTF-8">
<title>排版</title>
<link rel="stylesheet" href="${pageContext.request.contextPath}/bs/css/bootstrap.min.css">
<script type="text/javascript" src="${pageContext.request.contextPath}/bs/js/jquery.min.js"></script>
<script type="text/javascript" src="${pageContext.request.contextPath}/bs/js/bootstrap.js"></script>
<script type="text/javascript" src="${pageContext.request.contextPath}/bs/js/holder.min.js"></script>
<style type="text/css"></style>
<meta name="viewport" content="width=device-width, initial-scale=1, maximum-scale=1, user-scalable=no">
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
		<h1>17、按钮</h1>
		<!-- Standard button -->
		<button class="btn btn-lg">（默认样式）大</button>

		<button class="btn btn-default btn-sm">（默认样式）Default 中</button>
		
		<!-- Provides extra visual weight and identifies the primary action in a set of buttons -->
		<button class="btn btn-primary btn-xs">（首选项）Primary 小</button>
		
		<!-- Indicates a successful or positive action -->
		<button class="btn btn-success">（成功）Success</button>
		
		<!-- Contextual button for informational alert messages -->
		<button class="btn btn-info">（一般信息）Info</button>
		
		<!-- Indicates caution should be taken with this action -->
		<button class="btn btn-warning">（警告）Warning</button>
		
		<!-- Indicates a dangerous or potentially negative action -->
		<button class="btn btn-danger">（危险）Danger</button>
		
		<!-- Deemphasize a button by making it look like a link while maintaining button behavior -->
		<button class="btn btn-link">（链接）Link</button>
		<h1 class="page-header">用户个人中心:</h1>
		<div class="row">
			<div class="col-md-2">
			<button class="btn btn-default btn-block">块状按钮</button>
			<button class="btn btn-default btn-block" disabled>个人信息</button>
			<button class="btn btn-default btn-block">修改密码</button>
			<button class="btn btn-default btn-block">待办任务</button>
			<button class="btn btn-default btn-block">邮件管理</button>
			<button class="btn btn-default btn-block">系统管理</button>
			<button class="btn btn-default btn-block">基础数据</button>
			<a class="btn btn-default btn-block">a连接按钮</a>
			<form action="">
			<input type="submit" class="btn btn-default btn-block" value="submit按钮">
			</form>
			<input type="reset" class="btn btn-default btn-block" value="reset按钮">
			<input type="button" class="btn btn-default btn-block" value="button按钮">
			
			</div>
			<div class="col-md-10">
				<img alt="" src="holder.js/100px300">
			</div>
		</div>
		
		<h1>18、图片样式</h1>
		<img src="holder.js/200x200" alt="img-rounded" width="200px" class="img-rounded">
		<img src="holder.js/200x200" alt="img-circle" width="200px" class="img-circle">
		<img src="holder.js/200x200" alt="img-thumbnail" width="200px" class="img-thumbnail">
		
		<h1>19、辅助类</h1>
			<p class="page-header">文本颜色</p>
			<p class="text-muted">Nullam id dolor id nibh ultricies vehicula ut id elit.</p>
			<p class="text-primary">Nullam id dolor id nibh ultricies vehicula ut id elit.</p>
			<p class="text-success">Nullam id dolor id nibh ultricies vehicula ut id elit.</p>
			<p class="text-info">Nullam id dolor id nibh ultricies vehicula ut id elit.</p>
			<p class="text-warning">Nullam id dolor id nibh ultricies vehicula ut id elit.</p>
			<p class="text-danger">Nullam id dolor id nibh ultricies vehicula ut id elit.</p>
			
			<p class="page-header">背景颜色</p>
			<p class="bg-primary">Nullam id dolor id nibh ultricies vehicula ut id elit.</p>
			<p class="bg-success">Nullam id dolor id nibh ultricies vehicula ut id elit.</p>
			<p class="bg-info">Nullam id dolor id nibh ultricies vehicula ut id elit.</p>
			<p class="bg-warning">Nullam id dolor id nibh ultricies vehicula ut id elit.</p>
			<p class="bg-danger">Nullam id dolor id nibh ultricies vehicula ut id elit.</p>
			
			
			<p class="page-header">关闭按钮</p>
			<h2 class="bg-success">Nullam id dolor id nibh ultricies vehicula ut id elit<span class="close">&times;</span></h2>
			
			<p class="page-header">三角符号以及浮动</p>
			<h2 class="bg-success">Nullam id dolor <button class="btn btn-success pull-right"> 更多 <span class="caret"></span></button><span class="close">&times;</span></h2>
			
			<p class="page-header">清除浮动</p>
			<!-- Usage as a class -->
			<div class="clearfix"></div>
			
			
			<p class="page-header">块标签居中</p>
			<div class="center-block bg-success" style='width:300px;'>Nullam id dolor id nibh ultricies</div>
		
			<p class="page-header">显示隐藏</p>
			<div class="center-block bg-success show" style='width:300px;'>show</div>
			<div class="center-block bg-success hide" style='width:300px;'>hide</div>
			
		<h1>20、响应式工具</h1>
			<img alt="" src="${pageContext.request.contextPath}/image/bootstrap/logo.png" class="img-responsive">
		
		<h1>21、表单</h1>
		<div class="col-md-12">
			<form action="">
				<div class="form-group">
					<label for="">用户名:</label>
					<input type="text" class="form-control" placeholder="username">
				</div>
				<div class="form-group">
					<label for="">密码:</label>
					<input type="text" class="form-control" placeholder="password">
				</div>
				
				<div class="form-group">
					<div class="input-group">
						<div class="input-group-addon">$</div>
						<input type="text" class="form-control">
						<div class="input-group-addon">.00</div>
					</div>
				</div>
				
				<div class="form-group">
					<label for="">爱好:</label>
					<div class="checkbox">
						<label>
							<input type="checkbox" name="">篮球
						</label>
					</div>
					<div class="checkbox">
						<label>
							<input type="checkbox" name="">足球
						</label>
					</div>
				</div>
				
				<div class="form-group">
					<label for="">选择题:</label>
					<div class="radio">
						<label>
							<input type="radio" name="yzm">篮球
						</label>
					</div>
					<div class="radio">
						<label>
							<input type="radio" name="yzm">足球
						</label>
					</div>
				</div>
				
				<div class="form-group">
					<label for="">文件上传:</label>
					<input type="file" name="" id="">
				</div>
				
				<div class="form-group">
					<label for="">留言:</label>
					<textarea rows="10" cols="30" class="form-control" name="" id=""></textarea>
				</div>
				<div class="form-group">
					<label for="">城市</label>
					<select name="" id="" class="form-control">
						<option value="">北京</option>
						<option value="">武汉</option>
						<option value="">上海</option>
						<option value="">广州</option>
					</select>
				</div>
				<div class="form-group">
					<input type="submit" value="ok" class="btn btn-success">
					<input type="reset" value="cancel" class="btn btn-danger">
				</div>
				
			</form>
			
			
			<form action="" class="form-inline">
				<div class="form-group">
					<label for="">用户名:</label>
					<input type="text" class="form-control" placeholder="username">
				</div>
				<div class="form-group">
					<label for="">密码:</label>
					<input type="text" class="form-control" placeholder="password">
				</div>
				<div class="form-group">
					<input type="submit" value="ok" class="btn btn-success">
					<input type="reset" value="cancel" class="btn btn-danger">
				</div>
			</form>
			<h2>水平排列的表单</h2>
			
			<form action="" class="form-horizontal">
				<fieldset disabled>
				<div class="form-group">
					<label for="" class="col-sm-2 control-label">用户名:</label>
					<div class="col-sm-10">
						<input type="text" class="form-control" placeholder="username">
					</div>
				</div>
				
				<div class="form-group">
					<label for="" class="col-sm-2 control-label">禁用:</label>
					<div class="col-sm-10">
						<input type="text" disabled class="form-control" placeholder="username">
					</div>
				</div>
				
				<div class="form-group">
					<label for="" class="col-sm-2 control-label">只读:</label>
					<div class="col-sm-10">
						<input type="text" readonly class="form-control" placeholder="username">
					</div>
				</div>
				
				<div class="form-group">
					<label for="" class="col-sm-2 control-label">静态字:</label>
					<div class="col-sm-10">
						<p class="form-control-static">小金</p>
					</div>
				</div>
				
				<div class="form-group">
					<label for="" class="col-sm-2 control-label">密码:</label>
					<div class="col-sm-10">
						<input type="password" class="form-control" placeholder="password">
					</div>
				</div>
				
				<div class="form-group">
					<div class="col-sm-10 col-sm-offset-2">
					<input type="submit" value="ok" class="btn btn-success">
					<input type="reset" value="cancel" class="btn btn-danger">
					</div>
				</div>
				</fieldset>
			</form>
			
			<form action="" class="form-horizontal">
				<div class="form-group has-success has-feedback">
					<label for="" class="col-sm-2 control-label">用户名:</label>
					<div class="col-sm-10">
						<input type="text" class="form-control input-lg" placeholder="username">
						<span class="glyphicon glyphicon-ok form-control-feedback"></span>
						<p class="help-block">提示语言</p>
					</div>
				</div>
				<div class="form-group has-warning has-feedback">
					<label for="" class="col-sm-2 control-label">密码:</label>
					<div class="col-sm-10">
						<input type="password" class="form-control input-sm" placeholder="password">
						<span class="glyphicon glyphicon-remove form-control-feedback"></span>
					</div>
				</div>
				<div class="form-group">
					<div class="col-sm-10 col-sm-offset-2">
					<input type="submit" value="ok" class="btn btn-success">
					<input type="reset" value="cancel" class="btn btn-danger">
					</div>
				</div>
			</form>
			
			
			
		</div>
		<div>
			<img alt="" src="holder.js/100px1400">
		</div>
	</div>
	
</body>
</html>