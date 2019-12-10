
package carsale.service.Impl;

import java.util.ArrayList;

import carsale.dao.PostDao;
import carsale.dao.impl.PostDaoImpl;
import carsale.model.Post;
import carsale.service.PostService;

public class PostServiceImpl implements PostService {

  private PostDao postDao;

  public PostServiceImpl() {
    postDao = new PostDaoImpl();
  }

  /**
   * {@inheritDoc}
   * 
   * @see carsale.service.PostService#getAllNews()
   */
  @Override
  public ArrayList<Post> getAllNews() {
    return postDao.getAllNews();
  }

  /**
   * {@inheritDoc}
   * 
   * @see carsale.service.PostService#getAllService()
   */
  @Override
  public ArrayList<Post> getAllService() {
    return postDao.getAllService();
  }

  /**
   * {@inheritDoc}
   * 
   * @see carsale.service.PostService#getNewById(int)
   */
  @Override
  public Post getNewById(int newsId) {
    return postDao.getNewById(newsId);
  }

  /**
   * {@inheritDoc}
   * 
   * @see carsale.service.PostService#getServiceById(int)
   */
  @Override
  public Post getServiceById(int serviceId) {
    return postDao.getServiceById(serviceId);
  }

  /**
   * {@inheritDoc}
   * @see carsale.service.PostService#deleteNews(int)
   */
  @Override
  public Long deleteNews(int newId) {
    return postDao.deleteNews(newId);
  }

  /**
   * {@inheritDoc}
   * @see carsale.service.PostService#deleteService(int)
   */
  @Override
  public Long deleteService(int serviceId) {
   return postDao.deleteService(serviceId);
  }

  /**
   * {@inheritDoc}
   * @see carsale.service.PostService#updateNews(carsale.model.Post, int)
   */
  @Override
  public void updateNews(Post post) {
    java.util.Date today=new java.util.Date();
    java.sql.Date date=new java.sql.Date(today.getTime()); 
    post.setTimeUpdate(date);
    postDao.updateNews(post);
  }

  /**
   * {@inheritDoc}
   * @see carsale.service.PostService#updateService(carsale.model.Post, int)
   */
  @Override
  public void updateService(Post post) {
    java.util.Date today=new java.util.Date();
    java.sql.Date date=new java.sql.Date(today.getTime()); 
    post.setTimeUpdate(date);
    postDao.updateService(post);
  }
}
