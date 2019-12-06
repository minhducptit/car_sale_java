
package carsale.dao.impl;

import java.util.ArrayList;
import java.util.List;

import carsale.dao.CityFeeDao;
import carsale.mapper.CityFeeMapper;
import carsale.model.CityFee;

public class CityFeeDaoImpl extends AbstractDao<CityFee> implements CityFeeDao {

  /**
   * {@inheritDoc}
   * 
   * @see carsale.dao.CityFeeDao#getAllCityFee()
   */
  @Override
  public ArrayList<CityFee> getAllCityFee() {
    StringBuilder sql = new StringBuilder("SELECT * FROM city_fee ");
    List<CityFee> list = this.query(sql.toString(), new CityFeeMapper());
    if (list.size() == 0) {
      return null;
    } else {
      return (ArrayList<CityFee>) list;
    }
  }

}
