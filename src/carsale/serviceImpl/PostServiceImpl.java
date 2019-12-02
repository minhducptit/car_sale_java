
package carsale.serviceImpl;

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

}
