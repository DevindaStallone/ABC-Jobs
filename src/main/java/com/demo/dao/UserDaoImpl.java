package com.demo.dao;

import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.List;

import javax.sql.DataSource;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.dao.DataAccessException;
import org.springframework.jdbc.core.JdbcTemplate;
import org.springframework.jdbc.core.ResultSetExtractor;
import org.springframework.jdbc.core.RowMapper;

import com.demo.model.User;
import com.demo.model.UserDto;

public class UserDaoImpl implements UserDao {

	@Autowired
	JdbcTemplate jdbcTemplate;

	public int register(User user) {
		String sql = "insert into users (firstName,lastName,email,pass,confirmpassword) values(?,?,?,?,?)";
		
		//return the query with the user object
		return jdbcTemplate.update(sql, new Object[] { user.getFirstName(), user.getLastName(), user.getEmail(),
				user.getPass(),user.getConfirmpassword()});
	}

	public User login(UserDto loginDto) {
		//query to search user with given email and password
		String selectQuery = "Select * from users where email = '" + loginDto.getEmailId() + "' and pass = '"
				+ loginDto.getPassword() + "'";
		
		//this time we use ResultSetExtractor, another way of mapping than RowMapper
		User response = jdbcTemplate.query(selectQuery, new ResultSetExtractor<User>() {
			//need to implement the ResultSet to extract the data
			public User extractData(ResultSet rs) throws SQLException, DataAccessException {
				//if found the record, return the user object
				if (rs.next()) {
					User user = new User();
					user.setUserID(rs.getInt("userID"));
					user.setFirstName(rs.getString("firstName"));
					user.setLastName(rs.getString("lastName"));
					user.setEmail(rs.getString("email"));
					user.setPass(rs.getString("pass"));
					user.setConfirmpassword("confirmpassword");
					return user;
				}
				//else return null object
				return null;
			}
		});
		System.out.println(response);
		return response;
	}

	public int updateProfile(User user) {
		
		String sql = "update users set firstName=?,lastName=?,about=?,gender=?,country=?,mobilenumber=?,skill=?, where userID=?";

		try {
			int counter = jdbcTemplate.update(sql, new Object[] { user.getFirstName(), user.getLastName(),user.getAbout()
					,user.getGender(),user.getCountry(),user.getMobilenumber(), user.getUserID() });

			return counter;

		} catch (Exception e) {
			e.printStackTrace();
			return 0;
		}
	}

	
	public List<User> findUserById(int id) {

		//query from database with parameter to find user by their id
		List<User> userList = jdbcTemplate.query("SELECT * FROM users where userID=?", new Object[] { id },
				new RowMapper<User>() {

					public User mapRow(ResultSet rs, int rowNum) throws SQLException {
						User user = new User();

						user.setUserID(rs.getInt("userID"));
						user.setFirstName(rs.getString("firstName"));
						user.setLastName(rs.getString("lastName"));
						user.setEmail(rs.getString("email"));
						user.setAbout(rs.getString("about"));
						user.setGender(rs.getString("gender"));;
						user.setCountry(rs.getString("country"));
						user.setMobilenumber(rs.getString("mobilenumber"));
						
						
						return user;
					}

				});
		return userList;
	}
	
	

}
