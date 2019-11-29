/*
 * (C) Copyright Global CyberSoft (GCS) 2019. All rights reserved. Proprietary and confidential.
 */
package carsale.mapper;

import java.sql.ResultSet;


public interface IRowMapper<T> {
  T mapRow(ResultSet rs);
}
