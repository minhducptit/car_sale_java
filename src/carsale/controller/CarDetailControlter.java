package carsale.controller;

import java.io.IOException;

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
 * Servlet implementation class CarDetailControlter
 */
@WebServlet("/car-detail")
public class CarDetailControlter extends HttpServlet {
  private static final long serialVersionUID = 1L;
  private CarService carService;
  private Gson gson;

  /**
   * @see HttpServlet#HttpServlet()
   */
  public CarDetailControlter() {
    carService = new CarServiceImpl();
    gson = new Gson();
  }

  /**
   * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse
   *      response)
   */
  protected void doGet(HttpServletRequest request, HttpServletResponse response)
      throws ServletException, IOException {
    String id = request.getParameter("id");
    int carId = Integer.parseInt(id);
    Car car = carService.getCarById(carId);
    String json = gson.toJson(car);
    response.setContentType("application/json");
    response.setCharacterEncoding("UTF-8");
    response.getWriter().write(json);
  }

}
