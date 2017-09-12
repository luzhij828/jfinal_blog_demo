<%@ page language="java" import="java.util.*" pageEncoding="UTF-8" %>
<html>
<head>

    <%@ include file="../common/tophead.jsp" %>
</head>

<body>
<div class="manage_container">
    <%@ include file="../common/topPage.jsp" %>
    <div class="main">
        <h1>Blog管理 ---&gt; 查看Blog
        </h1>
        <div class="form_box">
            <fieldset class="solid">
                <legend>${page_title}Blog</legend>
                <input type="hidden" name="blog.id" value="${blog.id}"/>
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
