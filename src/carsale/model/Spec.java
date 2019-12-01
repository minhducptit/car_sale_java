
package carsale.model;

import java.io.Serializable;

/**
 * The Class Spec.
 */
public class Spec implements Serializable {

  /** The Constant serialVersionUID. */
  private static final long serialVersionUID = 1L;

  /** The spec id. */
  private int specId;

  /** The spec name. */
  private String specName;

  /** The spec detail. */
  private String specDetail;

  /** The car. */
  private Car car;

  /**
   * Instantiates a new spec.
   */
  public Spec() {
    super();
  }

  /**
   * @param specId
   * @param specName
   * @param specDetail
   * @param car
   */
  public Spec(int specId, String specName, String specDetail, Car car) {
    super();
    this.specId = specId;
    this.specName = specName;
    this.specDetail = specDetail;
    this.car = car;
  }

  /**
   * @return the specId
   */
  public int getSpecId() {
    return specId;
  }

  /**
   * @param specId
   *          the specId to set
   */
  public void setSpecId(int specId) {
    this.specId = specId;
  }

  /**
   * @return the specName
   */
  public String getSpecName() {
    return specName;
  }

  /**
   * @param specName
   *          the specName to set
   */
  public void setSpecName(String specName) {
    this.specName = specName;
  }

  /**
   * @return the specDetail
   */
  public String getSpecDetail() {
    return specDetail;
  }

  /**
   * @param specDetail
   *          the specDetail to set
   */
  public void setSpecDetail(String specDetail) {
    this.specDetail = specDetail;
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
    return "Spec [specId=" + specId + ", specName=" + specName + ", specDetail=" + specDetail
        + ", car=" + car + "]";
  }

}
