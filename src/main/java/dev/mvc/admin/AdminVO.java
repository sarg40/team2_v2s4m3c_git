package dev.mvc.admin;

public class AdminVO {
//  admin_no        NUMBER(10,0)    NOT NULL    PRIMARY KEY, 
//  admin_id        VARCHAR2(100)   NOT NULL,
//  admin_passwd    VARCHAR2(100)   NOT NULL,
//  admin_name      VARCHAR2(100)   NOT NULL

  /** 包府磊锅龋 */
  private int admin_no;
  /** 包府磊ID */
  private String admin_id = "";
  /** 包府磊PW */
  private String admin_passwd = "";
  /** 包府磊 捞抚*/
  private String admin_name = "";
  
  public AdminVO() {
  }

  public int getAdmin_no() {
    return admin_no;
  }

  public void setAdmin_no(int admin_no) {
    this.admin_no = admin_no;
  }

  public String getAdmin_id() {
    return admin_id;
  }

  public void setAdmin_id(String admin_id) {
    this.admin_id = admin_id;
  }

  public String getAdmin_passwd() {
    return admin_passwd;
  }

  public void setAdmin_passwd(String admin_passwd) {
    this.admin_passwd = admin_passwd;
  }

  public String getAdmin_name() {
    return admin_name;
  }

  public void setAdmin_name(String admin_name) {
    this.admin_name = admin_name;
  }

  
}
