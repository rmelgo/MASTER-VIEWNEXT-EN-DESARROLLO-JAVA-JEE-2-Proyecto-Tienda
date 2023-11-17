package com.curso.controller;

import jakarta.servlet.RequestDispatcher;
import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;
import jakarta.servlet.http.HttpSession;

import java.io.IOException;

import com.curso.model.Producto;
import com.curso.service.TiendaService;

/**
 * Servlet implementation class Alta
 */
public class Alta extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public Alta() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		response.getWriter().append("Served at: ").append(request.getContextPath());
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
		Producto p = new Producto(request.getParameter("nombre"), request.getParameter("seccion"), Float.parseFloat(request.getParameter("precio")), Integer.parseInt(request.getParameter("stock")));
		
		HttpSession s = request.getSession(true);
		TiendaService ts = (TiendaService) s.getAttribute("tienda");
		ts.altaTienda(p);
		s.setAttribute("tienda", ts);
		
		//mostrar exito
		request.setAttribute("mensaje", "El producto con nombre " + request.getParameter("nombre").toString() + " se ha añadido con exito");
		request.setAttribute("correcto", true);
		
        RequestDispatcher rd = request.getRequestDispatcher("confirmacion.jsp");  
        rd.forward(request, response); 
	}

}
