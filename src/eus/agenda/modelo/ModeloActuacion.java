package eus.agenda.modelo;

import java.sql.PreparedStatement;

public class ModeloActuacion extends Conectar {

	public void modificarPrecio(int idFiesta, int idGrupo, int nuevoPrecio) throws Exception {
		try {

			PreparedStatement pst = cn
					.prepareStatement("UPDATE actuaciones SET precio=? WHERE id_fiesta=? AND id_grupo=?");

			pst.setInt(1, nuevoPrecio);
			pst.setInt(2, idFiesta);
			pst.setInt(3, idGrupo);

			System.out.println(pst);
			
			pst.execute();
		} catch (Exception ex) {
			throw ex;
		}

	}

}
