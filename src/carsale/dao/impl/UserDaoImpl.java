/*
 * (C) Copyright Global CyberSoft (GCS) 2019. All rights reserved. Proprietary and confidential.
 */
package carsale.dao.impl;

import java.util.List;

import carsale.dao.UserDao;
import carsale.mapper.UserMapper;
import carsale.model.User;


public class UserDaoImpl extends AbstractDao<User> implements UserDao{


  @Override
  public User isExits(String userName, String password) {
    StringBuilder sql=new StringBuilder("SELECT * FROM user AS u ");
    sql.append(" INNER JOIN role AS r ON u.role= r.id");
    sql.append(" WHERE username=? AND pass=?");
    List<User> list= this.query(sql.toString(), new UserMapper(), userName, password);
    if(list.size()==0) {
      return null;
    }else {
      return list.get(0);  
    }
  }
  
  public static void main(String[] args) {
    UserDao dao= new UserDaoImpl();
    System.out.println(dao.isExits("admin", "admin"));
  }

}
