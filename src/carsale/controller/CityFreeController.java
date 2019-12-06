package carsale.controller;

import java.io.IOException;
import java.util.ArrayList;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.google.gson.Gson;

import carsale.model.CityFee;
import carsale.service.CityFeeService;
import carsale.service.Impl.CityFeeServiceImpl;

/**
 * Servlet implementation class CityFreeController
 */
@WebServlet("/api/city-fee")
public class CityFreeController extends HttpServlet {
  private static final long serialVersionUID = 1L;
  private Gson gson;
  private CityFeeService cityFeeService;

  /**
   * @see HttpServlet#HttpServlet()
   */
  public CityFreeController() {
    gson = new Gson();
    cityFeeService = new CityFeeServiceImpl();
  }

  /**
   * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse
   *      response)
   */
  protected void doGet(HttpServletRequest request, HttpServletResponse response)
      throws ServletException, IOException {
    ArrayList<CityFee> list = cityFeeService.getAllCityFee();
    String json = gson.toJson(list);
    response.setContentType("application/json");
    response.setCharacterEncoding("UTF-8");
    response.getWriter().write(json);
  }

}
