
package carsale.mapper;

import java.sql.ResultSet;
import java.sql.SQLException;

import carsale.model.Car;
import carsale.model.Image;


public class ImageMapper implements IRowMapper<Image> {

  /**
   * {@inheritDoc}
   * 
   * @see carsale.mapper.IRowMapper#mapRow(java.sql.ResultSet)
   */
  @Override
  public Image mapRow(ResultSet rs) {
    try {
      Image image = new Image();
      image.setImageId(rs.getInt("image_id"));
      image.setImageUrl(rs.getString("url"));
      image.setImageType(rs.getString("type_image"));
      try {
        Car car = new Car();
        car.setCarId(rs.getInt("car_id"));
        car.setCarName(rs.getString("car_name"));
        car.setCarCategory(rs.getString("category"));
        car.setCarDes(rs.getString("des"));
        car.setCarPrice(rs.getDouble("price"));
        image.setCar(car);
      } catch (Exception e) {
        System.out.println(e.getMessage());
      }
      return image;
    } catch (SQLException e) {
      System.out.println("Converter:" + e.getMessage());
      return null;
    }
  }

}
