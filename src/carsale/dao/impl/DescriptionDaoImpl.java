
package carsale.dao.impl;

import java.util.List;

import carsale.dao.DescriptionDao;
import carsale.mapper.DescriptionMapper;
import carsale.model.Description;

public class DescriptionDaoImpl extends AbstractDao<Description> implements DescriptionDao {

  /**
   * {@inheritDoc}
   * 
   * @see carsale.dao.DescriptionDao#getDesByCarId(int)
   */
  @Override
  public List<Description> getDesByCarId(int carId) {
    StringBuilder sql = new StringBuilder("SELECT * FROM description AS d ");
    sql.append("INNER JOIN car AS c ON d.car_id= c.car_id ");
    sql.append("Where c.car_id= ? ");
    List<Description> list = query(sql.toString(), new DescriptionMapper(), carId);
    if (list.size() == 0) {
      return null;
    } else {
      return list;
    }
  }

}
