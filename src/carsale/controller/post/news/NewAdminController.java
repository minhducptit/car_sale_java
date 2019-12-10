package carsale.controller.post.news;

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
 * Servlet implementation class NewAdminController
 */
@WebServlet({"/admin/new-update" })
public class NewAdminController extends HttpServlet {
  private static final long serialVersionUID = 1L;

  private PostService postService = new PostServiceImpl();

  /**
   * @see HttpServlet#HttpServlet()
   */
  public NewAdminController() {

  }

  /**
   * {@inheritDoc}
   * 
   * @see javax.servlet.http.HttpServlet#doDelete(javax.servlet.http.HttpServletRequest,
   *      javax.servlet.http.HttpServletResponse)
   */
  @Override
  protected void doDelete(HttpServletRequest req, HttpServletResponse resp)
      throws ServletException, IOException {
    String id = req.getParameter("id");
    int newsId = Integer.parseInt(id);
    Long result = postService.deleteNews(newsId);
    String status = "";
    if (result != null) {
      status = " Xóa không thành công.";
    } else {
      status = " Xóa thành công.";
    }
//    System.out.println(status);
//    RequestDispatcher rd = req.getRequestDispatcher("new-list.jsp");
//    rd.forward(req, resp);
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
    if (submit.equals("Update news")) {
      Post post = FormUtil.toModel(Post.class, req);
      System.out.println(post.toString());
      postService.updateNews(post);
      if (resp.SC_OK == 200) {
        req.setAttribute("message", "Cập nhật thành công");
        RequestDispatcher rd = req.getRequestDispatcher("new-edit.jsp");
        rd.forward(req, resp);
      } else {
        req.setAttribute("message", "Cập nhật không thành công");
        RequestDispatcher rd = req.getRequestDispatcher("new-edit.jsp");
        rd.forward(req, resp);
      }
    }
  }
}
