package com.sissala.dao;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;
import java.util.ArrayList;
import java.util.List;

import com.sissala.model.User;
import com.sissala.util.DBUtil;

public class UserDao {
	private Connection connection;

	public UserDao() {
		connection = DBUtil.getConnection();
	}

	public void addUser(User user) {
		try {
			PreparedStatement preparedStatement = connection
					.prepareStatement("insert into users(login,senha,cpf,data_nascimento,email) values (?, ?, ?, ?, ? )");
			// Parameters start with 1
			preparedStatement.setString(1, user.getLogin());
			preparedStatement.setString(2, user.getSenha());
			preparedStatement.setString(3, user.getCPF());
			preparedStatement.setDate(4, new java.sql.Date(user.getDataNascimento().getTime()));
			preparedStatement.setString(5, user.getEmail());
			preparedStatement.executeUpdate();

		} catch (SQLException e) {
			e.printStackTrace();
		}
	}
	
	public void deleteUser(int userId) {
		try {
			PreparedStatement preparedStatement = connection
					.prepareStatement("delete from users where userid=?");
			// Parameters start with 1
			preparedStatement.setInt(1, userId);
			preparedStatement.executeUpdate();

		} catch (SQLException e) {
			e.printStackTrace();
		}
	}
	
	public void updateUser(User user) {
		try {
			PreparedStatement preparedStatement = connection
					.prepareStatement("update users set login=?, senha=?, cpf=? ,data_nascimento=?, email=?" +
							"where userid=?");
			// Parameters start with 1
			preparedStatement.setString(1, user.getLogin());
			preparedStatement.setString(2, user.getSenha());
			preparedStatement.setString(3, user.getCPF());
			preparedStatement.setDate(4, new java.sql.Date(user.getDataNascimento().getTime()));
			preparedStatement.setString(5, user.getEmail());
			preparedStatement.setInt(6, user.getUserid());
			preparedStatement.executeUpdate();

		} catch (SQLException e) {
			e.printStackTrace();
		}
	}

	public List<User> getAllUsers() {
		List<User> users = new ArrayList<User>();
		try {
			Statement statement = connection.createStatement();
			ResultSet rs = statement.executeQuery("select * from users");
			while (rs.next()) {
				User user = new User();
				user.setUserid(rs.getInt("userid"));
				user.setLogin(rs.getString("login"));
				user.setSenha(rs.getString("senha"));
				user.setCPF(rs.getString("cpf"));
				user.setDataNascimento(rs.getDate("data_nascimento"));
				user.setEmail(rs.getString("email"));
				users.add(user);
			}
		} catch (SQLException e) {
			e.printStackTrace();
		}

		return users;
	}
	
	public User getUserById(int userId) {
		User user = new User();
		try {
			PreparedStatement preparedStatement = connection.
					prepareStatement("select * from users where userid=?");
			preparedStatement.setInt(1, userId);
			ResultSet rs = preparedStatement.executeQuery();
			
			if (rs.next()) {
				user.setUserid(rs.getInt("userid"));
				user.setLogin(rs.getString("login"));
				user.setSenha(rs.getString("senha"));
				user.setCPF(rs.getString("cpf"));
				user.setDataNascimento(rs.getDate("data_nascimento"));
				user.setEmail(rs.getString("email"));				
			}
		} catch (SQLException e) {
			e.printStackTrace();
		}

		return user;
	}

}
