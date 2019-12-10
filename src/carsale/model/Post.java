
package carsale.model;

import java.io.Serializable;
import java.sql.Date;

// TODO: Auto-generated Javadoc
/**
 * The Class Post.
 */
public class Post implements Serializable {

  /** The Constant serialVersionUID. */
  private static final long serialVersionUID = 1L;

  /** The post id. */
  private int postId;

  /** The post title. */
  private String postTitle;

  /** The post content. */
  private String postContent;

  /** The time update. */
  private Date timeUpdate;

  /** The post des. */
  private String postDes;
  
  /** The post type. */
  private String postType;

  /** The post url img. */
  private String postUrlImg;

  /** The user. */
  private User user;

  /**
   * Instantiates a new post.
   */
  public Post() {
    super();
  }

  /**
   * @param postId
   * @param postTitle
   * @param postContent
   * @param timeUpdate
   * @param postDes
   * @param postType
   * @param postUrlImg
   * @param user
   */
  public Post(int postId, String postTitle, String postContent, Date timeUpdate,
      String postDes, String postType, String postUrlImg, User user) {
    super();
    this.postId = postId;
    this.postTitle = postTitle;
    this.postContent = postContent;
    this.timeUpdate = timeUpdate;
    this.postDes = postDes;
    this.postType = postType;
    this.postUrlImg = postUrlImg;
    this.user = user;
  }

  /**
   * @return the postId
   */
  public int getPostId() {
    return postId;
  }

  /**
   * @param postId the postId to set
   */
  public void setPostId(int postId) {
    this.postId = postId;
  }

  /**
   * @return the postTitle
   */
  public String getPostTitle() {
    return postTitle;
  }

  /**
   * @param postTitle the postTitle to set
   */
  public void setPostTitle(String postTitle) {
    this.postTitle = postTitle;
  }

  /**
   * @return the postContent
   */
  public String getPostContent() {
    return postContent;
  }

  /**
   * @param postContent the postContent to set
   */
  public void setPostContent(String postContent) {
    this.postContent = postContent;
  }

  /**
   * @return the timeUpdate
   */
  public Date getTimeUpdate() {
    return timeUpdate;
  }

  /**
   * @param timeUpdate the timeUpdate to set
   */
  public void setTimeUpdate(Date timeUpdate) {
    this.timeUpdate = timeUpdate;
  }

  /**
   * @return the postDes
   */
  public String getPostDes() {
    return postDes;
  }

  /**
   * @param postDes the postDes to set
   */
  public void setPostDes(String postDes) {
    this.postDes = postDes;
  }

  /**
   * @return the postType
   */
  public String getPostType() {
    return postType;
  }

  /**
   * @param postType the postType to set
   */
  public void setPostType(String postType) {
    this.postType = postType;
  }

  /**
   * @return the postUrlImg
   */
  public String getPostUrlImg() {
    return postUrlImg;
  }

  /**
   * @param postUrlImg the postUrlImg to set
   */
  public void setPostUrlImg(String postUrlImg) {
    this.postUrlImg = postUrlImg;
  }

  /**
   * @return the user
   */
  public User getUser() {
    return user;
  }

  /**
   * @param user the user to set
   */
  public void setUser(User user) {
    this.user = user;
  }

  /**
   * {@inheritDoc}
   * @see java.lang.Object#toString()
   */
  @Override
  public String toString() {
    return "Post [postId=" + postId + ", postTitle=" + postTitle + ", postContent="
        + postContent + ", timeUpdate=" + timeUpdate + ", postDes=" + postDes + ", postType="
        + postType + ", postUrlImg=" + postUrlImg + ", user=" + user + "]";
  }

}
