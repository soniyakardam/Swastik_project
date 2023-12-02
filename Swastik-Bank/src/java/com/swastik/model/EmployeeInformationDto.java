/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */
package com.swastik.model;

import com.swastik.service.GetConnection;
import java.security.Timestamp;
import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.util.ArrayList;
import java.util.List;


public class EmployeeInformationDto {
    
     public boolean login(EmployeeInformationDao edao) {
        boolean b = false;
        Connection con=GetConnection.getConnectin();
       
         try {
                String sql="select * from employee where email=? and password=?";
                PreparedStatement ps= con.prepareStatement(sql);
                ps.setString(1, edao.getEmail());
                ps.setString(2,edao.getPassword());
               ResultSet rs = ps.executeQuery();

                if(rs.next()){
                    edao.setName(rs.getString("name"));
                    edao.setDob(rs.getString("dob"));
                    edao.setPhone("phone");
                    edao.setEmail("email");
                     b=true;
                                         
    
                }
            } catch(Exception ex){
                
            }
           
        
        return b;

    }

    public boolean updatePassword(EmployeeInformationDao edao, String newPassword) {
        boolean success = false;
        Connection con = GetConnection.getConnectin();
System.out.println(";dkfsl;glfdjslkj"); 
        try {
          
          //  if (login(edao)) {
          System.out.println("1;dkfsl;glfdjslkj");    
          String sql = "UPDATE employee SET password = ? WHERE email = ?";
          System.out.println(";dkfsl;glfdjslkj1"); 
                try (PreparedStatement ps = con.prepareStatement(sql)) {
                    ps.setString(1,newPassword);
                    ps.setString(2, edao.getEmail());
System.out.println(";dkfsl;glfdjslkj2"); 
                    int i = ps.executeUpdate();
                    System.out.println(";dkfsl;glfdjslkj3"); 
                    if(i>0)
                    {
                        success = true;
                    }
                }
            //}
        } catch (Exception ex) {
         
        } finally {
            
        }

        return success;
    }

     
  public List<EmployeeInformationDao> getAllProducts() {
    List<EmployeeInformationDao> productList = new ArrayList<>();
    Connection con = GetConnection.getConnectin();

    if (con != null) {
        String sql = "SELECT * FROM employee";

        try {
            PreparedStatement ps = con.prepareStatement(sql);
            ResultSet rs = ps.executeQuery();

            while (rs.next()) {
                int id = rs.getInt("employeeId");
                String password = rs.getString("password");
                String name = rs.getString("name");
                String email = rs.getString("email");
                String dob = rs.getString("dob");
                String phone = rs.getString("phone");
                java.sql.Timestamp doh = rs.getTimestamp("doh");
                String salary = rs.getString("salary");

                // Create EmployeeInformationDao object and set values
                EmployeeInformationDao em = new EmployeeInformationDao();
                em.setEmployeeId(id); // Set int directly
                em.setPassword(password);
                em.setName(name);
                em.setEmail(email);
                em.setDob(dob);
                em.setPhone(phone);
                em.setSalary(salary);

                productList.add(em);
            }
        } catch (Exception e) {
            e.printStackTrace();
        } finally {
            try {
                con.close();
            } catch (Exception e) {
                e.printStackTrace();
            }
        }
    }

    return productList;
}


}





