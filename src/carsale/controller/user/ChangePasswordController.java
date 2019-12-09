package carsale.controller.user;

import java.io.IOException;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import carsale.model.ChangePassword;
import carsale.service.UserService;
import carsale.service.Impl.UserServiceImpl;
import carsale.untils.FormUtil;
import carsale.untils.SessionUtil;

/**
 * Servlet implementation class ChangePasswordController
 */
@WebServlet("/admin/change-pass")
public class ChangePasswordController extends HttpServlet {
  private static final long serialVersionUID = 1L;
  private UserService userService;

  /**
   * @see HttpServlet#HttpServlet()
   */
  public ChangePasswordController() {
    userService = new UserServiceImpl();
  }

  /**
   * {@inheritDoc}
   * 
   * @see javax.servlet.http.HttpServlet#doPost(javax.servlet.http.HttpServletRequest,
   *      javax.servlet.http.HttpServletResponse)
   */
  @Override
  protected void doPost(HttpServletRequest req, HttpServletResponse resp)
      throws ServletException, IOException {
    String submit = req.getParameter("submit");
    System.out.println(submit);
    if (submit.equals("Change Password")) {
      ChangePassword changePassword = FormUtil.toModel(ChangePassword.class, req);
      System.out.println("Change pass" + changePassword.toString());
      int status = userService.changePassword(req, changePassword);
      if (status == 0) {
        req.setAttribute("message", "Mật khẩu cũ không đúng !");
        RequestDispatcher rd = req.getRequestDispatcher("change-pass.jsp");
        rd.forward(req, resp);
      } else if (status == 1) {
        SessionUtil.getInstance().removeValue(req, "USER");
        req.setAttribute("message", "Đổi mật khẩu thành công. Bạn cần phải đăng nhập lại !");
        RequestDispatcher rd = req.getRequestDispatcher("../login.jsp");
        rd.forward(req, resp);
      }
    }
  }

}
