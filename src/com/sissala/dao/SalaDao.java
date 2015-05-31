package com.sissala.dao;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;
import java.util.ArrayList;
import java.util.List;

import com.sissala.model.Sala;
import com.sissala.util.DBUtil;
public class SalaDao {
	private Connection connection;

	public SalaDao() {
		connection = DBUtil.getConnection();
	}

	public void addSala(Sala sala) {
		try {
			PreparedStatement preparedStatement = connection
					.prepareStatement("insert into sala(nome,capacidade) values (?, ?)");
			// Parameters start with 1
			preparedStatement.setString(1, sala.getNome());
			preparedStatement.setInt(2,sala.getCapacidade());			
			preparedStatement.executeUpdate();

		} catch (SQLException e) {
			e.printStackTrace();
		}
	}
	
	public void deleteSala(int salaId) {
		try {
			PreparedStatement preparedStatement = connection
					.prepareStatement("delete from sala where salaid=?");
			// Parameters start with 1
			preparedStatement.setInt(1, salaId);
			preparedStatement.executeUpdate();

		} catch (SQLException e) {
			e.printStackTrace();
		}
	}
	
	public void updateSala(Sala sala) {
		try {
			PreparedStatement preparedStatement = connection
					.prepareStatement("update sala set nome=?, capacidade=?" +
							"where salaid=?");
			// Parameters start with 1
			preparedStatement.setString(1, sala.getNome());
			preparedStatement.setInt(2,sala.getCapacidade());	
			preparedStatement.executeUpdate();

		} catch (SQLException e) {
			e.printStackTrace();
		}
	}

	public List<Sala> getAllSalas() {
		List<Sala> salas = new ArrayList<Sala>();
		try {
			Statement statement = connection.createStatement();
			ResultSet rs = statement.executeQuery("select * from sala");
			while (rs.next()) {
				Sala sala = new Sala();
				sala.setSalaId(rs.getInt("salaid"));
				sala.setNome(rs.getString("nome"));
				sala.setCapacidade(rs.getInt("capacidade"));				
				salas.add(sala);
			}
		} catch (SQLException e) {
			e.printStackTrace();
		}

		return salas;
	}
	
	public Sala getSalaById(int salaId) {
		Sala sala = new Sala();
		try {
			PreparedStatement preparedStatement = connection.
					prepareStatement("select * from sala where salaid=?");
			preparedStatement.setInt(1, salaId);
			ResultSet rs = preparedStatement.executeQuery();
			
			if (rs.next()) {
				sala.setSalaId(rs.getInt("salaid"));
				sala.setNome(rs.getString("nome"));
				sala.setCapacidade(rs.getInt("capacidade"));					
			}
		} catch (SQLException e) {
			e.printStackTrace();
		}

		return sala;
	}

}
