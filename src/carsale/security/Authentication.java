/*
 * (C) Copyright Global CyberSoft (GCS) 2019. All rights reserved. Proprietary and confidential.
 */
package carsale.security;

import javax.servlet.http.HttpServletRequest;

/**
 * @author <a href="mailto:developer@hitachiconsulting.com">minhduc97.ptit</a>
 *
 */
public interface Authentication {
  public String urlRediect(HttpServletRequest req);
  public static Authentication of(String userName, String password) {
    return new AuthenticationImpl(userName , password);
  }
}
