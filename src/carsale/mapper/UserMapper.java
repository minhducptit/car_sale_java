
package carsale.mapper;

import java.sql.ResultSet;
import java.sql.SQLException;

import carsale.model.Role;
import carsale.model.User;

public class UserMapper implements IRowMapper<User> {

  @Override
  public User mapRow(ResultSet rs) {
    try {
      User user = new User();
      user.setUserId(rs.getInt("user_id"));
      user.setFullName(rs.getString("full_name"));
      user.setAge(rs.getInt("age"));
      user.setPhone(rs.getString("phone"));
      user.setEmail(rs.getString("email"));
      user.setAddress(rs.getString("address"));
      user.setUserName(rs.getString("username"));
      user.setPassword(rs.getString("pass"));
      try {
        Role role = new Role();
        role.setRoleName(rs.getString("name"));
        role.setRoleCode(rs.getString("code"));
        user.setRole(role);
      } catch (SQLException e) {
        System.out.println("Converter:" + e.getMessage());
        return null;
      }
      return user;
    } catch (SQLException e) {
      System.out.println("Converter:" + e.getMessage());
      return null;
    }

  }

}
