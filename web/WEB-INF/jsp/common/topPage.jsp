<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<div class="manage_head">
    <div class="manage_logo">${sessionScope.userInfo.username }!欢迎</div>
    <div id="nav">
        <ul>
            <li><a href="${pageContext.request.contextPath}/index"><b>首页</b></a></li>
            <li><a href="${pageContext.request.contextPath}/blog"><b>Blog管理</b></a></li>
            <li><a href="${pageContext.request.contextPath}/user/viewUI/${sessionScope.userInfo.uid}"><b>用户管理</b></a></li>
        </ul>
    </div>
</div>