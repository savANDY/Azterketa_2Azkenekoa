package eus.agenda.controlador;

import java.sql.PreparedStatement;

import eus.agenda.modelo.*;

public class ControladorActuacion {
	
	private ModeloActuacion modeloActua;

	public ControladorActuacion() {
		super();
		modeloActua = new ModeloActuacion();

	}

	public void modificarPrecio(int idFiesta, int idGrupo, int nuevoPrecio) throws Exception {
		
		try {
			modeloActua.modificarPrecio(idFiesta, idGrupo, nuevoPrecio);
		} catch (Exception e) {
			throw e;
		}
		
	}
	
}
