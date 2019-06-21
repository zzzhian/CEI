package cn.javabs.cei.servlet;

import cn.javabs.cei.entity.Admin;
import cn.javabs.cei.service.AdminService;
import cn.javabs.cei.service.impl.AdminServiceImpl;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.*;
import java.io.IOException;


@WebServlet("/adminServlet")
public class AdminServlet extends HttpServlet {
    AdminService adminService = new AdminServiceImpl();
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        request.setCharacterEncoding("utf-8");
        response.setCharacterEncoding("utf-8");
        response.setContentType("text/html,charset=utf-8");

        String op = request.getParameter("op");

        if ("Register".equals(op)){
            Register(request,response);
        }else if("goToLoginPage".equals(op)){
            goToLoginPage(request,response);
        }
        else if("Login".equals(op)){
            Login(request,response);
        }else if("Logout".equals(op)) {
            Logout(request, response);
        }else{
            System.out.println("参数传递有误！");
        }




    }

    private void goToLoginPage(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        request.getRequestDispatcher("/login.jsp").forward(request,response);
    }


    /**
     * 用户退出
     * @param request
     * @param response
     */
    private void Logout(HttpServletRequest request, HttpServletResponse response) throws IOException, ServletException {
        HttpSession session = request.getSession();

        session.removeAttribute("USER_SESSION");
        request.getRequestDispatcher("/index.jsp").forward(request,response);
    }

    /**
     * 用户登录
     * @param request
     * @param response
     */
    private void Login(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {

        String username = request.getParameter("username");
        String password = request.getParameter("password");

//        Admin admin = new Admin();
//       admin.setUsername(username);
//       admin.setPassword(password);

        Admin a = adminService.Login(username, password);
        if(a!= null){
            HttpSession session = request.getSession();
            session.setAttribute("USER_SESSION",a);// USER_SESSION 是一个记号|标记
            request.getRequestDispatcher("/login.jsp").forward(request,response);
        }else{
            request.setAttribute("msg","用户登录失败");
            request.getRequestDispatcher("/error.jsp").forward(request,response);
        }
    }
    /**
     * 用户注册
     * @param request
     * @param response
     */

    private void Register(HttpServletRequest request, HttpServletResponse response) {

        String username =request.getParameter("username");
        String password = request.getParameter("password");
        String phone = request.getParameter("phone");
        String email = request.getParameter("Email");


        Admin admin = new Admin();

        admin.setUsername(username);
        admin.setPassword(password);
        admin.setPhone(phone);
        admin.setEmail(email);

        System.out.println(admin);

        int row = adminService.Register(admin);
        if (row > 0) {
            request.setAttribute("msg", "注册成功！");
            try {
                request.getRequestDispatcher("/success.jsp").forward(request, response);
            } catch (Exception e) {
                throw new RuntimeException(e);
            }
        }else{
            request.setAttribute("msg", "注册失败！");
            try {
                request.getRequestDispatcher("/error.jsp").forward(request,
                        response);
            } catch (Exception e) {
                throw new RuntimeException(e);
            }
        }

    }


    protected void doGet (HttpServletRequest request, HttpServletResponse response) throws
            ServletException, IOException {
        this.doPost(request, response);
    }
}
