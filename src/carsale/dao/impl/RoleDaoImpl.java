
package carsale.dao.impl;

import java.util.List;

import carsale.dao.RoleDao;
import carsale.mapper.RoleMapper;
import carsale.model.Role;

public class RoleDaoImpl extends AbstractDao<Role> implements RoleDao {

  /**
   * {@inheritDoc}
   * 
   * @see carsale.dao.RoleDao#getRoleById(int)
   */
  @Override
  public Role getRoleById(int roleId) {
    StringBuilder sql = new StringBuilder("SELECT * FROM role AS r");
    sql.append(" Where r.id=?");
    List<Role> list = query(sql.toString(), new RoleMapper(), roleId);
    if (list.size() == 0) {
      return null;
    } else {
      return list.get(0);
    }
  }

}
