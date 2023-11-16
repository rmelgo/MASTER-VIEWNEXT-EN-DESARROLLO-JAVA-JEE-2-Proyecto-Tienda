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
 * Servlet implementation class Eliminacion
 */
public class Eliminacion extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public Eliminacion() {
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
		HttpSession s = request.getSession(true);
		TiendaService ts = (TiendaService) s.getAttribute("tienda");
		
		Producto p = ts.buscarProductoTienda(request.getParameter("nombre").toString());
		if (p != null) {
			ts.eliminarProducto(p);		
			s.setAttribute("tienda", ts);
			
			//mostrar exito
			request.setAttribute("mensaje", "El producto con nombre " + request.getParameter("nombre").toString() + " se ha eliminado con exito");
			
	        RequestDispatcher rd = request.getRequestDispatcher("confirmacion.jsp");  
	        rd.forward(request, response);  
		}
		else {
			//mostrar informacion fallo
			request.setAttribute("mensaje", "El producto con nombre " + request.getParameter("nombre").toString() + " no existe");
			
	        RequestDispatcher rd = request.getRequestDispatcher("confirmacion.jsp");  
	        rd.forward(request, response);  
		}
	}

}
