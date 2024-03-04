 package com.tech.blog.dao;

import java.sql.*;

import com.tech.blog.entities.User2;

public class UserDao {

	private Connection con;

	public UserDao(Connection con) {
		super();
		this.con = con;
		System.out.println("heloheloheloheoheloeiheloihelohelohelo");
	}

	public Connection isgettingconnection() {
		return con;
	}

	public Boolean saveUser(User2 user) {
		
		Boolean f = false;
		int answer=0;
		try {

			String query = "insert into user2 values (?,?,?,?,?)";
			PreparedStatement pstmt = this.con.prepareStatement(query);
			pstmt.setString(1, user.getName());
			pstmt.setString(2, user.getEmail());
			pstmt.setString(3, user.getPassword());
			pstmt.setString(4, user.getGender());
			pstmt.setString(5, user.getAbout());
			System.out.println("updateupdateupdateupdateupdateupdateupdateupdateupdateupdateupdate");
		     pstmt.executeUpdate();
			f = true;
			System.out.println("CREATED AFTER UPDATE ");
			

		} catch (SQLException e) {

			e.printStackTrace();
		}

		return f;
	}
	
	public User2 getUser2ByemailandPassword(String email,String password) {
		User2 user =null;
		try {
			String query="select * from user2 where email= ? and password=?";
			PreparedStatement pstmt=con.prepareStatement(query);
			pstmt.setString(1, email);
			pstmt.setString(2, password);
			ResultSet set=pstmt.executeQuery();
			
			if(set.next())
			{
				user=new User2();
				String name=set.getString("name");
				user.setName(name);
				
				user.setEmail(set.getString("email"));
				user.setPassword(set.getString("password"));
				user.setGender(set.getString("gender"));
				user.setAbout(set.getString("about"));
				
			}
			
			
		}catch(Exception e) {
			e.printStackTrace();
		}
		return user;
		
	}

}
