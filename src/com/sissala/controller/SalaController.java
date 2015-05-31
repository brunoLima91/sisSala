package com.sissala.controller;
import java.io.IOException;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.sissala.dao.SalaDao;
import com.sissala.model.Sala;
@WebServlet("/SalaController")
public class SalaController extends HttpServlet {
	private static final long serialVersionUID = 1L;
    private static String INSERT_OR_EDIT = "/sala.jsp";
    private static String LIST_SALA = "/listSala.jsp";
    private SalaDao dao;
    
    public SalaController() {
        super();
        dao = new SalaDao();
    }
    
    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        String forward="";
        String action = request.getParameter("action");

        if (action.equalsIgnoreCase("delete")){
            int salaId = Integer.parseInt(request.getParameter("salaId"));
            dao.deleteSala(salaId);
            forward = LIST_SALA;
            request.setAttribute("salas", dao.getAllSalas());    
        } else if (action.equalsIgnoreCase("edit")){
            forward = INSERT_OR_EDIT;
            int salaId = Integer.parseInt(request.getParameter("salaId"));
            Sala sala = dao.getSalaById(salaId);
            request.setAttribute("sala", sala);
        } else if (action.equalsIgnoreCase("listSala")){
            forward = LIST_SALA;
            request.setAttribute("salas", dao.getAllSalas());
        } else {
            forward = INSERT_OR_EDIT;
        }

        RequestDispatcher view = request.getRequestDispatcher(forward);
        view.forward(request, response);
    }

    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        Sala sala = new Sala();
        sala.setNome(request.getParameter("nome"));
        sala.setCapacidade(Integer.parseInt(request.getParameter("capacidade")));
       
        String salaid = request.getParameter("salaid");
        if(salaid == null || salaid.isEmpty())
        {
            dao.addSala(sala);
        }
        else
        {
            sala.setSalaId(Integer.parseInt(salaid));
            dao.updateSala(sala);
        }
        RequestDispatcher view = request.getRequestDispatcher(LIST_SALA);
        request.setAttribute("salas", dao.getAllSalas());
        view.forward(request, response);
    }


}
