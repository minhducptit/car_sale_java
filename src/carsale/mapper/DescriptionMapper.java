
package carsale.mapper;

import java.sql.ResultSet;
import java.sql.SQLException;

import carsale.model.Car;
import carsale.model.Description;

public class DescriptionMapper implements IRowMapper<Description> {

  /**
   * {@inheritDoc}
   * 
   * @see carsale.mapper.IRowMapper#mapRow(java.sql.ResultSet)
   */
  @Override
  public Description mapRow(ResultSet rs) {
    try {
      Description des = new Description();
      des.setDesId(rs.getInt("des_id"));
      des.setDesContent(rs.getString("content"));
      des.setDesType(rs.getString("type_des"));
      des.setDesImage(rs.getString("des_img"));
      try {
        Car car = new Car();
        car.setCarId(rs.getInt("car_id"));
        car.setCarName(rs.getString("car_name"));
        car.setCarCategory(rs.getString("category"));
        car.setCarDes(rs.getString("des"));
        car.setCarPrice(rs.getDouble("price"));
        des.setCar(car);
      } catch (Exception e) {
        System.out.println(e.getMessage());
      }
      return des;
    } catch (SQLException e) {
      System.out.println("Converter:" + e.getMessage());
      return null;
    }
  }
}
