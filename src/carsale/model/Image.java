
package carsale.model;

import java.io.Serializable;

/**
 * The Class Image.
 */
public class Image implements Serializable {

  /** The Constant serialVersionUID. */
  private static final long serialVersionUID = 1L;

  /** The image id. */
  private int imageId;

  /** The image url. */
  private String imageUrl;

  /** The image type. */
  private String imageType;

  private Car car;

  /**
   * Instantiates a new image.
   */
  public Image() {
    super();
  }

  /**
   * @param imageId
   * @param imageUrl
   * @param imageType
   * @param car
   */
  public Image(int imageId, String imageUrl, String imageType, Car car) {
    super();
    this.imageId = imageId;
    this.imageUrl = imageUrl;
    this.imageType = imageType;
    this.car = car;
  }

  /**
   * @return the imageId
   */
  public int getImageId() {
    return imageId;
  }

  /**
   * @param imageId
   *          the imageId to set
   */
  public void setImageId(int imageId) {
    this.imageId = imageId;
  }

  /**
   * @return the imageUrl
   */
  public String getImageUrl() {
    return imageUrl;
  }

  /**
   * @param imageUrl
   *          the imageUrl to set
   */
  public void setImageUrl(String imageUrl) {
    this.imageUrl = imageUrl;
  }

  /**
   * @return the imageType
   */
  public String getImageType() {
    return imageType;
  }

  /**
   * @param imageType
   *          the imageType to set
   */
  public void setImageType(String imageType) {
    this.imageType = imageType;
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
    return "Image [imageId=" + imageId + ", imageUrl=" + imageUrl + ", imageType=" + imageType
        + ", car=" + car + "]";
  }

}
