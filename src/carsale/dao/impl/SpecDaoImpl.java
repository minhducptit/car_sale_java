
package carsale.dao.impl;

import java.util.List;

import carsale.dao.SpecDao;
import carsale.mapper.SpecMapper;
import carsale.model.Spec;

public class SpecDaoImpl extends AbstractDao<Spec> implements SpecDao {

  /**
   * {@inheritDoc}
   * 
   * @see carsale.dao.SpecDao#getSpecByCarId(int)
   */
  @Override
  public List<Spec> getSpecByCarId(int carId) {
    StringBuilder sql = new StringBuilder("SELECT * FROM spec AS s ");
    sql.append("INNER JOIN car AS c ON s.car_id= c.car_id ");
    sql.append("Where c.car_id= ? ");
    List<Spec> list = query(sql.toString(), new SpecMapper(), carId);
    if (list.size() == 0) {
      return null;
    } else {
      return list;
    }
  }

}
