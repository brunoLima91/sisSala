package com.sissala.model;

import java.util.Date;

public class User {
	private int userid;
	private String login;
	private String senha;
	private String cpf;	
	private Date dataNascimento;
	private String email;
	public int getUserid() {
		return userid;
	}
	public void setUserid(int userid) {
		this.userid = userid;
	}
	public String getLogin() {
		return login;
	}
	public void setLogin(String login) {
		this.login = login;
	}
	public String getSenha() {
		return senha;
	}
	public void setSenha(String senha) {
		this.senha = senha;
	}
	public Date getDataNascimento() {
		return dataNascimento;
	}
	public void setDataNascimento(Date dataNascimento) {
		this.dataNascimento = dataNascimento;
	}
	public String getEmail() {
		return email;
	}
	public void setEmail(String email) {
		this.email = email;
	}
	
	public String getCPF() {
		return cpf;
	}
	public void setCPF(String cpf) {
		this.cpf = cpf;
	}
	@Override
	public String toString() {
		return "User [userid=" + userid + ", login=" + login
				+ ", data de Nascimento=" + dataNascimento + ", cpf=" + cpf + ", email="
				+ email + "]";
	}


}
