<%@ page language="java" import="java.util.*" pageEncoding="UTF-8" %>

<html>
<head>


    <%@ include file="../common/tophead.jsp" %>

    <script>
        $(document).ready(function () {
            $("#add").click(function () {
                $.ajax({
                    type: "post",
                    dateType: "json",
                    url: "${pageContext.request.contextPath}/user/add",
                    data: $("#addform").serialize(),
                    success: function (data) {
                        if (data.flag) {
                            alert(data.msg);
                            window.location = "${pageContext.request.contextPath}/user";
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
            <form id="addform" method="post">
                <fieldset class="solid">
                    <legend>注册</legend>
                    <input type="hidden" name="user.id"/>
                    <div>
                        <label>用户名</label>
                        <input type="text" name="user.username"/>
                    </div>
                    <div>
                        <label>密码：</label>
                        <input type="text" name="user.password"/>
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
