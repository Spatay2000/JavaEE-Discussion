<%@ page import="com.sample.dao.PostDao" %>
<%@ page import="com.sample.model.Post" %>
<%@ page import="java.util.List" %>
<%@ page import="java.sql.SQLException"%>
%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<style>
    .grid-container {
        display: grid;
        grid-template-columns: auto auto;
        padding: 10px;
        text-align: left;
        justify-content: center;
        align-items: center;
    }
    .grid-container > div {
        padding: 20px;
    }
</style>
<head>
    <title>Posts</title>
</head>
<body>
<jsp:include page="header.jsp"></jsp:include>
<%
    if (session.getAttribute("username") != null) {
%>
<a href="PostCreate.jsp">
    <button class="btn btn-success">Create post</button>
</a>
<%}%>
<div class="grid-container">

    <%
        PostDao postDao = new PostDao();
        List<Post> posts = postDao.getAll();
        int i=0;
        while (posts.size()>i) {
    %>
    <div><h1><%=posts.get(i).getHead()%>
    </h1></div>
    <div><a href="post/<%=posts.get(i).getId()%>">More</a></div>
</div>
<%
        i++;}
%>
</body>
</html>
© 2021 GitHub, Inc.
