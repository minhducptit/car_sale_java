package carsale.controller.user;

import java.io.IOException;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import carsale.model.User;
import carsale.service.RoleService;
import carsale.service.UserService;
import carsale.service.Impl.RoleServiceImpl;
import carsale.service.Impl.UserServiceImpl;
import carsale.untils.FormUtil;
import carsale.untils.SessionUtil;

/**
 * Servlet implementation class UpdateUserController
 */
@WebServlet("/admin/user-update")
public class UpdateUserController extends HttpServlet {
  private static final long serialVersionUID = 1L;
  /** The user service. */
  private UserService userService;

  /** The role service. */
  private RoleService roleService;

  /**
   * @see HttpServlet#HttpServlet()
   */
  public UpdateUserController() {
    userService = new UserServiceImpl();
    roleService = new RoleServiceImpl();
  }

  /**
   * {@inheritDoc}
   * 
   * @see javax.servlet.http.HttpServlet#doGet(javax.servlet.http.HttpServletRequest,
   *      javax.servlet.http.HttpServletResponse)
   */
  @Override
  protected void doGet(HttpServletRequest req, HttpServletResponse resp)
      throws ServletException, IOException {
    resp.getWriter().write("HEllo");
  }

  /**
   * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse
   *      response)
   */
  protected void doPost(HttpServletRequest request, HttpServletResponse response)
      throws ServletException, IOException {
    String submit = request.getParameter("submit");
    System.out.println(submit);
    if (submit.equals("Update user")) {
      User userUpdate = FormUtil.toModel(User.class, request);
      User user = (User) SessionUtil.getInstance().getValue(request, "USER");
      userUpdate.setUserId(user.getUserId());
      System.out.println("Insert User Update " + userUpdate.toString());
      userService.updateUser(userUpdate);
      if (response.SC_OK == 200) {
        request.setAttribute("message", "Cập nhật tài khoản thành công");
        RequestDispatcher rd = request.getRequestDispatcher("user-update.jsp");
        rd.forward(request, response);
      } else {
        request.setAttribute("message", "Cập nhật tài khoản không thành công");
        RequestDispatcher rd = request.getRequestDispatcher("user-update.jsp");
        rd.forward(request, response);
      }
    }

  }

}
