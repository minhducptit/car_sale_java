
package carsale.dao.impl;

import java.util.ArrayList;
import java.util.List;

import carsale.dao.CarDao;
import carsale.dao.DescriptionDao;
import carsale.dao.ImageDao;
import carsale.dao.SpecDao;
import carsale.mapper.CarMapper;
import carsale.mapper.ListPriceCarMapper;
import carsale.model.Car;
import carsale.model.Description;
import carsale.model.Image;
import carsale.model.Spec;

public class CarDaoImpl extends AbstractDao<Car> implements CarDao {

  private ImageDao imageDao;
  private SpecDao specdao;
  private DescriptionDao desDao;

  public CarDaoImpl() {
    imageDao = new ImageDaoImpl();
    specdao = new SpecDaoImpl();
    desDao = new DescriptionDaoImpl();
  }

  /**
   * {@inheritDoc}
   * 
   * @see carsale.dao.CarDao#getAllCar()
   */
  @Override
  public List<Car> getAllCar() {
    StringBuilder sql = new StringBuilder("SELECT * FROM car AS c ");
    sql.append("INNER JOIN image AS i ");
    sql.append("ON c.car_id = i.car_id ");
    sql.append("WHERE i.type_image= 'avatar-car' ");
    List<Car> list = this.query(sql.toString(), new CarMapper());
    if (list.size() == 0) {
      return null;
    } else {
      return list;
    }
  }

  /**
   * {@inheritDoc}
   * 
   * @see carsale.dao.CarDao#getCarById(int)
   */
  @Override
  public Car getCarById(int carId) {
    StringBuilder sqlCar = new StringBuilder("SELECT * FROM car AS c WHERE c.car_id=?");
    List<Car> list = this.query(sqlCar.toString(), new CarMapper(), carId);
    if (list.size() == 0) {
      return null;
    } else {
      ArrayList<Image> listImg = (ArrayList<Image>) imageDao.getImageByCarId(carId);
      System.out.println("Size list Img:"+ listImg.size());
      ArrayList<Spec> listSpec = (ArrayList<Spec>) specdao.getSpecByCarId(carId);
      System.out.println("Size list Spec:"+ listSpec.size());
      ArrayList<Description> listDes = (ArrayList<Description>) desDao.getDesByCarId(carId);
      System.out.println("Size list Des:"+ listDes.size());
      list.get(0).setListDescription(listDes);
      list.get(0).setListImage(listImg);
      list.get(0).setListSpec(listSpec);
      return list.get(0);
    }
  }

  /**
   * {@inheritDoc}
   * 
   * @see carsale.dao.CarDao#insertCar(carsale.model.Car)
   */
  @Override
  public Long insertCar(Car car) {
    // TODO Auto-generated method stub
    return null;
  }

  /**
   * {@inheritDoc}
   * 
   * @see carsale.dao.CarDao#updatecar(carsale.model.Car)
   */
  @Override
  public Long updatecar(Car car) {
    // TODO Auto-generated method stub
    return null;
  }

  /**
   * {@inheritDoc}
   * 
   * @see carsale.dao.CarDao#deleteCar(carsale.model.Car)
   */
  @Override
  public Long deleteCar(Car car) {
    // TODO Auto-generated method stub
    return null;
  }

  /**
   * {@inheritDoc}
   * 
   * @see carsale.dao.CarDao#getListCarPrice()
   */
  @Override
  public List<Car> getListCarPrice() {
    StringBuilder sql = new StringBuilder("SELECT * FROM car");
    List<Car> list = query(sql.toString(), new ListPriceCarMapper());
    if (list.size() == 0) {
      return null;
    } else {
      return list;
    }
  }

}
