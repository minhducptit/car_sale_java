
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

  /** The car type. */
  private String carType;

  /** The car price. */
  private Double carPrice;

  /** The list image. */
  private ArrayList<Image> listImage;

  /** The description. */
  private ArrayList<Description> listDescription;

  /** The list spec. */
  private ArrayList<Spec> listSpec;

  /**
   * Instantiates a new car.
   */
  public Car() {
    super();
  }

  /**
   * Instantiates a new car.
   *
   * @param carId
   *          the car id
   * @param carName
   *          the car name
   * @param carCategory
   *          the car category
   * @param carDes
   *          the car des
   * @param carType
   *          the car type
   * @param carPrice
   *          the car price
   * @param listImage
   *          the list image
   * @param listDescription
   *          the list description
   * @param listSpec
   *          the list spec
   */
  public Car(int carId, String carName, String carCategory, String carDes, String carType,
      Double carPrice, ArrayList<Image> listImage, ArrayList<Description> listDescription,
      ArrayList<Spec> listSpec) {
    super();
    this.carId = carId;
    this.carName = carName;
    this.carCategory = carCategory;
    this.carDes = carDes;
    this.carType = carType;
    this.carPrice = carPrice;
    this.listImage = listImage;
    this.listDescription = listDescription;
    this.listSpec = listSpec;
  }

  /**
   * Gets the car id.
   *
   * @return the carId
   */
  public int getCarId() {
    return carId;
  }

  /**
   * Sets the car id.
   *
   * @param carId
   *          the carId to set
   */
  public void setCarId(int carId) {
    this.carId = carId;
  }

  /**
   * Gets the car name.
   *
   * @return the carName
   */
  public String getCarName() {
    return carName;
  }

  /**
   * Sets the car name.
   *
   * @param carName
   *          the carName to set
   */
  public void setCarName(String carName) {
    this.carName = carName;
  }

  /**
   * Gets the car category.
   *
   * @return the carCategory
   */
  public String getCarCategory() {
    return carCategory;
  }

  /**
   * Sets the car category.
   *
   * @param carCategory
   *          the carCategory to set
   */
  public void setCarCategory(String carCategory) {
    this.carCategory = carCategory;
  }

  /**
   * Gets the car des.
   *
   * @return the carDes
   */
  public String getCarDes() {
    return carDes;
  }

  /**
   * Sets the car des.
   *
   * @param carDes
   *          the carDes to set
   */
  public void setCarDes(String carDes) {
    this.carDes = carDes;
  }

  /**
   * Gets the car type.
   *
   * @return the carType
   */
  public String getCarType() {
    return carType;
  }

  /**
   * Sets the car type.
   *
   * @param carType
   *          the carType to set
   */
  public void setCarType(String carType) {
    this.carType = carType;
  }

  /**
   * Gets the car price.
   *
   * @return the carPrice
   */
  public Double getCarPrice() {
    return carPrice;
  }

  /**
   * Sets the car price.
   *
   * @param carPrice
   *          the carPrice to set
   */
  public void setCarPrice(Double carPrice) {
    this.carPrice = carPrice;
  }

  /**
   * Gets the list image.
   *
   * @return the listImage
   */
  public ArrayList<Image> getListImage() {
    return listImage;
  }

  /**
   * Sets the list image.
   *
   * @param listImage
   *          the listImage to set
   */
  public void setListImage(ArrayList<Image> listImage) {
    this.listImage = listImage;
  }

  /**
   * Gets the list description.
   *
   * @return the listDescription
   */
  public ArrayList<Description> getListDescription() {
    return listDescription;
  }

  /**
   * Sets the list description.
   *
   * @param listDescription
   *          the listDescription to set
   */
  public void setListDescription(ArrayList<Description> listDescription) {
    this.listDescription = listDescription;
  }

  /**
   * Gets the list spec.
   *
   * @return the listSpec
   */
  public ArrayList<Spec> getListSpec() {
    return listSpec;
  }

  /**
   * Sets the list spec.
   *
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
        + ", carDes=" + carDes + ", carType=" + carType + ", carPrice=" + carPrice
        + ", listImage=" + listImage + ", listDescription=" + listDescription + ", listSpec="
        + listSpec + "]";
  }
}
