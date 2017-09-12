<%@ page language="java" import="java.util.*" pageEncoding="UTF-8" %>

<html>
<head>

    <%@ include file="../common/tophead.jsp" %>
    <script>
        $(document).ready(function () {

            $("#login").click(function () {
                $.ajax({
                    type: "post",
                    dateType: "json",
                    url: "${pageContext.request.contextPath}/user/login",
                    data: $("#loginform").serialize(),
                    success: function (data) {
                        if (data.flag) {
                            alert(data.msg);
                            window.location = "${pageContext.request.contextPath}/index";
                        } else {
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
            <form id="loginform" class="form-horizontal" method="post">
                <fieldset class="solid">
                    <legend>登录</legend>
                    <div class="form-group">
                        <label class="col-sm-2 control-label">用户名</label>
                        <div class="col-sm-2">
                            <input type="text" class=" form-control" name="username" style="width:100%"/>
                        </div>
                    </div>
                    <div class="form-group">
                        <label class="col-sm-2 control-label">密码：</label>
                        <div class="col-sm-2">
                            <input type="password" class="form-control" name="password"/>
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
