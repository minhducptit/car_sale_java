/*
 * (C) Copyright Global CyberSoft (GCS) 2019. All rights reserved. Proprietary and confidential.
 */
package carsale.model;

import java.io.Serializable;

// TODO: Auto-generated Javadoc
/**
 * The Class Role.
 *
 * @author <a href="mailto:developer@hitachiconsulting.com">minhduc97.ptit</a>
 */
public class Role implements Serializable {

  /** The Constant serialVersionUID. */
  private static final long serialVersionUID = 1L;

  /** The role id. */
  private int roleId;

  /** The role name. */
  private String roleName;

  /** The role code. */
  private String roleCode;

  /**
   * Instantiates a new role.
   */
  public Role() {
    super();
  }

  /**
   * Instantiates a new role.
   *
   * @param roleId
   *          the role id
   * @param roleName
   *          the role name
   * @param roleCode
   *          the role code
   */
  public Role(int roleId, String roleName, String roleCode) {
    super();
    this.roleId = roleId;
    this.roleName = roleName;
    this.roleCode = roleCode;
  }

  /**
   * Gets the role id.
   *
   * @return the roleId
   */
  public int getRoleId() {
    return roleId;
  }

  /**
   * Sets the role id.
   *
   * @param roleId
   *          the roleId to set
   */
  public void setRoleId(int roleId) {
    this.roleId = roleId;
  }

  /**
   * Gets the role name.
   *
   * @return the roleName
   */
  public String getRoleName() {
    return roleName;
  }

  /**
   * Sets the role name.
   *
   * @param roleName
   *          the roleName to set
   */
  public void setRoleName(String roleName) {
    this.roleName = roleName;
  }

  /**
   * Gets the role code.
   *
   * @return the roleCode
   */
  public String getRoleCode() {
    return roleCode;
  }

  /**
   * Sets the role code.
   *
   * @param roleCode
   *          the roleCode to set
   */
  public void setRoleCode(String roleCode) {
    this.roleCode = roleCode;
  }

  /**
   * {@inheritDoc}
   * 
   * @see java.lang.Object#toString()
   */
  @Override
  public String toString() {
    return "Role [roleId=" + roleId + ", roleName=" + roleName + ", roleCode=" + roleCode
        + "]";
  }

}
