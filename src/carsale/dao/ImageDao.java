
package carsale.dao;

import java.util.List;

import carsale.model.Image;

public interface ImageDao extends GennericDao<Image> {
  public List<Image> getImageByCarId(int carId);
  public List<Image> getImageSlide();
}
