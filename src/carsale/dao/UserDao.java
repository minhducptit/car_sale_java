/*
 * (C) Copyright Global CyberSoft (GCS) 2019. All rights reserved. Proprietary and confidential.
 */
package carsale.dao;

import carsale.model.User;

/**
 * @author <a href="mailto:developer@hitachiconsulting.com">minhduc97.ptit</a>
 */
public interface UserDao extends GennericDao<User> {
  User isExits(String userName, String password);
}
