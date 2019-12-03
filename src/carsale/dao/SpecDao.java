
package carsale.dao;

import java.util.List;

import carsale.model.Spec;

public interface SpecDao extends GennericDao<Spec> {
  public List<Spec> getSpecByCarId(int carId);
}
