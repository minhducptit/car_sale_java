
package carsale.mapper;

import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;

import carsale.model.Car;
import carsale.model.Description;
import carsale.model.Image;
import carsale.model.Spec;

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
//      ArrayList<Image> listImage = new ArrayList<>();
//      ArrayList<Description> listDes = new ArrayList<>();
//      ArrayList<Spec> listSpec = new ArrayList<>();
      car.setCarId(rs.getInt("car_id"));
      car.setCarName(rs.getString("car_name"));
      car.setCarCategory(rs.getString("category"));
      car.setCarDes(rs.getString("des"));
      car.setCarPrice(rs.getDouble("price"));
//
//      try {
//        Image image = new Image();
//        image.setImageId(rs.getInt("image_id"));
//        image.setImageUrl(rs.getString("url"));
//        image.setImageType(rs.getString("type_image"));
//        listImage.add(image);
//
//      } catch (SQLException e) {
//        System.out.println("Converter:" + e.getMessage());
//        return null;
//      }
//      car.setListImage(listImage);

//      try {
//        Description des = new Description();
//        des.setDesId(rs.getInt("des_id"));
//        des.setDesContent(rs.getString("content"));
//        des.setDesType(rs.getString("type_des"));
//        des.setDesImage(rs.getString("des_img"));
//        listDes.add(des);
//      } catch (SQLException e) {
//        System.out.println("Converter:" + e.getMessage());
//        return null;
//      }
//      car.setListDescription(listDes);
//
//      try {
//        Spec spec = new Spec();
//        spec.setSpecId(rs.getInt("spec_id"));
//        spec.setSpecName(rs.getString("spec_name"));
//        spec.setSpecDetail(rs.getString("detail"));
//        listSpec.add(spec);
//      } catch (SQLException e) {
//        System.out.println("Converter:" + e.getMessage());
//        return null;
//      }
//      car.setListSpec(listSpec);
      return car;
    } catch (SQLException e) {
      System.out.println("Converter:" + e.getMessage());
      return null;
    }
  }

}
