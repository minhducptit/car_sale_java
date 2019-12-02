
package carsale.security;

import javax.servlet.http.HttpServletRequest;

public interface Authentication {
  public String urlRediect(HttpServletRequest req);

  public static Authentication of(String userName, String password) {
    return new AuthenticationImpl(userName, password);
  }
}
