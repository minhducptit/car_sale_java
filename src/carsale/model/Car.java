
package carsale.model;

import java.io.Serializable;
import java.util.ArrayList;

// TODO: Auto-generated Javadoc
/**
 * The Class Car.
 */
public class Car implements Serializable {

  /** The Constant serialVersionUID. */
  private static final long serialVersionUID = 1L;

  /** The car id. */
  private int carId;

  /** The car name. */
  private String carName;

  /** The car category. */
  private String carCategory;

  /** The car des. */
  private String carDes;

  private Double carPrice;

  /** The list image. */
  private ArrayList<Image> listImage;

  /** The description. */
  private ArrayList<Description> listDescription;

  private ArrayList<Spec> listSpec;

  /**
   * Instantiates a new car.
   */
  public Car() {
    super();
  }

  /**
   * @param carId
   * @param carName
   * @param carCategory
   * @param carDes
   * @param carPrice
   * @param listImage
   * @param listDescription
   * @param listSpec
   */
  public Car(int carId, String carName, String carCategory, String carDes, Double carPrice,
      ArrayList<Image> listImage, ArrayList<Description> listDescription,
      ArrayList<Spec> listSpec) {
    super();
    this.carId = carId;
    this.carName = carName;
    this.carCategory = carCategory;
    this.carDes = carDes;
    this.carPrice = carPrice;
    this.listImage = listImage;
    this.listDescription = listDescription;
    this.listSpec = listSpec;
  }

  /**
   * @param carId
   * @param carName
   * @param carCategory
   * @param carDes
   * @param carPrice
   */
  public Car(int carId, String carName, String carCategory, String carDes, Double carPrice) {
    super();
    this.carId = carId;
    this.carName = carName;
    this.carCategory = carCategory;
    this.carDes = carDes;
    this.carPrice = carPrice;
  }

  /**
   * @return the carId
   */
  public int getCarId() {
    return carId;
  }

  /**
   * @param carId
   *          the carId to set
   */
  public void setCarId(int carId) {
    this.carId = carId;
  }

  /**
   * @return the carName
   */
  public String getCarName() {
    return carName;
  }

  /**
   * @param carName
   *          the carName to set
   */
  public void setCarName(String carName) {
    this.carName = carName;
  }

  /**
   * @return the carCategory
   */
  public String getCarCategory() {
    return carCategory;
  }

  /**
   * @param carCategory
   *          the carCategory to set
   */
  public void setCarCategory(String carCategory) {
    this.carCategory = carCategory;
  }

  /**
   * @return the carDes
   */
  public String getCarDes() {
    return carDes;
  }

  /**
   * @param carDes
   *          the carDes to set
   */
  public void setCarDes(String carDes) {
    this.carDes = carDes;
  }

  /**
   * @return the carPrice
   */
  public Double getCarPrice() {
    return carPrice;
  }

  /**
   * @param carPrice
   *          the carPrice to set
   */
  public void setCarPrice(Double carPrice) {
    this.carPrice = carPrice;
  }

  /**
   * @return the listImage
   */
  public ArrayList<Image> getListImage() {
    return listImage;
  }

  /**
   * @param listImage
   *          the listImage to set
   */
  public void setListImage(ArrayList<Image> listImage) {
    this.listImage = listImage;
  }

  /**
   * @return the listDescription
   */
  public ArrayList<Description> getListDescription() {
    return listDescription;
  }

  /**
   * @param listDescription
   *          the listDescription to set
   */
  public void setListDescription(ArrayList<Description> listDescription) {
    this.listDescription = listDescription;
  }

  /**
   * @return the listSpec
   */
  public ArrayList<Spec> getListSpec() {
    return listSpec;
  }

  /**
   * @param listSpec
   *          the listSpec to set
   */
  public void setListSpec(ArrayList<Spec> listSpec) {
    this.listSpec = listSpec;
  }

  /**
   * {@inheritDoc}
   * 
   * @see java.lang.Object#toString()
   */
  @Override
  public String toString() {
    return "Car [carId=" + carId + ", carName=" + carName + ", carCategory=" + carCategory
        + ", carDes=" + carDes + ", carPrice=" + carPrice + ", listImage=" + listImage
        + ", listDescription=" + listDescription + ", listSpec=" + listSpec + "]";
  }

}
