package com.sissala.model;

import java.util.List;

public class Sala {

	private int salaId;
	private String nome;
	private int capacidade;
	private List<Recurso> recursos;
	private ETipoSala tipoSala;
	private boolean disponivel;
	public int getSalaId() {
		return salaId;
	}
	public void setSalaId(int salaId) {
		this.salaId = salaId;
	}
	public String getNome() {
		return nome;
	}
	public void setNome(String nome) {
		this.nome = nome;
	}
	public int getCapacidade() {
		return capacidade;
	}
	public void setCapacidade(int capacidade) {
		this.capacidade = capacidade;
	}
	public List<Recurso> getRecursos() {
		return recursos;
	}
	public void setRecursos(List<Recurso> recursos) {
		this.recursos = recursos;
	}
	public ETipoSala getTipoSala() {
		return tipoSala;
	}
	public void setTipoSala(ETipoSala tipoSala) {
		this.tipoSala = tipoSala;
	}
	public boolean isDisponivel() {
		return disponivel;
	}
	public void setDisponivel(boolean disponivel) {
		this.disponivel = disponivel;
	}
	
	
}
