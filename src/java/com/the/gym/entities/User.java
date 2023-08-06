package com.the.gym.entities;

public class User {

    private int id;
    private String name;
    private String age;
    private String city;
    private String email;
    private String phone;
    private String password;
    private String gender;
  
    private String profile;

   public User(int id, String name,String age,String city, String email,String phone, String password, String gender) {
        this.id = id;
        this.name = name;
        this.age=age;
        this.city=city;
        this.email = email;
        this.phone=phone;
        this.password = password;
    this.gender = gender;
        
   }

    public User() {
    }

    public User(String name,String age,String city, String email, String phone,String password, String gender) {
      
        this.name = name;
        this.age=age;
        this.city=city;
        this.email = email;
        this.phone=phone;
        this.password = password;
        this.gender = gender;
        
    }
    
//    getters and setters

    public int getId() {
        return id;
    }

    public void setId(int id) {
        this.id = id;
    }

    public String getName() {
        return name;
    }

    public void setName(String name) {
        this.name = name;
        
    }
     public String getAge() {
        return age;
    }

    public void setAge(String age) {
        this.age= age;
    }
    public String getCity() {
        return city;
    }

    public void setCity(String city) {
        this.city= city;
    }
    public String getEmail(){
        return email;
    }
    public void setEmail(String email){
        this.email=email;
    }
    
     
    public String getPhone(){
        return phone;
    }
    public void setPhone(String phone){
        this.phone=phone;
    }
      public String getPassword() {
        return password;
    }

    public void setPassword(String password) {
        this.password = password;
    }
    public String getGender() {
        return gender;
    }

    public void setGender(String gender) {
        this.gender = gender;
    }
public String getProfile() {
        return profile;
    }

    public void setProfile(String profile) {
        this.profile = profile;
    }

}
