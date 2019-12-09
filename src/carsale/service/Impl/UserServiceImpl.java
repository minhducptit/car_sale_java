
package carsale.service.Impl;

import java.util.ArrayList;

import javax.servlet.http.HttpServletRequest;

import at.favre.lib.crypto.bcrypt.BCrypt;
import carsale.dao.UserDao;
import carsale.dao.impl.UserDaoImpl;
import carsale.model.ChangePassword;
import carsale.model.Role;
import carsale.model.User;
import carsale.service.RoleService;
import carsale.service.UserService;
import carsale.untils.SessionUtil;

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
    roleService = new RoleServiceImpl();
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
  public void updateUser(User user) {
    // Role role= roleService.getRoleById(roleId);
    // user.setRole(role);
    System.out.println("User Service Impl" + user.toString());
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
   * 
   * @see carsale.service.UserService#changePassword(carsale.model.User)
   */
  @Override
  public int changePassword(HttpServletRequest request, ChangePassword changePassword) {
    User user = (User) SessionUtil.getInstance().getValue(request, "USER");
    User oldUser = userDao.getByUsername(user.getUserName());
    BCrypt.Result result = BCrypt.verifyer()
        .verify(changePassword.getOldPassword().toCharArray(), oldUser.getPassword());
    if (!result.verified) {
      return 0;
    } else {
      String passwordEncoding = BCrypt.withDefaults().hashToString(12,
          changePassword.getNewPassword().toCharArray());
      System.out.println("Pass encoding"+passwordEncoding);
      oldUser.setPassword(passwordEncoding);
      userDao.changePassword(oldUser);
      return 1;
    }

  }

}
