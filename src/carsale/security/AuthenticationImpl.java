/*
 * (C) Copyright Global CyberSoft (GCS) 2019. All rights reserved. Proprietary and confidential.
 */
package carsale.security;

import javax.servlet.http.HttpServletRequest;

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
      user = userService.isExits(this.userName, this.password);
      System.out.println(user);
    } catch (NullPointerException e) {
      System.out.println(e.getMessage());
      return "/login?action=signin&user=null";
    }
    if (user != null) {
      SessionUtil.getInstance().putValue(req, "USER", user);
      if (user.getRole().getRoleName().equals("ADMIN")) {
        return "/admin/home";
      } else if (user.getRole().getRoleName().equals("USER")) {
        return "/trang-chu";
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
