
package carsale.dao;

import java.util.List;

import carsale.mapper.IRowMapper;

public interface GennericDao<T> {

  public List<T> query(String sql, IRowMapper<T> rowMapper, Object... parameters);

  public void update(String sql, Object... parameters);

  public Long insert(String sql, Object... parameters);

  public int count(String sql, Object... parameters);
}
