
package carsale.mapper;

import java.sql.ResultSet;
import java.sql.SQLException;

import carsale.model.Car;
import carsale.model.Spec;

public class SpecMapper implements IRowMapper<Spec> {

  /**
   * {@inheritDoc}
   * 
   * @see carsale.mapper.IRowMapper#mapRow(java.sql.ResultSet)
   */
  @Override
  public Spec mapRow(ResultSet rs) {
    try {
      Spec spec = new Spec();
      spec.setSpecId(rs.getInt("spec_id"));
      spec.setSpecName(rs.getString("spec_name"));
      spec.setSpecDetail(rs.getString("detail"));
      try {
        Car car = new Car();
        car.setCarId(rs.getInt("car_id"));
        car.setCarName(rs.getString("car_name"));
        car.setCarCategory(rs.getString("category"));
        car.setCarDes(rs.getString("des"));
        car.setCarPrice(rs.getDouble("price"));
        spec.setCar(car);
      } catch (Exception e) {
        System.out.println(e.getMessage());
      }
      return spec;
    } catch (SQLException e) {
      System.out.println("Converter:" + e.getMessage());
      return null;
    }
  }

}
