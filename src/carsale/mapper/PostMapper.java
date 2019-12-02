
package carsale.mapper;

import java.sql.ResultSet;
import java.sql.SQLException;

import carsale.model.Post;
import carsale.model.User;

public class PostMapper implements IRowMapper<Post> {

  /**
   * {@inheritDoc}
   * 
   * @see carsale.mapper.IRowMapper#mapRow(java.sql.ResultSet)
   */
  @Override
  public Post mapRow(ResultSet rs) {
    try {
      Post post = new Post();
      post.setPostId(rs.getInt("post_id"));
      post.setPostTitle(rs.getString("title"));
      post.setPostContent(rs.getString("content"));
      post.setPostDes(rs.getString("des"));
      post.setTimeUpdate(rs.getDate("time_update"));
      post.setPostUrlImg(rs.getString("post_url"));
      post.setPostType(rs.getString("type_post"));
      try {
        User user = new User();
        user.setUserId(rs.getInt("user_id"));
        user.setUserName(rs.getString("username"));
        post.setUser(user);
      } catch (SQLException e) {
        System.out.println("Converter:" + e.getMessage());
        return null;
      }
      return post;
    } catch (SQLException e) {
      System.out.println("Converter:" + e.getMessage());
      return null;
    }
  }

}
