
package carsale.serviceImpl;

import java.util.ArrayList;

import carsale.dao.impl.CarDaoImpl;
import carsale.model.Car;
import carsale.service.CarService;

public class CarServiceImpl implements CarService {

  private CarDaoImpl cardao = new CarDaoImpl();

  /**
   * {@inheritDoc}
   * 
   * @see carsale.service.CarService#getAllCar()
   */
  @Override
  public ArrayList<Car> getAllCar() {
    return (ArrayList<Car>) cardao.getAllCar();
  }

  /**
   * {@inheritDoc}
   * 
   * @see carsale.service.CarService#getCarById(int)
   */
  @Override
  public Car getCarById(int carId) {
    return cardao.getCarById(carId);
  }

  /**
   * {@inheritDoc}
   * 
   * @see carsale.service.CarService#getCarByName(java.lang.String)
   */
  @Override
  public Car getCarByName(String carName) {
    // TODO Auto-generated method stub
    return null;
  }

  /**
   * {@inheritDoc}
   * 
   * @see carsale.service.CarService#updateCar(carsale.model.Car)
   */
  @Override
  public void updateCar(Car car) {
    // TODO Auto-generated method stub

  }

  /**
   * {@inheritDoc}
   * 
   * @see carsale.service.CarService#insertCar(carsale.model.Car)
   */
  @Override
  public Long insertCar(Car car) {
    // TODO Auto-generated method stub
    return null;
  }

  /**
   * {@inheritDoc}
   * 
   * @see carsale.service.CarService#deleteCar(int)
   */
  @Override
  public Long deleteCar(int carId) {
    // TODO Auto-generated method stub
    return null;
  }

  /**
   * {@inheritDoc}
   * @see carsale.service.CarService#getListPrice()
   */
  @Override
  public ArrayList<Car> getListPrice() {
   return (ArrayList<Car>) cardao.getListCarPrice();
  }

}
