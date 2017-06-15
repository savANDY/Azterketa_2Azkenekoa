package eus.agenda.modelo;

import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.util.ArrayList;

public class ModeloFiesta extends Conectar {

	public boolean comprobarFiesta(String pueblo) throws Exception {
		try {
			PreparedStatement pst = cn.prepareStatement("SELECT * FROM fiestas WHERE pueblo = ?");
			pst.setString(1, pueblo);
			pst.execute();

			ResultSet rs = pst.executeQuery();

			if (rs.next()) {
				return true;
			} else {
				return false;
			}

		} catch (Exception e) {
			throw e;
		}
	}

	public Fiesta seleccionarPorPueblo(String pueblo) throws Exception {

		Fiesta fiesta = new Fiesta();
		PreparedStatement ps;

		try {
			ps = cn.prepareStatement("SELECT * FROM fiestas WHERE pueblo = ?");
			ps.setString(1, pueblo);

			ResultSet rs = ps.executeQuery();

			if (rs.next()) {

				fiesta.setId(rs.getInt(1));
				fiesta.setPueblo(rs.getString(2));
				fiesta.setNombre(rs.getString(3));
				fiesta.setMes(rs.getInt(4));

				return fiesta;
			} else {
				return null;
			}
		} catch (Exception e) {
			throw e;
		}

	}

	public ArrayList<Fiesta> seleccionarTodos() throws Exception {

		ArrayList<Fiesta> fiestas = new ArrayList<Fiesta>();
		PreparedStatement ps;
		try {
			ps = cn.prepareStatement("SELECT * FROM fiestas");

			ResultSet rs = ps.executeQuery();

			while (rs.next()) {
				
				Fiesta fiesta = new Fiesta();
				fiesta.setId(rs.getInt(1));
				fiesta.setPueblo(rs.getString(2));
				fiesta.setNombre(rs.getString(3));
				fiesta.setMes(rs.getInt(4));
				
				fiestas.add(fiesta);
				
			}

		} catch (Exception e) {
			throw e;
		}
		return fiestas;
	}

}
