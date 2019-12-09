
package carsale.dao;

import carsale.model.User;


public interface UserDao extends GennericDao<User> {
  User isExits(String userName, String password);
  User getByUsername(String userName);
  Long insertUser(User user);
  void updateUser(User user);
  void changePassword(User user);
}
