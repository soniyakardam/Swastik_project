/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */
package com.swastik.model;

import com.swastik.service.GetConnection;
import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;


/**
 *
 * @author Sohan_Maali
 */
public class EmployeeInformationDto {
     public boolean login(EmployeeInformationDao edao) {
        boolean b = false;
        Connection con=GetConnection.getConnectin();
        if(con != null){
            
            try {
                 String sql="select * from employee where email=? and password=?";
                PreparedStatement ps= con.prepareStatement(sql);
                ps.setString(1, edao.getEmail());
                ps.setString(2,edao.getPassword());
               ResultSet rs = ps.executeQuery();

                if(rs.next()){
                    edao.setName(rs.getString("name"));
                    edao.setMobile(rs.getString("email"));
                    edao.setSalary(rs.getString("dob"));
                       edao.setSalary(rs.getString("doh"));
                     b=true;
                                         
    
                }
            } catch(Exception ex){
                
            }
           
        }
        return b;

    }

    
}
