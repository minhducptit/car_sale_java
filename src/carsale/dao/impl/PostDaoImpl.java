
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

  /**
   * {@inheritDoc}
   * 
   * @see carsale.dao.PostDao#deleteNews(int)
   */
  @Override
  public Long deleteNews(int newId) {
    StringBuilder sql = new StringBuilder("DELETE FROM post  ");
    sql.append(" WHERE post.type_post='tin tức' AND post.post_id=? ");
    Long result = delete(sql.toString(), newId);
    return result;
  }

  /**
   * {@inheritDoc}
   * 
   * @see carsale.dao.PostDao#deleteService(int)
   */
  @Override
  public Long deleteService(int serviceId) {
    StringBuilder sql = new StringBuilder("DELETE FROM post  ");
    sql.append(" WHERE post.type_post='dịch vụ' AND post.post_id=? ");
    Long result = delete(sql.toString(), serviceId);
    return result;
  }

  /**
   * {@inheritDoc}
   * 
   * @see carsale.dao.PostDao#updateNews(carsale.model.Post)
   */
  @Override
  public void updateNews(Post post) {
    System.out.println("Post Dao" + post);
    StringBuilder sql = new StringBuilder("UPDATE post AS p ");
    sql.append(" SET p.title=? , p.des=?");
    sql.append(" WHERE p.post_id=? ");
    update(sql.toString(), post.getPostTitle(), post.getPostDes(), post.getPostId());
  }

  /**
   * {@inheritDoc}
   * 
   * @see carsale.dao.PostDao#updateService(carsale.model.Post)
   */
  @Override
  public void updateService(Post post) {
    System.out.println("Post Dao" + post);
    StringBuilder sql = new StringBuilder("UPDATE post AS p ");
    sql.append(" SET p.title=? , p.des=?");
    sql.append(" WHERE p.post_id=? ");
    update(sql.toString(), post.getPostTitle(), post.getPostDes(), post.getPostId());
  }

}
