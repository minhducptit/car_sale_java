
package carsale.dao.impl;

import java.util.ArrayList;
import java.util.List;

import carsale.dao.PostDao;
import carsale.mapper.PostMapper;
import carsale.model.Post;

public class PostDaoImpl extends AbstractDao<Post> implements PostDao {

  /**
   * {@inheritDoc}
   * 
   * @see carsale.dao.PostDao#getAllNews()
   */
  @Override
  public ArrayList<Post> getAllNews() {
    StringBuilder sql = new StringBuilder("select * FROM post AS p ");
    sql.append("INNER JOIN user AS u ON p.user_id= u.user_id ");
    sql.append("where p.type_post='tin tức'");
    List<Post> list = query(sql.toString(), new PostMapper());
    if (list.size() == 0) {
      return null;
    } else {
      return (ArrayList<Post>) list;
    }
  }

  /**
   * {@inheritDoc}
   * 
   * @see carsale.dao.PostDao#getAllService()
   */
  @Override
  public ArrayList<Post> getAllService() {
    StringBuilder sql = new StringBuilder("select * FROM post AS p ");
    sql.append("INNER JOIN user AS u ON p.user_id= u.user_id ");
    sql.append("where p.type_post='dịch vụ'");
    List<Post> list = query(sql.toString(), new PostMapper());
    if (list.size() == 0) {
      return null;
    } else {
      return (ArrayList<Post>) list;
    }
  }

  /**
   * {@inheritDoc}
   * 
   * @see carsale.dao.PostDao#getNewById(int)
   */
  @Override
  public Post getNewById(int newsId) {
    StringBuilder sql = new StringBuilder("select * FROM post AS p ");
    sql.append("INNER JOIN user AS u ON p.user_id= u.user_id ");
    sql.append("where p.type_post='tin tức'  AND p.post_id=?");
    List<Post> list = query(sql.toString(), new PostMapper(), newsId);
    if (list.size() == 0) {
      return null;
    } else {
      return list.get(0);
    }
  }

  /**
   * {@inheritDoc}
   * 
   * @see carsale.dao.PostDao#getServiceById(int)
   */
  @Override
  public Post getServiceById(int serviceId) {
    StringBuilder sql = new StringBuilder("select * FROM post AS p ");
    sql.append("INNER JOIN user AS u ON p.user_id= u.user_id ");
    sql.append("where p.type_post='dịch vụ'  AND p.post_id=?");
    List<Post> list = query(sql.toString(), new PostMapper(), serviceId);
    if (list.size() == 0) {
      return null;
    } else {
      return list.get(0);
    }
  }

}
