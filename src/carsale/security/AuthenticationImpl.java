
package carsale.security;

import javax.servlet.http.HttpServletRequest;

import at.favre.lib.crypto.bcrypt.BCrypt;
import carsale.model.User;
import carsale.service.UserService;
import carsale.serviceImpl.UserServiceImpl;
import carsale.untils.SessionUtil;

public class AuthenticationImpl implements Authentication {

  private String userName;
  private String password;
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
      //Tim user qua username
      User userModel= userService.getByUsername(this.userName);
      //Giai ma mat khau 
      BCrypt.Result result = BCrypt.verifyer().verify(password.toCharArray(), userModel.getPassword());
      //Nếu khớp mật khẩu
      if(result.verified) {
        user=userModel;
      }
      System.out.println(userModel);
    } catch (NullPointerException e) {
      System.out.println(e.getMessage());
      return "/login.jsp";
    }
    if (user != null) {
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
   * @param userName
   * @param password
   */
  public AuthenticationImpl(String userName, String password) {
    this.userName = userName;
    this.password = password;
    userService = new UserServiceImpl();
  }

}
