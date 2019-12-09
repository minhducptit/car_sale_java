
package carsale.dao.impl;

import java.util.List;

import carsale.dao.UserDao;
import carsale.mapper.UserMapper;
import carsale.model.User;

public class UserDaoImpl extends AbstractDao<User> implements UserDao {

  @Override
  public User isExits(String userName, String password) {
    StringBuilder sql = new StringBuilder("SELECT * FROM user AS u ");
    sql.append(" INNER JOIN role AS r ON u.role= r.id");
    sql.append(" WHERE username=? AND pass=?");
    List<User> list = this.query(sql.toString(), new UserMapper(), userName, password);
    if (list.size() == 0) {
      return null;
    } else {
      return list.get(0);
    }
  }

  /**
   * {@inheritDoc}
   * 
   * @see carsale.dao.UserDao#login(java.lang.String)
   */
  @Override
  public User getByUsername(String userName) {
    StringBuilder sql = new StringBuilder("SELECT * FROM user AS u ");
    sql.append(" INNER JOIN role AS r ON u.role= r.id");
    sql.append(" WHERE username=?");
    List<User> list = this.query(sql.toString(), new UserMapper(), userName);
    if (list.size() == 0) {
      return null;
    } else {
      return list.get(0);
    }
  }

  /**
   * {@inheritDoc}
   * 
   * @see carsale.dao.UserDao#insertUser(carsale.model.User)
   */
  @Override
  public Long insertUser(User user) {
    StringBuilder sql = new StringBuilder(
        "INSERT INTO user(username,pass, full_name, age,address,phone,email,role)");
    sql.append(" VALUES(?,?,?,?,?,?,?,?)");
    Long result = insert(sql.toString(), user.getUserName(), user.getPassword(),
        user.getFullName(), user.getAge(), user.getAddress(), user.getPhone(), user.getEmail(),
        user.getRole().getRoleId());
    return result;
  }

  /**
   * {@inheritDoc}
   * 
   * @see carsale.dao.UserDao#updateUser(carsale.model.User)
   */
  @Override
  public void updateUser(User user) {
    StringBuilder sql = new StringBuilder("Update user AS u ");
    sql.append(
        " SET u.full_name=?, u.age=?,u.phone=?, u.email=?, u.address=?, u.username=?, u.role=?");
    sql.append(" WHERE u.user_id=?");
    update(sql.toString(), user.getFullName(), user.getAge(), user.getPhone(), user.getEmail(),
        user.getAddress(), user.getUserName(), user.getUserId());
  }

  /**
   * {@inheritDoc}
   * 
   * @see carsale.dao.UserDao#changePassword(carsale.model.User)
   */
  @Override
  public void changePassword(User user) {
    StringBuilder sql = new StringBuilder("Update user AS u ");
    sql.append(" SET u.pass=?");
    sql.append(" WHERE u.user_id=?");
    update(sql.toString(), user.getPassword(), user.getUserId());
  }

}
