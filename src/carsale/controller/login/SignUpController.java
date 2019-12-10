package carsale.controller.login;

import java.io.IOException;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import carsale.model.Role;
import carsale.model.User;
import carsale.service.RoleService;
import carsale.service.UserService;
import carsale.service.Impl.RoleServiceImpl;
import carsale.service.Impl.UserServiceImpl;
import carsale.untils.FormUtil;

// TODO: Auto-generated Javadoc
/**
 * Servlet implementation class SignInController.
 */
@WebServlet("/signup")
public class SignUpController extends HttpServlet {

  /** The Constant serialVersionUID. */
  private static final long serialVersionUID = 1L;

  /** The user service. */
  private UserService userService;

  /** The role service. */
  private RoleService roleService;

  /**
   * Instantiates a new sign up controller.
   */
  public SignUpController() {
    userService = new UserServiceImpl();
    roleService = new RoleServiceImpl();
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
    User user = FormUtil.toModel(User.class, request);
    Role role = roleService.getRoleById(1);
    user.setRole(role);
    System.out.println("Insert User " + user.toString());
    Long result = userService.insertUser(user);
    if (result != null) {
      request.setAttribute("message", "Đăng ký tài khoản thành công");
      RequestDispatcher rd = request.getRequestDispatcher("register.jsp");
      rd.forward(request, response);
    } else {
      request.setAttribute("message", "Đăng ký tài khoản không thành công");
      RequestDispatcher rd = request.getRequestDispatcher("register.jsp");
      rd.forward(request, response);
    }

  }

}
