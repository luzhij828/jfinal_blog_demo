<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<html>
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
				<h1>Blog管理 ---&gt; 查看Blog
				</h1>
				<div class="form_box">
					<fieldset class="solid">
						<legend>${page_title}Blog</legend>
						<input type="hidden" name="blog.id" value="${blog.id}" />
						<div>
							<label>标题</label>
							<label>${blog.title}</label>
						</div>
						<div>
							<label>内容</label>
							<label>${blog.content}</label> 
						</div>
						<div>
							<label>人员</label>
							<label>${blog.getUser().username}</label> 
						</div>
						<div>
							<label>&nbsp;</label>
							<input type="button" name="Submit" onclick="javascript:history.back(-1);" value="返回上一页">
						</div>
					</fieldset>
				</div>
			</div>
		</div>
  </body>
</html>
