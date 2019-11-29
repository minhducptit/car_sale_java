package carsale.controller;

import java.io.IOException;
import java.io.PrintWriter;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import carsale.model.User;
import carsale.security.Authentication;
import carsale.untils.FormUtil;

/**
 * Servlet implementation class LoginSvl
 */
@WebServlet(urlPatterns = {"/trang-chu", "/login" })
public class LoginSvl extends HttpServlet {
  private static final long serialVersionUID = 1L;

  /**
   * @see HttpServlet#HttpServlet()
   */
  public LoginSvl() {
    super();
    // TODO Auto-generated constructor stub
  }

  /**
   * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse
   *      response)
   */
  protected void doGet(HttpServletRequest request, HttpServletResponse response)
      throws ServletException, IOException {
    String action = request.getParameter("action");
    if (action != null) {
      if (action.equals("signin")) {
        if (request.getParameter("user") != null) {
          request.setAttribute("message", "Tài khoản hoặc mật khẩu sai !");
          request.setAttribute("alert", "danger");
        } else {
          PrintWriter out = response.getWriter();
          out.print("Susgest");
        }
        // RequestDispatcher rd =
        // request.getRequestDispatcher("/views/login/signin.jsp");
        // rd.forward(request, response);
      } else if (action.equals("signup")) {
        // RequestDispatcher rd =
        // request.getRequestDispatcher("/views/login/signup.jsp");
        // rd.forward(request, response);
      } else if (action.equals("forget")) {
        // RequestDispatcher rd =
        // request.getRequestDispatcher("/views/login/forget.jsp");
        // rd.forward(request, response);
      } else if (action.equals("logout")) {
        // SessionUtil.getInstance().removeValue(request, "USERMODEL");
        // response.sendRedirect(request.getContextPath() + "/trang-chu");
      }
    } else {
      // RequestDispatcher rd =
      // request.getRequestDispatcher("/views/web/home.jsp");
      // rd.forward(request, response);
      PrintWriter out = response.getWriter();
      out.print("Susgest");
    }
  }

  /**
   * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse
   *      response)
   */
  protected void doPost(HttpServletRequest request, HttpServletResponse response)
      throws ServletException, IOException {
    String submit = request.getParameter("action");
    if (submit.equals("submit")) {
      User user = FormUtil.toModel(User.class, request);
      System.out.println(user.getUserName());
      System.out.println(user.getPassword());
      String url =
          Authentication.of(user.getUserName(), user.getPassword()).urlRediect(request);
      System.out.println(url);
      PrintWriter out = response.getWriter();
      out.print("Susgest");
      //System.out.println(user.toString());
      response.sendRedirect(request.getContextPath() + url);
    }
  }

}
