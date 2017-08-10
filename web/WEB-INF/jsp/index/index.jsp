<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>

<html xml:lang="zh-CN" xmlns="http://www.w3.org/1999/xhtml" lang="zh-CN">
<head>

	<meta http-equiv="content-type" content="text/html; charset=UTF-8" />
	<link href="${pageContext.request.contextPath}/css/manage.css" media="screen" rel="stylesheet" type="text/css" />
	<link href="${pageContext.request.contextPath}/css/bootstrap.min.css" rel="stylesheet" />
	<script src="${pageContext.request.contextPath}/js/jquery-3.0.0.min.js"></script>
	<script src="${pageContext.request.contextPath}/js/bootstrap.min.js"></script>
</head>
<body>
	<div class="manage_container">
		<div class="manage_head">
			<div class="manage_logo">${sessionScope.userInfo.username }!欢迎 </div>
			<div id="nav">
				<ul>
					<li><a href="${pageContext.request.contextPath}/"><b>首页</b></a></li>
					<li><a href="${pageContext.request.contextPath}/blog"><b>Blog管理</b></a></li>
				</ul>
			</div>
		</div>
		<div class="main">
			<div class="table_box">
	
			<br><br><br>
	
			<a href="${pageContext.request.contextPath}/blog">进入blog</a>
				
				<br/><br/><br/><br/><br/><br/><br/><br/><br/><br/><br/><br/>
				<br/><br/><br/><br/><br/><br/><br/><br/><br/><br/><br/><br/>
			</div>
		</div>
	</div>
</body>
</html>

