package eus.agenda.controlador;

import java.util.ArrayList;

import eus.agenda.modelo.*;

public class ControladorGrupo {
	private ModeloGrupo modeloGrupo;

	public ControladorGrupo() {
		super();
		modeloGrupo = new ModeloGrupo();

	}

	public ArrayList<Grupo> seleccionarTodos() throws Exception {

		ArrayList<Grupo> grupos = new ArrayList<Grupo>();

		grupos = modeloGrupo.seleccionarTodos();
		return grupos;

	}
}
