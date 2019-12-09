package carsale.controller.login;

import java.io.IOException;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import carsale.untils.SessionUtil;

/**
 * Servlet implementation class LogoutController
 */
@WebServlet("/admin/logout")
public class LogoutController extends HttpServlet {
  private static final long serialVersionUID = 1L;

  /**
   * @see HttpServlet#HttpServlet()
   */
  public LogoutController() {
    super();
    // TODO Auto-generated constructor stub
  }

  /**
   * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse
   *      response)
   */
  protected void doGet(HttpServletRequest request, HttpServletResponse response)
      throws ServletException, IOException {
    SessionUtil.getInstance().removeValue(request, "USER");
    RequestDispatcher rd = request.getRequestDispatcher("../login.jsp");
    rd.forward(request, response);
  }

}
