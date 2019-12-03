
package carsale.dao.impl;

import java.util.List;

import carsale.dao.ImageDao;
import carsale.mapper.ImageMapper;
import carsale.model.Image;

public class ImageDaoImpl extends AbstractDao<Image> implements ImageDao {

  /**
   * {@inheritDoc}
   * 
   * @see carsale.dao.ImageDao#getImageByCarId(int)
   */
  @Override
  public List<Image> getImageByCarId(int carId) {
    StringBuilder sql = new StringBuilder("SELECT * FROM image AS i ");
    sql.append("INNER JOIN car AS c ON i.car_id= c.car_id ");
    sql.append("Where c.car_id= ? ");
    List<Image> list = query(sql.toString(), new ImageMapper(), carId);
    if (list.size() == 0) {
      return null;
    } else {
      return list;
    }

  }

}
