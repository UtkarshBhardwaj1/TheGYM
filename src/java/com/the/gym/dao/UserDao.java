package com.the.gym.dao;

import com.the.gym.entities.User;
import java.sql.*;

public class UserDao{
    
    private Connection con;
    
    public UserDao(Connection con){
        this.con=con;
        
    }
    
    public boolean saveUser(User user){
        boolean f=true;
        
         try {
            //user -->database

//            String query = "insert into register (name,age,city,email,phone,password,gender) values (?,?,?,?,?,?,?)";
            PreparedStatement pstmt = this.con.prepareStatement("insert into register (name,age,city,email,phone,password,gender) values (?,?,?,?,?,?,?)");
            pstmt.setString(1, user.getName());
            pstmt.setString(4, user.getEmail());
            pstmt.setString(6, user.getPassword());
            pstmt.setString(7, user.getGender());
            pstmt.setString(2,user.getAge());
            pstmt.setString(3,user.getCity());
            pstmt.setString(5,user.getPhone());

            pstmt.executeUpdate();
            f = true;
        } catch (Exception e) {
            e.printStackTrace();
        }
        return f;

    }
    
     //get user by useremail and userpassword:
    public User getUserByEmailAndPassword(String email, String password) {
        User user = null;

        try {

            String query = "select * from register where email =? and password=?";
            PreparedStatement pstmt = con.prepareStatement(query);
            pstmt.setString(1, email);
            pstmt.setString(2, password);

            ResultSet set = pstmt.executeQuery();

            if (set.next()) {
                user = new User();

//             data from db
                String name = set.getString("name");
//             set to user object
                user.setName(name);

              String age =set.getString("age");
              user.setAge(age);
              
              String city=set.getString("city");
              user.setCity(city);
              
               user.setEmail(set.getString("email"));
                
              String phone=set.getString("phone");
              user.setPhone(phone);
              
             user.setPassword(set.getString("password"));
              
              String gender=set.getString("gender");
              user.setGender(gender);
              

            }

        } catch (Exception e) {
            e.printStackTrace();
        }

        return user;
    }

    

    }
