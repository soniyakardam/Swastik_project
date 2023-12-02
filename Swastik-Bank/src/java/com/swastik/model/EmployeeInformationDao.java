package com.swastik.model;

import java.io.Serializable;
import java.security.Timestamp;

public class EmployeeInformationDao implements Serializable {

    private int employeeId;
    private String password;
    private String name;
    private String email;
    private String dob;
    private String phone;
    private Timestamp doh;
    private String salary;
    private String oldpassword;
     public EmployeeInformationDao() {
    }

    public EmployeeInformationDao(int employeeId, String password, String name, String email, String dob, String phone, Timestamp doh, String salary, String mobile,String oldpassword) {
        this.employeeId = employeeId;
        this.password = password;
        this.name = name;
        this.email = email;
        this.dob = dob;
        this.phone = phone;
        this.doh = doh;
        this.salary = salary;
        this.oldpassword=oldpassword;
       
    }

    public int getEmployeeId() {
        return employeeId;
    }

    public void setEmployeeId(int employeeId) {
        this.employeeId = employeeId;
    }

    public String getPassword() {
        return password;
    }

    public void setPassword(String password) {
        this.password = password;
    }

    public String getName() {
        return name;
    }

    public void setName(String name) {
        this.name = name;
    }

    public String getEmail() {
        return email;
    }

    public void setEmail(String email) {
        this.email = email;
    }

    public String getDob() {
        return dob;
    }

    public void setDob(String dob) {
        this.dob = dob;
    }

    public String getPhone() {
        return phone;
    }

    public void setPhone(String phone) {
        this.phone = phone;
    }

    public Timestamp getDoh() {
        return doh;
    }

    public void setDoh(Timestamp doh) {
        this.doh = doh;
    }

    public String getSalary() {
        return salary;
    }

    public void setSalary(String salary) {
        this.salary = salary;
    }
    
    public String getOldPassword() {
        return oldpassword;
    }

    public void setOldPassword(String oldpassword ) {
        this.oldpassword = oldpassword;
    }
   

}