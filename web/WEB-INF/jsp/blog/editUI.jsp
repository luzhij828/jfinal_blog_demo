<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>

<html xml:lang="zh-CN" xmlns="http://www.w3.org/1999/xhtml" lang="zh-CN">
<head>

	<%@ include file="../common/tophead.jsp" %>
</head>
<body>
	<div class="manage_container">
		<%@ include file="../common/topPage.jsp" %>
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
							<label>标题 </label>
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


