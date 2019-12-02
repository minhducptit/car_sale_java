
package carsale.dao;

import java.util.ArrayList;

import carsale.model.Post;

public interface PostDao extends GennericDao<Post> {
  public ArrayList<Post> getAllNews();

  public ArrayList<Post> getAllService();

  public Post getNewById(int newsId);

  public Post getServiceById(int serviceId);
}
