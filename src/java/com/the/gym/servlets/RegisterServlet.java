package com.the.gym.servlets;

import com.the.gym.dao.UserDao;
import com.the.gym.entities.Message;
import com.the.gym.entities.User;
import com.the.gym.helper.ConnectionProvider;
import java.io.IOException;
import java.io.PrintWriter;
import javax.servlet.ServletException;
import javax.servlet.annotation.MultipartConfig;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

@MultipartConfigpublic class RegisterServlet extends HttpServlet {

    protected void processRequest(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        response.setContentType("text/html;charset=UTF-8");
        try (PrintWriter out = response.getWriter()) {
          
          

//            fetch all form data
            String check = request.getParameter("check");
            if (check == null) {
//                out.println("box not checked");
                          Message ms= new Message("Please check the box first!!", "danger", "alert-danger");
                HttpSession s = request.getSession();
                s.setAttribute("ms", ms);
                response.sendRedirect("register.jsp");
            } else {
                //baki ka data yaha nikalna..
                String name = request.getParameter("name");
                String age=request.getParameter("age");
                String city=request.getParameter("city");
                String email = request.getParameter("email");
                String phone=request.getParameter("phone");
                String password = request.getParameter("password");
                String gender = request.getParameter("gender");
                
                //create user object and set all data to that object..
                User user = new User(name,age,city, email, phone,password,gender);

                //create a user daao object..
                UserDao dao = new UserDao(ConnectionProvider.getConnection());
                if (dao.saveUser(user)) {
//                save..
//               
                    Message msg = new Message("Registered Successfully", "success", "alert-success");
                HttpSession s = request.getSession();
                s.setAttribute("msg", msg);
                response.sendRedirect("register.jsp");
                    
                } else {
                    out.println("error");
                }
            }
         
        }
    }

    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        processRequest(request, response);
    }

    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        processRequest(request, response);
    }

  
    @Override
    public String getServletInfo() {
        return "Short description";
    }

}
