
package carsale.service.Impl;

import java.util.ArrayList;

import at.favre.lib.crypto.bcrypt.BCrypt;
import carsale.dao.UserDao;
import carsale.dao.impl.UserDaoImpl;
import carsale.model.Role;
import carsale.model.User;
import carsale.service.RoleService;
import carsale.service.UserService;

// TODO: Auto-generated Javadoc
/**
 * The Class UserServiceImpl.
 */
public class UserServiceImpl implements UserService {

  /** The user dao. */
  private UserDao userDao;

  /** The b crypt. */
  private BCrypt bCrypt;
  
  private RoleService roleService;

  /**
   * Instantiates a new user service impl.
   */
  public UserServiceImpl() {
    userDao = new UserDaoImpl();
    roleService= new RoleServiceImpl();
  }

  /**
   * {@inheritDoc}
   * 
   * @see carsale.service.UserService#getAllUser()
   */
  @Override
  public ArrayList<User> getAllUser() {
    // TODO Auto-generated method stub
    return null;
  }

  /**
   * {@inheritDoc}
   * 
   * @see carsale.service.UserService#login(java.lang.String, java.lang.String)
   */
  @Override
  public User login(String username, String password) {
    // TODO Auto-generated method stub
    return null;
  }

  /**
   * {@inheritDoc}
   * 
   * @see carsale.service.UserService#getUserById(int)
   */
  @Override
  public User getUserById(int userId) {
    // TODO Auto-generated method stub
    return null;
  }

  /**
   * {@inheritDoc}
   * 
   * @see carsale.service.UserService#insertUser(carsale.model.User)
   */
  @Override
  public Long insertUser(User user) {
    String passwordEncoding =
        BCrypt.withDefaults().hashToString(12, user.getPassword().toCharArray());
    user.setPassword(passwordEncoding);
    System.out.println("Password encodeing: " + user.toString());
    return userDao.insertUser(user);
  }

  /**
   * {@inheritDoc}
   * 
   * @see carsale.service.UserService#updateUser(carsale.model.User)
   */
  @Override
  public void updateUser(User user, int roleId) {
    Role role= roleService.getRoleById(roleId);
    user.setRole(role);
    userDao.updateUser(user);
  }

  /**
   * {@inheritDoc}
   * 
   * @see carsale.service.UserService#deleteUser(int)
   */
  @Override
  public int deleteUser(int userId) {
    // TODO Auto-generated method stub
    return 0;
  }

  /**
   * {@inheritDoc}
   * 
   * @see carsale.service.UserService#isExits(java.lang.String,
   *      java.lang.String)
   */
  @Override
  public User isExits(String username, String password) {
    return userDao.isExits(username, password);
  }

  /**
   * {@inheritDoc}
   * 
   * @see carsale.service.UserService#getByUsername(java.lang.String)
   */
  @Override
  public User getByUsername(String userName) {
    return userDao.getByUsername(userName);
  }

  /**
   * {@inheritDoc}
   * @see carsale.service.UserService#changePassword(carsale.model.User)
   */
  @Override
  public void changePassword(User user) {
   String passwordEncoding =
       BCrypt.withDefaults().hashToString(12, user.getPassword().toCharArray());
    user.setPassword(passwordEncoding);
    userDao.changePassword(user);
  }

}
