
package carsale.mapper;

import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;

import carsale.model.Car;
import carsale.model.Image;

public class CarMapper implements IRowMapper<Car> {

  /**
   * {@inheritDoc}
   * 
   * @see carsale.mapper.IRowMapper#mapRow(java.sql.ResultSet)
   */
  @Override
  public Car mapRow(ResultSet rs) {
    try {
      Car car = new Car();
      ArrayList<Image> listImage = new ArrayList<>();
      car.setCarId(rs.getInt("car_id"));
      car.setCarName(rs.getString("car_name"));
      car.setCarCategory(rs.getString("category"));
      car.setCarType(rs.getString("type"));
      car.setCarDes(rs.getString("des"));
      car.setCarPrice(rs.getDouble("price"));
      try {
        Image image = new Image();
        image.setImageId(rs.getInt("image_id"));
        image.setImageUrl(rs.getString("url"));
        image.setImageType(rs.getString("type_image"));
        listImage.add(image);
      } catch (SQLException e) {
        System.out.println("Converter:" + e.getMessage());
        return null;
      }
      car.setListImage(listImage);
      return car;
    } catch (SQLException e) {
      System.out.println("Converter:" + e.getMessage());
      return null;
    }
  }

}
