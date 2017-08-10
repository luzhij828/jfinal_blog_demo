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
			<div class="manage_logo">${sessionScope.userInfo.username }!欢迎</div>
			<div id="nav">
				<ul>
					<li><a href="${pageContext.request.contextPath}/"><b>首页</b></a></li>
					<li><a href="${pageContext.request.contextPath}/blog"><b>Blog管理</b></a></li>
					<li><a href="${pageContext.request.contextPath}/user/viewUI/${sessionScope.userInfo.uid}"><b>用户管理</b></a></li>
				</ul>
			</div>
		</div>
		<div class="main">
			<h1>Blog管理 ---&gt; 修改Blog
			</h1>
			<div class="form_box">
				<form action="${pageContext.request.contextPath}/blog/update" method="post">
					<fieldset class="solid">
						<legend>${page_title}Blog</legend>
						<input type="hidden" name="blog.id" value="${blog.id}" />
						<input type="hidden" name="blog.uid" value="${sessionScope.userInfo.uid}" />
						<div>
							<label>标题</label>
							<input type="text" name="blog.title" value="${blog.title}" />
						</div>
						<div>
							<label>内容</label>
							<textarea name="blog.content" cols="80" rows="10">${blog.content} </textarea> 
						</div>
						<div>
							<label>&nbsp;</label>
							<input value="提交" type="submit">
						</div>
					</fieldset>
				</form>
			</div>
		</div>
	</div>
</body>
</html>


