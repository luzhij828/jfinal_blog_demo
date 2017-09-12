<%@ page language="java" contentType="text/html; charset=utf-8" pageEncoding="utf-8"%>

<html>
<head>
<%@ include file="../common/tophead.jsp" %>
</head>

<body>
	<div class="manage_container">
		<%@ include file="../common/topPage.jsp" %>
		<div class="main">
			<h1>Blog管理 ---&gt; 创建Blog
			</h1>
			<div class="form_box">
				<form action="${pageContext.request.contextPath}/blog/save" method="post">
					<fieldset class="solid">
						<legend>${page_title}Blog</legend>
						<input type="hidden" name="blog.id" value="${blog.id}" />
						<input type="hidden" name="blog.uid" value="${sessionScope.userInfo.uid}" />
						<div>
							<label>标题</label>
							<input type="text" name="blog.title" value="${blog.title}" />${titleMsg}
						</div>
						<div>
							<label>内容</label>
							<textarea name="blog.content" cols="80" rows="10">${blog.content} </textarea> ${contentMsg}
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


