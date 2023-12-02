// PasswordUpdateServlet.java

package com.swastik.controlar;

import com.swastik.model.EmployeeInformationDao;
import com.swastik.model.EmployeeInformationDto;
import java.io.IOException;
import java.io.PrintWriter;
import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;

@WebServlet(name = "PasswordUpdateServlet", urlPatterns = {"/PasswordUpdate"})
public class EmployeePassword extends HttpServlet {

    protected void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        response.setContentType("text/html;charset=UTF-8");
        try (PrintWriter out = response.getWriter()) {
            
            String currentPassword = request.getParameter("currentPassword");
            String newPassword = request.getParameter("newPassword");
            String renewPassword = request.getParameter("renewPassword");
            String email=request.getParameter("email");
            
            System.out.println(""+currentPassword);
             System.out.println(""+newPassword);
              System.out.println(""+renewPassword);
            if (currentPassword == null || newPassword == null || renewPassword == null
                    || currentPassword.isEmpty() || newPassword.isEmpty() || renewPassword.isEmpty()) {
                out.print("Please fill in all fields");
                return;
            }

            if (!newPassword.equals(renewPassword)) {
                out.print("New password and re-entered password do not match");
                return;
            }
            EmployeeInformationDao edao = new EmployeeInformationDao();
            edao.setPassword(newPassword); 
            edao.setEmail(email);
            edao.setOldPassword(currentPassword);

            EmployeeInformationDto edto = new EmployeeInformationDto();
            boolean passwordUpdateSuccessful = edto.updatePassword(edao, newPassword);
//            out.println("aagyaa");
                System.out.println("Boolean : "+passwordUpdateSuccessful);

            if (passwordUpdateSuccessful) {
                  response.sendRedirect("Employee/Home.jsp");
                out.print("Password updated successfully");
                
            } else {
                out.print("Failed to update password. Please check your current password");
            }
        }
    }
}
