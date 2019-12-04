
package carsale.service.Impl;

import java.util.ArrayList;

import carsale.dao.ImageDao;
import carsale.dao.impl.ImageDaoImpl;
import carsale.model.Image;
import carsale.service.ImageService;

public class ImageServiceImpl implements ImageService {

  public ImageDao imageDao;

  public ImageServiceImpl() {
    imageDao = new ImageDaoImpl();
  }

  /**
   * {@inheritDoc}
   * 
   * @see carsale.service.ImageService#getImageSlide()
   */
  @Override
  public ArrayList<Image> getImageSlide() {
    return (ArrayList<Image>) imageDao.getImageSlide();
  }

}
