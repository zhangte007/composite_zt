<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    <%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!DOCTYPE>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>下载jxl</title>
<link rel="stylesheet" href="${pageContext.request.contextPath}/bs/css/bootstrap.min.css">
<script type="text/javascript" src="${pageContext.request.contextPath}/bs/js/jquery.min.js"></script>
<script type="text/javascript" src="${pageContext.request.contextPath}/bs/js/bootstrap.js"></script>
<script type="text/javascript" src="${pageContext.request.contextPath}/bs/js/holder.min.js"></script>
</head>
<body>

	<!-- container布局容器,自带居中 -->
	<div class="container">
		<h1 class="page-header">jxl下载:</h1>
		<div class="row">
			<div class="col-md-2">
			<button onclick="window.location.href='${pageContext.request.contextPath}/jxl/downloadJxlStart.do'" class="btn btn-default btn-block">点击下载本页</button>
			</div>
			<div class="col-md-10">
					
				<div class="table-responsive"><!-- table starp -->
					<table class="table table-striped table-bordered table-hover table-condensed">
						<tr>
							<th>编号</th>
							<th>id</th>
							<th>姓名</th>
							<th>性别</th>
						</tr>
						<c:forEach varStatus="i" var="v" items="${infos}">
							<tr <c:if test="${i.count%2 eq 0}">class="success"</c:if> <c:if test="${i.count%2 eq 1}">class="info"</c:if> >
								<th>${i.index+pageInfo.startRow}</th>
								<th>${v.id}</th>
								<th>${v.name}</th>
								<th>${v.gender }</th>
							</tr>
						</c:forEach>
						<tr>
							<td colspan="4" class="text-center">
								<nav aria-label="Page navigation">
								  <ul class="pagination">
								    <li <c:if test="${pageInfo.isFirstPage}">class="disabled"</c:if>>
								      	<c:if test="${pageInfo.hasPreviousPage}">
									      <a href="${pageContext.request.contextPath}/jxl/downloadJxl.do?pageNum=${pageInfo.prePage}" aria-label="Previous">
									        <span aria-hidden="true">&laquo;</span>
									      </a>
								    	</c:if>
								    	<c:if test="${pageInfo.isFirstPage}">
									      <a href="javascript:;" aria-label="Previous">
									        <span aria-hidden="true">&laquo;</span>
									      </a>
								    	</c:if>
								    </li>
								    <li <c:if test="${pageInfo.isFirstPage}">class="disabled"</c:if>>
								    	<a href="${pageContext.request.contextPath}/jxl/downloadJxl.do?pageNum=1">首页</a>
								    </li>
								    <c:forEach items="${pageInfo.navigatepageNums}" var="k">
										<li <c:if test='${k==pageInfo.pageNum}'>class='active'</c:if> >
											<a href="${pageContext.request.contextPath}/jxl/downloadJxl.do?pageNum=${k}">${k}</a>
										</li>
									</c:forEach>
								    <li <c:if test="${pageInfo.isLastPage}">class="disabled"</c:if>>
								    	<a href="${pageContext.request.contextPath}/jxl/downloadJxl.do?pageNum=${pageInfo.pages}">尾页</a>
								    </li>
								    <li <c:if test="${pageInfo.isLastPage}">class="disabled"</c:if>>
								    	<c:if test="${pageInfo.isLastPage}">
									      <a href="javascript:;" aria-label="Next">
									        <span aria-hidden="true">&raquo;</span>
									      </a>
								    	</c:if>
								    	<c:if test="${pageInfo.hasNextPage}">
									      <a href="${pageContext.request.contextPath}/jxl/downloadJxl.do?pageNum=${pageInfo.nextPage}" aria-label="Next">
									        <span aria-hidden="true">&raquo;</span>
									      </a>
								    	</c:if>
								    </li>
								  </ul>
								</nav>
							</td>
						</tr>
					</table>
				</div><!-- table end -->
			</div>
		</div>
	</div>
	
</body>
</html>