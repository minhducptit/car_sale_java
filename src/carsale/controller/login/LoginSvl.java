package carsale.controller.login;

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

// TODO: Auto-generated Javadoc
/**
 * Servlet implementation class LoginSvl.
 */
@WebServlet(urlPatterns = {"/login" })
public class LoginSvl extends HttpServlet {

  /** The Constant serialVersionUID. */
  private static final long serialVersionUID = 1L;

  /**
   * Instantiates a new login svl.
   *
   * @see HttpServlet#HttpServlet()
   */
  public LoginSvl() {

  }

  /**
   * Do get.
   *
   * @param request
   *          the request
   * @param response
   *          the response
   * @throws ServletException
   *           the servlet exception
   * @throws IOException
   *           Signals that an I/O exception has occurred.
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
   * Do post.
   *
   * @param request
   *          the request
   * @param response
   *          the response
   * @throws ServletException
   *           the servlet exception
   * @throws IOException
   *           Signals that an I/O exception has occurred.
   * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse
   *      response)
   */
  protected void doPost(HttpServletRequest request, HttpServletResponse response)
      throws ServletException, IOException {
    String submit = request.getParameter("action");
    if (submit.equals("submit")) {
      User user = FormUtil.toModel(User.class, request);
      String url =
          Authentication.of(user.getUserName(), user.getPassword()).urlRediect(request);
      System.out.println("Login URL:" + url);
      response.sendRedirect(request.getContextPath() + url);
    }
  }

}
