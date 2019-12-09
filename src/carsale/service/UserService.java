
package carsale.service;

import java.util.ArrayList;

import javax.servlet.http.HttpServletRequest;

import carsale.model.ChangePassword;
import carsale.model.User;

/**
 * The Interface UserService.
 */
public interface UserService {

  /**
   * Gets the all user.
   *
   * @return the all user
   */
  public ArrayList<User> getAllUser();

  /**
   * Login.
   *
   * @param username
   *          the username
   * @param password
   *          the password
   * @return the user
   */
  public User login(String username, String password);

  /**
   * Gets the user by id.
   *
   * @param userId
   *          the user id
   * @return the user by id
   */
  public User getUserById(int userId);

  /**
   * Insert user.
   *
   * @param user
   *          the user
   * @return the int
   */
  public Long insertUser(User user);

  /**
   * Update user.
   *
   * @param user
   *          the user
   */
  public void updateUser(User user);

  /**
   * Delete user.
   *
   * @param userId
   *          the user id
   * @return the int
   */
  public int deleteUser(int userId);

  /**
   * Checks if is exits.
   *
   * @param username
   *          the username
   * @param password
   *          the password
   * @return the user
   */
  User isExits(String username, String password);

  User getByUsername(String username);
  
  int changePassword(HttpServletRequest request,ChangePassword changePassword);
}
