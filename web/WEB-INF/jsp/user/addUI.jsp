<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
<head>

	<meta http-equiv="content-type" content="text/html; charset=UTF-8" />
	<link href="${pageContext.request.contextPath}/css/manage.css" media="screen" rel="stylesheet" type="text/css" />
	<link href="${pageContext.request.contextPath}/css/bootstrap.min.css" rel="stylesheet" />
	<script src="${pageContext.request.contextPath}/js/jquery-3.0.0.min.js"></script>
	<script src="${pageContext.request.contextPath}/js/bootstrap.min.js"></script>
<script>
$(document).ready(function(){
	$("#add").click(function(){
		$.ajax({
			type:"post",
			dateType:"json",
			url:"${pageContext.request.contextPath}/user/add",
			data:$("#addform").serialize(),
			success:function(data){
				if(data.flag){
					alert(data.msg);
					window.location="${pageContext.request.contextPath}/user";
				}else{
					alert(data.msg);
				}
			}
		});

	});
	
});
</script>

</head>
<body>
	<div class="manage_container">
		<div class="manage_head">
		</div>
		<div class="main">
			<div class="form_box">
				<form id="addform"  method="post">
					<fieldset class="solid">
						<legend>注册</legend>
						<input type="hidden" name="user.id"/>
						<div>
							<label>用户名</label>
							<input type="text" name="user.username" />
						</div>
						<div>
							<label>密码：</label>
							<input type="text" name="user.password" />
						</div>
						<div>
							<label>&nbsp;</label>
							<input id="add" value="注册" type="button">
						</div>
					</fieldset>
				</form>
			</div>

		</div>
	</div>
</body>
</html>
