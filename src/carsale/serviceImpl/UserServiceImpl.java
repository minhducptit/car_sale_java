/*
 * (C) Copyright Global CyberSoft (GCS) 2019. All rights reserved. Proprietary and confidential.
 */
package carsale.serviceImpl;

import java.util.ArrayList;

import carsale.dao.UserDao;
import carsale.dao.impl.UserDaoImpl;
import carsale.model.User;
import carsale.service.UserService;

/**
 * @author <a href="mailto:developer@hitachiconsulting.com">minhduc97.ptit</a>
 *
 */
public class UserServiceImpl implements UserService {

  private UserDao userDao;
  
  
  /**
   * @param userDao
   */
  public UserServiceImpl() {
    userDao= new UserDaoImpl();
  }

  /**
   * {@inheritDoc}
   * @see carsale.service.UserService#getAllUser()
   */
  @Override
  public ArrayList<User> getAllUser() {
    // TODO Auto-generated method stub
    return null;
  }

  /**
   * {@inheritDoc}
   * @see carsale.service.UserService#login(java.lang.String, java.lang.String)
   */
  @Override
  public User login(String username, String password) {
    // TODO Auto-generated method stub
    return null;
  }

  /**
   * {@inheritDoc}
   * @see carsale.service.UserService#getUserById(int)
   */
  @Override
  public User getUserById(int userId) {
    // TODO Auto-generated method stub
    return null;
  }

  /**
   * {@inheritDoc}
   * @see carsale.service.UserService#insertUser(carsale.model.User)
   */
  @Override
  public int insertUser(User user) {
    // TODO Auto-generated method stub
    return 0;
  }

  /**
   * {@inheritDoc}
   * @see carsale.service.UserService#updateUser(carsale.model.User)
   */
  @Override
  public void updateUser(User user) {
    // TODO Auto-generated method stub
    
  }

  /**
   * {@inheritDoc}
   * @see carsale.service.UserService#deleteUser(int)
   */
  @Override
  public int deleteUser(int userId) {
    // TODO Auto-generated method stub
    return 0;
  }

  /**
   * {@inheritDoc}
   * @see carsale.service.UserService#isExits(java.lang.String, java.lang.String)
   */
  @Override
  public User isExits(String username, String password) { 
    return userDao.isExits(username, password);
  }

}
