package com.sample.servlet;

import com.sample.dao.PostDao;
import com.sample.model.Post;

import javax.servlet.*;
import javax.servlet.http.*;
import javax.servlet.annotation.*;
import java.io.IOException;
import java.io.PrintWriter;
import java.sql.SQLException;

@WebServlet(name = "DeletePost", value = "/delete/*")
public class DeletePost extends HttpServlet {
    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        try {
            HttpSession session= request.getSession();
            Post post = (Post) session.getAttribute("post");
            PrintWriter out = response.getWriter();
            PostDao postDao = new PostDao();
            if (postDao.delete(post.getId()))
                request.getRequestDispatcher("/Posts.jsp").forward(request, response);
            else {
                out.println("Something went wrong!");
            }
        } catch (SQLException throwables) {
            throwables.printStackTrace();
        }
    }

    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        String head = request.getParameter("head");
        String info = request.getParameter("info");
        int id = Integer.parseInt(request.getParameter("id"));
        Post post = new Post();
        post.setInfo(info);
        post.setHead(head);
        post.setId(id);
        try {
            PostDao postDao = new PostDao();
            Post p = postDao.update(post);
            if(p!=null)
            {
                request.setAttribute("post",post);
                request.getRequestDispatcher("/PostInfo.jsp").forward(request,response);
            }
            else
            {
                request.setAttribute("errMessage", id);
                request.getRequestDispatcher("/Posts.jsp").forward(request, response);
            }
        } catch (SQLException throwables) {
            throwables.printStackTrace();
        }
    }
}
