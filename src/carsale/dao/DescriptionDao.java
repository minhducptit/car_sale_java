
package carsale.dao;

import java.util.List;

import carsale.model.Description;

public interface DescriptionDao extends GennericDao<Description> {
  public List<Description> getDesByCarId(int carId);
}
