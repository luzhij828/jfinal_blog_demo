<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>

<html xml:lang="zh-CN" xmlns="http://www.w3.org/1999/xhtml" lang="zh-CN">
<head>

    <meta http-equiv="content-type" content="text/html; charset=UTF-8" />
    <link href="${pageContext.request.contextPath}/css/manage.css" media="screen" rel="stylesheet" type="text/css" />
    <link href="${pageContext.request.contextPath}/css/bootstrap.min.css" rel="stylesheet" />
    <script src="${pageContext.request.contextPath}/js/jquery-3.0.0.min.js"></script>
    <script src="${pageContext.request.contextPath}/js/bootstrap.min.js"></script>
    <script>
        $(document).ready(function(){
            $("#upuser").click(function(){
                $.ajax({
                    type:"post",
                    dateType:"json",
                    url:"${pageContext.request.contextPath}/user/update",
                    data:$("#addform").serialize(),
                    success:function(data){
                        if(data.flag){
                            alert(data.msg);
                            window.location="${pageContext.request.contextPath}/user/viewUI/${sessionScope.userInfo.uid}";
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
        <div class="manage_logo"><a href="${pageContext.request.contextPath}/user/viewUI/${sessionScope.userInfo.uid}">${sessionScope.userInfo.username }!</a>欢迎</div>
        <div id="nav">
            <ul>
                <li><a href="${pageContext.request.contextPath}/"><b>首页</b></a></li>
                <li><a href="${pageContext.request.contextPath}/blog"><b>Blog管理</b></a></li>
            </ul>
        </div>
    </div>
    <div class="main">
        <h1>用户信息 ---&gt; 修改用户信息
        </h1>
        <div class="form_box">
            <form id="addform">
                <fieldset class="solid">
                    <input type="hidden" name="user.uid" value="${user.uid}" />

                    <div>
                        <label>用户名</label>
                        <input type="text" name="user.username" value="${user.username}" />
                    </div>
                    <div>
                        <label>密码</label>
                        <input type="text" name="user.password"  value="${user.password}" />
                    </div>
                    <div>
                        <label>&nbsp;</label>
                        <input id="upuser" value="修改" type="button">
                    </div>
                </fieldset>
            </form>
        </div>
    </div>
</div>
</body>
</html>