
package carsale.mapper;

import java.sql.ResultSet;
import java.sql.SQLException;

import carsale.model.CityFee;

public class CityFeeMapper implements IRowMapper<CityFee> {

  /**
   * {@inheritDoc}
   * 
   * @see carsale.mapper.IRowMapper#mapRow(java.sql.ResultSet)
   */
  @Override
  public CityFee mapRow(ResultSet rs) {
    try {
      CityFee cityFee = new CityFee();
      cityFee.setCityFeeId(rs.getInt("city_fee_id"));
      cityFee.setCityName(rs.getString("city_name"));
      cityFee.setTax(rs.getDouble("tax"));
      cityFee.setRegistration(rs.getDouble("registration"));
      cityFee.setInsurrance(rs.getDouble("insurrance"));
      cityFee.setLicensePlate(rs.getDouble("license_plate"));
      return cityFee;
    } catch (SQLException e) {
      System.out.println("Converter:" + e.getMessage());
      return null;
    }
  }

}
