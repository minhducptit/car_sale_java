
package carsale.mapper;

import java.sql.ResultSet;
import java.sql.SQLException;

import carsale.model.Car;

public class CarDetailMapper implements IRowMapper<Car> {

  /**
   * {@inheritDoc}
   * 
   * @see carsale.mapper.IRowMapper#mapRow(java.sql.ResultSet)
   */
  @Override
  public Car mapRow(ResultSet rs) {
    try {
      Car car = new Car();
      car.setCarId(rs.getInt("car_id"));
      car.setCarName(rs.getString("car_name"));
      car.setCarCategory(rs.getString("category"));
      car.setCarType(rs.getString("type"));
      car.setCarDes(rs.getString("des"));
      car.setCarPrice(rs.getDouble("price"));
      return car;
    } catch (SQLException e) {
      System.out.println("Converter:" + e.getMessage());
      return null;
    }
  }

}
