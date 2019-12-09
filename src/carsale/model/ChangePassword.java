
package carsale.model;

import java.io.Serializable;

// TODO: Auto-generated Javadoc
/**
 * The Class ChangePassword.
 */
public class ChangePassword implements Serializable {

  /** The Constant serialVersionUID. */
  private static final long serialVersionUID = 1L;

  /** The user name. */
  private String userName;

  /** The old password. */
  private String oldPassword;

  /** The new password. */
  private String newPassword;

  /**
   * Instantiates a new change password.
   */
  public ChangePassword() {
    super();
  }

  /**
   * Instantiates a new change password.
   *
   * @param oldPassword
   *          the old password
   * @param newPassword
   *          the new password
   */
  public ChangePassword(String oldPassword, String newPassword) {
    super();
    this.oldPassword = oldPassword;
    this.newPassword = newPassword;
  }

  /**
   * Gets the old password.
   *
   * @return the oldPassword
   */
  public String getOldPassword() {
    return oldPassword;
  }

  /**
   * Sets the old password.
   *
   * @param oldPassword
   *          the oldPassword to set
   */
  public void setOldPassword(String oldPassword) {
    this.oldPassword = oldPassword;
  }

  /**
   * Gets the new password.
   *
   * @return the newPassword
   */
  public String getNewPassword() {
    return newPassword;
  }

  /**
   * Sets the new password.
   *
   * @param newPassword
   *          the newPassword to set
   */
  public void setNewPassword(String newPassword) {
    this.newPassword = newPassword;
  }

  /**
   * {@inheritDoc}
   * 
   * @see java.lang.Object#toString()
   */
  @Override
  public String toString() {
    return "ChangePassword [oldPassword=" + oldPassword + ", newPassword=" + newPassword + "]";
  }

}
