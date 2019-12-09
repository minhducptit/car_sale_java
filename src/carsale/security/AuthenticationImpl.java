
package carsale.security;

import javax.servlet.http.HttpServletRequest;

import at.favre.lib.crypto.bcrypt.BCrypt;
import carsale.model.User;
import carsale.service.UserService;
import carsale.service.Impl.UserServiceImpl;
import carsale.untils.SessionUtil;

// TODO: Auto-generated Javadoc
/**
 * The Class AuthenticationImpl.
 */
public class AuthenticationImpl implements Authentication {

  /** The user name. */
  private String userName;

  /** The password. */
  private String password;

  /** The user service. */
  private UserService userService;

  /**
   * {@inheritDoc}
   * 
   * @see carsalse.security.Authentication#urlRediect(javax.servlet.http.HttpServletRequest)
   */
  @Override
  public String urlRediect(HttpServletRequest req) {
    User user = null;
    try {
      User userModel = userService.getByUsername(this.userName);
      BCrypt.Result result =
          BCrypt.verifyer().verify(password.toCharArray(), userModel.getPassword());
      if (result.verified) {
        user = userModel;
      }
      System.out.println(userModel);
    } catch (NullPointerException e) {
      System.out.println(e.getMessage());
      return "/login.jsp";
    }
    if (user != null) {
      user.setPassword("  ");
      SessionUtil.getInstance().putValue(req, "USER", user);
      if (user.getRole().getRoleCode().equals("ADMIN")) {
        return "/admin/home";
      } else if (user.getRole().getRoleCode().equals("USER")) {
        return "/index.jsp";
      }
    }
    return "/login?action=signin&user=null";
  }

  /**
   * Instantiates a new authentication impl.
   *
   * @param userName
   *          the user name
   * @param password
   *          the password
   */
  public AuthenticationImpl(String userName, String password) {
    this.userName = userName;
    this.password = password;
    userService = new UserServiceImpl();
  }

}
