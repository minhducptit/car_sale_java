
package carsale.mapper;

import java.sql.ResultSet;
import java.sql.SQLException;

import carsale.model.Image;

public class ImageSlideMapper implements IRowMapper<Image> {

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
      return image;
    } catch (SQLException e) {
      System.out.println("Converter Image:" + e.getMessage());
      return null;
    }
  }

}
