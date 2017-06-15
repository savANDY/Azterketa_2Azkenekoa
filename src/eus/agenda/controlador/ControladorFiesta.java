package eus.agenda.controlador;

import java.util.ArrayList;

import eus.agenda.modelo.*;

public class ControladorFiesta {
	private ModeloFiesta modeloFiesta;

	public ControladorFiesta() {
		super();
		modeloFiesta = new ModeloFiesta();

	}

	public boolean comprobarFiesta(String pueblo) throws Exception {

		return modeloFiesta.comprobarFiesta(pueblo);

	}

	public Fiesta seleccionarPorPueblo(String pueblo) throws Exception {

		Fiesta fiesta = new Fiesta();

		fiesta = modeloFiesta.seleccionarPorPueblo(pueblo);

		return fiesta;
	}

	public ArrayList<Fiesta> seleccionarTodos() throws Exception {
		
		ArrayList<Fiesta> fiestas = new ArrayList<Fiesta>();

		fiestas = modeloFiesta.seleccionarTodos();
		return fiestas;

	}
}
