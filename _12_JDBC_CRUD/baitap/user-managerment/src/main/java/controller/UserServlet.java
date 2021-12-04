package controller;

import service.IUserService;
import service.UserService;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;

@WebServlet(name = "UserServlet",urlPatterns ={"","/users"})
public class UserServlet extends HttpServlet {
    IUserService userService=new UserService();
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {

    }

    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        String actionUser =request.getParameter("actionUser");
        if(actionUser==null){
            actionUser="";
        }
            switch (actionUser){
                case "sort":
                    request.setAttribute("userListServlet",userService.sortByName());
                    request.getRequestDispatcher("index.jsp").forward(request,response);
                    break;
                case "find":

                default:
                    request.setAttribute("userListServlet",userService.findAll());
                    request.getRequestDispatcher("index.jsp").forward(request,response);
            }
        }
    }

