package carsale.controller.car;

import java.io.IOException;
import java.util.ArrayList;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.google.gson.Gson;

import carsale.model.Image;
import carsale.service.ImageService;
import carsale.service.Impl.ImageServiceImpl;

/**
 * Servlet implementation class ImageSlideController
 */
@WebServlet("/api/img-slide")
public class ImageSlideController extends HttpServlet {
  private static final long serialVersionUID = 1L;
  private Gson gson;
  private ImageService imageService;

  /**
   * @see HttpServlet#HttpServlet()
   */
  public ImageSlideController() {
    gson = new Gson();
    imageService = new ImageServiceImpl();
  }

  /**
   * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse
   *      response)
   */
  protected void doGet(HttpServletRequest request, HttpServletResponse response)
      throws ServletException, IOException {

    ArrayList<Image> list = imageService.getImageSlide();
    String json = gson.toJson(list);
    response.setContentType("application/json");
    response.setCharacterEncoding("UTF-8");
    response.getWriter().write(json);
  }

}
