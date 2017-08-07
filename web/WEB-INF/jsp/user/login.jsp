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
	
	$("#login").click(function(){
		$.ajax({
			type:"post",
			dateType:"json",
			url:"${pageContext.request.contextPath}/user/login",
			data:$("#loginform").serialize(),
			success:function(data){
				if(data.flag){
					alert(data.msg);
					window.location="${pageContext.request.contextPath}/index";
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
				<form id="loginform" class="form-horizontal"  method="post">
					<fieldset class="solid">
						<legend>登录</legend>
						<div class="form-group">
							<label class="col-sm-2 control-label">用户名</label>
							<div class="col-sm-2">
								<input type="text" class=" form-control" name="username" style="width:100%" />
							</div>
						</div>
						<div class="form-group">
							<label class="col-sm-2 control-label">密码：</label>
							<div class="col-sm-2">
								<input type="password" class="form-control" name="password" />
							</div>
						</div>
						<div class="form-group">
							<label class="col-sm-2 control-label">&nbsp;</label>
							<div class="col-sm-2">
							<input id="login" class="btn-primary" value="登&nbsp;录" type="button">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
							<a href="${pageContext.request.contextPath}/user/addUI">注册用户</a>
							</div>
						</div>

					</fieldset>
				</form>
			</div>

		</div>
	</div>
	
	
</body>
</html>
