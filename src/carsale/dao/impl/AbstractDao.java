
package carsale.dao.impl;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;
import java.sql.Timestamp;
import java.util.ArrayList;
import java.util.List;

import carsale.dao.GennericDao;
import carsale.mapper.IRowMapper;

/**
 * @author <a href="mailto:developer@hitachiconsulting.com">minhduc97.ptit</a>
 */
public class AbstractDao<T> implements GennericDao<T> {

  public Connection getConnection() {
    String dbUrl = "jdbc:mariadb://localhost:3307/carsalel";
    String dbClass = "org.mariadb.jdbc.Driver";
    try {
      Class.forName(dbClass);
      System.out.println("Connect succes.");
      return DriverManager.getConnection(dbUrl, "root", "minhduc97");

    } catch (ClassNotFoundException | SQLException e) {
      System.out.println(e.getMessage());
      return null;
    }
  }

  @Override
  public List<T> query(String sql, IRowMapper<T> rowMapper,Object...  parameters) {
    Connection connection = null;
    PreparedStatement statement = null;
    ResultSet resultSet = null;
    List<T> list = new ArrayList<>();
    try {
      connection = getConnection();
      statement = connection.prepareStatement(sql);
      setParameter(statement, parameters);
      resultSet = statement.executeQuery();
      while (resultSet.next()) {
        T t = rowMapper.mapRow(resultSet);
        list.add(t);
      }
      return list;
    } catch (SQLException e) {
      System.out.println(e.getMessage());
      return null;
    } finally {
      try {
        if (connection != null) {
          connection.close();
        }
        if (statement != null) {
          statement.close();
        }
        if (resultSet != null) {
          resultSet.close();
        }
      } catch (SQLException e) {
        return null;
      }
    }
  }

  private void setParameter(PreparedStatement statement, Object... parameters) { 
    try {
      for (int i = 0; i < parameters.length; i++) {
        int index = i + 1;
        Object element = parameters[i];
        if (element instanceof Long) {
          statement.setLong(index, (Long) element);
        } else if (element instanceof String) {
          statement.setString(index, (String) element);
        } else if (element instanceof Integer) {
          statement.setInt(index, (Integer) element);
        } else if (element instanceof Timestamp) {
          statement.setTimestamp(index, (Timestamp) element);
        }
      }
    } catch (SQLException e) {
      return;
    }
  }

  /**
   * {@inheritDoc}
   * 
   * @see carsale.dao.GennericDao#update(java.lang.String, java.lang.Object[])
   */
  @Override
  public void update(String sql, Object... parameters) {
    Connection connection = null;
    PreparedStatement statement = null;
    try {
      connection = getConnection();
      connection.setAutoCommit(false);
      statement = connection.prepareStatement(sql);
      setParameter(statement, parameters);
      statement.executeUpdate();
      connection.commit();
    } catch (SQLException e) {
      if (connection != null) {
        try {
          connection.rollback();
        } catch (SQLException e1) {
          // TODO Auto-generated catch block
          e1.printStackTrace();
        }
      }
    } finally {
      try {
        if (connection != null) {
          connection.close();
        }
        if (statement != null) {
          statement.close();
        }
      } catch (SQLException e) {
        // TODO Auto-generated catch block
        e.printStackTrace();
      }
    }
  }

  /**
   * {@inheritDoc}
   * 
   * @see carsale.dao.GennericDao#insert(java.lang.String, java.lang.Object[])
   */
  @Override
  public Long insert(String sql, Object... parameters) {
    Long id = null;
    Connection connection = null;
    PreparedStatement statement = null;
    ResultSet resultSet = null;
    try {
      connection = getConnection();
      connection.setAutoCommit(false);
      statement = connection.prepareStatement(sql, Statement.RETURN_GENERATED_KEYS); // chu
      setParameter(statement, parameters);
      statement.executeUpdate();
      resultSet = statement.getGeneratedKeys();
      if (resultSet.next())
        id = resultSet.getLong(1);
      connection.commit();
      return id;
    } catch (SQLException e) {
      if (connection != null) {
        try {
          connection.rollback();
        } catch (SQLException e1) {
          // TODO Auto-generated catch block
          e1.printStackTrace();
        }
      }
      return null;
    } finally {
      try {
        if (connection != null) {
          connection.close();
        }
        if (statement != null) {
          statement.close();
        }
        if (resultSet != null)
          resultSet.close();
      } catch (SQLException e) {
        // TODO Auto-generated catch block
        e.printStackTrace();
      }
    }
  }

  /**
   * {@inheritDoc}
   * 
   * @see carsale.dao.GennericDao#count(java.lang.String, java.lang.Object[])
   */
  @Override
  public int count(String sql, Object... parameters) {
    // TODO Auto-generated method stub
    return 0;
  }

}
