
package carsale.model;

import java.io.Serializable;

// TODO: Auto-generated Javadoc
/**
 * The Class User.
 */
public class User implements Serializable {

  /** The Constant serialVersionUID. */
  private static final long serialVersionUID = 1L;

  /** The user id. */
  private int userId;

  /** The full name. */
  private String fullName;

  /** The age. */
  private int age;

  /** The phone. */
  private String phone;

  /** The email. */
  private String email;

  /** The address. */
  private String address;

  /** The role. */
  private Role role;

  /** The user name. */
  private String userName;

  /** The password. */
  private String password;

  /**
   * Instantiates a new user.
   */
  public User() {
    super();
  }

  /**
   * Instantiates a new user.
   *
   * @param userId
   *          the user id
   * @param fullName
   *          the full name
   * @param age
   *          the age
   * @param phone
   *          the phone
   * @param email
   *          the email
   * @param address
   *          the address
   * @param role
   *          the role
   * @param userName
   *          the user name
   * @param password
   *          the password
   */
  public User(int userId, String fullName, int age, String phone, String email, String address,
      Role role, String userName, String password) {
    super();
    this.userId = userId;
    this.fullName = fullName;
    this.age = age;
    this.phone = phone;
    this.email = email;
    this.address = address;
    this.role = role;
    this.userName = userName;
    this.password = password;
  }

  /**
   * Gets the user id.
   *
   * @return the userId
   */
  public int getUserId() {
    return userId;
  }

  /**
   * Sets the user id.
   *
   * @param userId
   *          the userId to set
   */
  public void setUserId(int userId) {
    this.userId = userId;
  }

  /**
   * Gets the full name.
   *
   * @return the fullName
   */
  public String getFullName() {
    return fullName;
  }

  /**
   * Sets the full name.
   *
   * @param fullName
   *          the fullName to set
   */
  public void setFullName(String fullName) {
    this.fullName = fullName;
  }

  /**
   * Gets the age.
   *
   * @return the age
   */
  public int getAge() {
    return age;
  }

  /**
   * Sets the age.
   *
   * @param age
   *          the age to set
   */
  public void setAge(int age) {
    this.age = age;
  }

  /**
   * Gets the phone.
   *
   * @return the phone
   */
  public String getPhone() {
    return phone;
  }

  /**
   * Sets the phone.
   *
   * @param phone
   *          the phone to set
   */
  public void setPhone(String phone) {
    this.phone = phone;
  }

  /**
   * Gets the email.
   *
   * @return the email
   */
  public String getEmail() {
    return email;
  }

  /**
   * Sets the email.
   *
   * @param email
   *          the email to set
   */
  public void setEmail(String email) {
    this.email = email;
  }

  /**
   * Gets the address.
   *
   * @return the address
   */
  public String getAddress() {
    return address;
  }

  /**
   * Sets the address.
   *
   * @param address
   *          the address to set
   */
  public void setAddress(String address) {
    this.address = address;
  }

  /**
   * Gets the role.
   *
   * @return the role
   */
  public Role getRole() {
    return role;
  }

  /**
   * Sets the role.
   *
   * @param role
   *          the role to set
   */
  public void setRole(Role role) {
    this.role = role;
  }

  /**
   * Gets the user name.
   *
   * @return the userName
   */
  public String getUserName() {
    return userName;
  }

  /**
   * Sets the user name.
   *
   * @param userName
   *          the userName to set
   */
  public void setUserName(String userName) {
    this.userName = userName;
  }

  /**
   * Gets the password.
   *
   * @return the password
   */
  public String getPassword() {
    return password;
  }

  /**
   * Sets the password.
   *
   * @param password
   *          the password to set
   */
  public void setPassword(String password) {
    this.password = password;
  }

  /**
   * {@inheritDoc}
   * 
   * @see java.lang.Object#toString()
   */
  @Override
  public String toString() {
    return "User [userId=" + userId + ", fullName=" + fullName + ", age=" + age + ", phone="
        + phone + ", email=" + email + ", address=" + address + ", role=" + role
        + ", userName=" + userName + ", password=" + password + "]";
  }

}
