
package carsale.service.Impl;

import java.util.ArrayList;

import carsale.dao.CityFeeDao;
import carsale.dao.impl.CityFeeDaoImpl;
import carsale.model.CityFee;
import carsale.service.CityFeeService;

public class CityFeeServiceImpl implements CityFeeService {

  private CityFeeDao citiFeeDao;

  public CityFeeServiceImpl() {
    citiFeeDao = new CityFeeDaoImpl();
  }

  /**
   * {@inheritDoc}
   * 
   * @see carsale.service.CityFeeService#getAllCityFee()
   */
  @Override
  public ArrayList<CityFee> getAllCityFee() {
    return citiFeeDao.getAllCityFee();
  }

  /**
   * {@inheritDoc}
   * 
   * @see carsale.service.CityFeeService#getCityFeeByCityName(java.lang.String)
   */
  @Override
  public CityFee getCityFeeByCityName(String cityName) {
    // TODO Auto-generated method stub
    return null;
  }

  /**
   * {@inheritDoc}
   * 
   * @see carsale.service.CityFeeService#updateCityFee(carsale.model.CityFee)
   */
  @Override
  public void updateCityFee(CityFee cityFee) {
    // TODO Auto-generated method stub

  }

  /**
   * {@inheritDoc}
   * 
   * @see carsale.service.CityFeeService#deleteCityFree(int)
   */
  @Override
  public int deleteCityFree(int cityFeeId) {
    // TODO Auto-generated method stub
    return 0;
  }

  /**
   * {@inheritDoc}
   * 
   * @see carsale.service.CityFeeService#insertCityFee(carsale.model.CityFee)
   */
  @Override
  public int insertCityFee(CityFee cityFee) {
    // TODO Auto-generated method stub
    return 0;
  }

}
