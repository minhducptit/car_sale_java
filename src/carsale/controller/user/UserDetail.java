package carsale.controller.user;

import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.google.gson.Gson;

import carsale.model.User;
import carsale.service.UserService;
import carsale.service.Impl.UserServiceImpl;
import carsale.untils.SessionUtil;

/**
 * Servlet implementation class UserDetail
 */
@WebServlet("/admin/user-detail")
public class UserDetail extends HttpServlet {
  private static final long serialVersionUID = 1L;
  private UserService userService;
  private Gson gson;
  /**
   * @see HttpServlet#HttpServlet()
   */
  public UserDetail() {
    userService = new UserServiceImpl();
    gson= new Gson();
  }

  /**
   * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse
   *      response)
   */
  protected void doGet(HttpServletRequest request, HttpServletResponse response)
      throws ServletException, IOException {
    User user = (User) SessionUtil.getInstance().getValue(request, "USER");
    System.out.println(user.toString());
    String json = gson.toJson(user);
    response.setContentType("application/json");
    response.setCharacterEncoding("UTF-8");
    response.getWriter().write(json);
  }

  /**
   * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse
   *      response)
   */
  protected void doPost(HttpServletRequest request, HttpServletResponse response)
      throws ServletException, IOException {
    // TODO Auto-generated method stub
    doGet(request, response);
  }

}
