package eus.agenda.modelo;

import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.util.ArrayList;

public class ModeloGrupo extends Conectar {

	public ArrayList<Grupo> seleccionarTodos() throws Exception {

		ArrayList<Grupo> grupos = new ArrayList<Grupo>();
		PreparedStatement ps;
		try {
			ps = cn.prepareStatement("SELECT * FROM grupos");

			ResultSet rs = ps.executeQuery();

			while (rs.next()) {

				Grupo grupo = new Grupo();
				grupo.setId(rs.getInt(1));
				grupo.setNombre(rs.getString(2));
				grupo.setNum_musicos(rs.getInt(3));

				grupos.add(grupo);

			}

		} catch (Exception e) {
			throw e;
		}
		return grupos;
	}

}
