package carsale.controller;

import java.io.IOException;

import javax.servlet.RequestDispatcher;
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
@WebServlet(urlPatterns = {"/login" })
public class LoginSvl extends HttpServlet {
  private static final long serialVersionUID = 1L;

  /**
   * @see HttpServlet#HttpServlet()
   */
  public LoginSvl() {
   
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
          RequestDispatcher rd = request.getRequestDispatcher("login.jsp");
          rd.forward(request, response);
        }
      } else if (action.equals("signup")) {
        RequestDispatcher rd = request.getRequestDispatcher("register.jsp");
        rd.forward(request, response);
      }
    } else {
      RequestDispatcher rd = request.getRequestDispatcher("admin-home.jsp");
      rd.forward(request, response);
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
      System.out.println(user.getEmail());
      System.out.println("Signup: " + user.toString());
      String url =
          Authentication.of(user.getUserName(), user.getPassword()).urlRediect(request);
      System.out.println("Login URL:"+url);
      response.sendRedirect(request.getContextPath() + url);
    }
  }

}
