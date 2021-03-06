<%@ page language="java" import="java.util.*" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>

<html>
<head>

    <%@ include file="../common/tophead.jsp" %>
</head>
<body>
<div class="manage_container">
    <%@ include file="../common/topPage.jsp" %>
    <div class="main">
        <h1>Blog管理&nbsp;&nbsp;
            <a href="${pageContext.request.contextPath}/blog/addUI">创建Blog</a>
        </h1>
        <div class="table_box">
            <table class="list">
                <tbody>
                <tr>
                    <th width="4%">id</th>
                    <th width="35%">标题</th>
                    <th width="12%">内容</th>
                    <th width="12%">作者</th>
                    <th width="12%">操作</th>
                </tr>

                <c:forEach items="${blogPage.list}" var="blog">
                    <tr>
                        <td style="text-align:left;">${blog.id}</td>
                        <td style="text-align:left;">${blog.title}</td>
                        <td style="text-align:left;">${blog.content}</td>
                        <td style="text-align:left;">${blog.uid}</td>
                        <td style="text-align:left;">
                            &nbsp;&nbsp;<a href="${pageContext.request.contextPath}/blog/delete/${ blog.id}">删除</a>
                            &nbsp;&nbsp;<a href="${pageContext.request.contextPath}/blog/editUI/${blog.id}">修改</a>
                            &nbsp;&nbsp;<a href="${pageContext.request.contextPath}/blog/viewUI/${blog.id}">查看</a>
                        </td>
                    </tr>
                </c:forEach>
                </tbody>
            </table>
            <div>
                <ul class="pagination">
                    <li><a href="${pageContext.request.contextPath}/blog/1">首页</a></li>

                    <c:if test="${(blogPage.totalPage-blogPage.pageNumber<5)&&(blogPage.totalPage>11)}">

                        <c:forEach var="i1" begin="${blogPage.pageNumber-5-5+(blogPage.totalPage-blogPage.pageNumber)}"
                                   end="${blogPage.pageNumber -1-5}">
                            <li><a href="${pageContext.request.contextPath}/blog/${i1}">${i1}</a></li>
                        </c:forEach>

                    </c:if>

                    <c:forEach var="i" begin="${blogPage.pageNumber>5?blogPage.pageNumber-5:1}"
                               end="${blogPage.pageNumber -1}">
                        <li><a href="${pageContext.request.contextPath}/blog/${i}">${i}</a></li>
                    </c:forEach>

                    <li class="disabled"><a
                            href="${pageContext.request.contextPath}/blog/${blogPage.pageNumber}">${blogPage.pageNumber}</a>
                    </li>

                    <c:forEach var="m" begin="${blogPage.pageNumber +1}"
                               end="${blogPage.totalPage-blogPage.pageNumber>5?blogPage.pageNumber+5:blogPage.totalPage}">
                        <li><a href="${pageContext.request.contextPath}/blog/${m}">${m}</a></li>
                    </c:forEach>

                    <c:if test="${(blogPage.pageNumber<6)&&(blogPage.totalPage>11)}">

                        <c:forEach var="i2" begin="${blogPage.pageNumber+5+1}" end="11">
                            <li><a href="${pageContext.request.contextPath}/blog/${i2}">${i2}</a></li>
                        </c:forEach>

                    </c:if>
                    <li><a href="${pageContext.request.contextPath}/blog/${blogPage.totalPage}">末页</a></li>
                </ul>
            </div>
        </div>

    </div>
</div>
</body>
</html>



