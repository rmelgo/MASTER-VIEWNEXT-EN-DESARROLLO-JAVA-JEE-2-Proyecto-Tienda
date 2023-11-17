package com.curso.service;

import java.util.ArrayList;
import java.util.Collections;
import java.util.Comparator;
import java.util.List;

import com.curso.model.Producto;

public class TiendaService {

	List<Producto> listaProductos = new ArrayList<>();
	
	public void crearTienda() {
		listaProductos.add(new Producto("TV", "Electronica", 319.99, 43));
		listaProductos.add(new Producto("Teclado PC", "Electronica", 19.99, 87));
		listaProductos.add(new Producto("Pantalla PC", "Electronica", 149.99, 54));
		listaProductos.add(new Producto("Balon fútbol", "Deportes", 39.99, 109));
		listaProductos.add(new Producto("Raqueta tenis", "Deportes", 79.99, 34));
		listaProductos.add(new Producto("Zapatillas running", "Deportes", 59.99, 80));
		listaProductos.add(new Producto("Mesa de escritorio", "Mobiliario", 119.99, 66));
		listaProductos.add(new Producto("Silla con ruedas", "Mobiliario", 57.90, 32));
		listaProductos.add(new Producto("Lampara", "Mobiliario", 45.50, 98));
	}
	
	
	public List<Producto> obtenerListaProductos() {	
		Collections.sort(listaProductos, Comparator.comparing(Producto::getSeccion).thenComparing(Producto::getNombre));
		
		return listaProductos;
	}
	
	public void altaTienda(Producto p) {
		listaProductos.add(p);
	}
	
	public Producto buscarProductoTienda(String nombre) {
		for (Producto p:listaProductos) {
			if (p.getNombre().equals(nombre)) {
				return p;
			}
		}		
		return null;
	}
	
	public void eliminarProducto(Producto producto) {
		listaProductos.remove(producto);	
	}
	
	public void modificarPrecioProducto(Producto producto, float precio) {
		for (Producto p:listaProductos) {
			if (p.equals(producto)) {
				p.setPrecio(precio);
				break;
			}
		}
	}
}
