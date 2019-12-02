package carsale.controller;

import java.io.IOException;
import java.util.ArrayList;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.google.gson.Gson;

import carsale.model.Car;
import carsale.service.CarService;
import carsale.serviceImpl.CarServiceImpl;

/**
 * Servlet implementation class HomeController
 */
@WebServlet("/api/trang-chu")
public class HomeController extends HttpServlet {
  private static final long serialVersionUID = 1L;
  private CarService carService;
  private Gson gson;

  /**
   * @see HttpServlet#HttpServlet()
   */
  public HomeController() {
    carService = new CarServiceImpl();
    gson = new Gson();
  }

  /**
   * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse
   *      response)
   */
  protected void doGet(HttpServletRequest request, HttpServletResponse response)
      throws ServletException, IOException {
    ArrayList<Car> list = carService.getAllCar();
    String json = gson.toJson(list);
    response.setContentType("application/json");
    response.setCharacterEncoding("UTF-8");
    response.getWriter().write(json);
  }

}
