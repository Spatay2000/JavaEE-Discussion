<%@ page import="com.sample.model.Post" %>
<%@ page import="com.sample.dao.UserDao" %>
<%@ page import="com.sample.model.User" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Post</title>
    <%
        Post post = (Post) request.getAttribute("post");
    %>
</head>
<body>
<jsp:include page="header.jsp"></jsp:include>
<h1 align="center"><%=post.getHead()%></h1>
<h3 align="center"><%=post.getInfo()%></h3>
<%
    UserDao userDao=new UserDao();
    if (session.getAttribute("username")!=null){
        User user=userDao.getByUsername(String.valueOf(session.getAttribute("username")));
        if (post.getUser_id()==user.getId()){
            session.setAttribute("post",post);%>
<a href="/EditPost.jsp"><button>Edit</button></a>
<a href="/delete/post">Delete</a>
<%}%>
<%}%>
</body>
</html>
© 2021 GitHub, Inc.
