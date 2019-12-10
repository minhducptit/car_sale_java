package carsale.controller.post.service;

import java.io.IOException;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import carsale.model.Post;
import carsale.service.PostService;
import carsale.service.Impl.PostServiceImpl;
import carsale.untils.FormUtil;

/**
 * Servlet implementation class ServiceAdminController
 */
@WebServlet("/admin/service-update")
public class ServiceAdminController extends HttpServlet {
  private static final long serialVersionUID = 1L;
  private PostService postService;

  /**
   * @see HttpServlet#HttpServlet()
   */
  public ServiceAdminController() {
    postService = new PostServiceImpl();
  }

  /**
   * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse
   *      response)
   */
  protected void doPost(HttpServletRequest request, HttpServletResponse response)
      throws ServletException, IOException {
    String submit = request.getParameter("submit");
    if (submit.equals("Update service")) {
      Post post = FormUtil.toModel(Post.class, request);
      System.out.println(post.toString());
      postService.updateService(post);
      if (response.SC_OK == 200) {
        request.setAttribute("message", "Cập nhật thành công");
        RequestDispatcher rd = request.getRequestDispatcher("service-edit.jsp");
        rd.forward(request, response);
      } else {
        request.setAttribute("message", "Cập nhật không thành công");
        RequestDispatcher rd = request.getRequestDispatcher("service-edit.jsp");
        rd.forward(request, response);
      }
    }
  }
  /**
   * @see HttpServlet#doDelete(HttpServletRequest, HttpServletResponse)
   */
  protected void doDelete(HttpServletRequest request, HttpServletResponse response)
      throws ServletException, IOException {
    String id = request.getParameter("id");
    int serviceId = Integer.parseInt(id);
    Long result = postService.deleteService(serviceId);
    String status = "";
    if (result != null) {
      status = " Xóa không thành công.";
    } else {
      status = " Xóa thành công.";
    }
  }

}
