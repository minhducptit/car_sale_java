
package carsale.dao;

import java.util.ArrayList;

import carsale.model.CityFee;

public interface CityFeeDao extends GennericDao<CityFee> {
  public ArrayList<CityFee> getAllCityFee();
}
