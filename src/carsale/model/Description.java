
package carsale.model;

import java.io.Serializable;

/**
 * The Class Description.
 */
public class Description implements Serializable {

  /** The Constant serialVersionUID. */
  private static final long serialVersionUID = 1L;

  /** The des id. */
  private int desId;

  /** The des content. */
  private String desContent;

  /** The des type. */
  private String desType;

  /** The image. */
  private String desImage;

  /** The car. */
  private Car car;

  /**
   * Instantiates a new description.
   */
  public Description() {
    super();
  }

  /**
   * @param desId
   * @param desContent
   * @param desType
   * @param desImage
   * @param car
   */
  public Description(int desId, String desContent, String desType, String desImage, Car car) {
    super();
    this.desId = desId;
    this.desContent = desContent;
    this.desType = desType;
    this.desImage = desImage;
    this.car = car;
  }

  /**
   * @return the desId
   */
  public int getDesId() {
    return desId;
  }

  /**
   * @param desId
   *          the desId to set
   */
  public void setDesId(int desId) {
    this.desId = desId;
  }

  /**
   * @return the desContent
   */
  public String getDesContent() {
    return desContent;
  }

  /**
   * @param desContent
   *          the desContent to set
   */
  public void setDesContent(String desContent) {
    this.desContent = desContent;
  }

  /**
   * @return the desType
   */
  public String getDesType() {
    return desType;
  }

  /**
   * @param desType
   *          the desType to set
   */
  public void setDesType(String desType) {
    this.desType = desType;
  }

  /**
   * @return the desImage
   */
  public String getDesImage() {
    return desImage;
  }

  /**
   * @param desImage
   *          the desImage to set
   */
  public void setDesImage(String desImage) {
    this.desImage = desImage;
  }

  /**
   * @return the car
   */
  public Car getCar() {
    return car;
  }

  /**
   * @param car
   *          the car to set
   */
  public void setCar(Car car) {
    this.car = car;
  }

  /**
   * {@inheritDoc}
   * 
   * @see java.lang.Object#toString()
   */
  @Override
  public String toString() {
    return "Description [desId=" + desId + ", desContent=" + desContent + ", desType="
        + desType + ", desImage=" + desImage + ", car=" + car + "]";
  }

}
