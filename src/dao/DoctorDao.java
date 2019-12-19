package dao;

import java.sql.SQLException;
import java.util.ArrayList;

import entity.Doctor;

public class DoctorDao extends BaseDao {

	public ArrayList<Doctor> select() {
		ArrayList<Doctor> list = new ArrayList<Doctor>();

		try {
			this.getCon();
			ps = con.prepareStatement("select * from Doctor");
			rs = ps.executeQuery();
			while (rs.next()) {
				Doctor d = new Doctor(rs.getInt(1), rs.getString(2), rs
						.getInt(3), rs.getString(4));
				list.add(d);

			}
		} catch (SQLException e) {
			e.printStackTrace();
		} finally {
			this.closeAll();
		}
		return list;
	}
	public Doctor getById(int id) {
	    Doctor d = null;
		try {
			this.getCon();
			ps = con.prepareStatement("select * from Doctor where id = ?");
			ps.setInt(1, id);
			rs = ps.executeQuery();
			while (rs.next()) {
				d = new Doctor(rs.getInt(1), rs.getString(2), rs.getInt(3), rs.getString(4));
			}
		} catch (SQLException e) {
			e.printStackTrace();
		} finally {
			this.closeAll();
		}
		return d;
	}

	//
	public int add(Doctor d) {
		String sql = "insert into Doctor values(null, ?, ?, ?)";
		return this.execute(sql, d.getName(), d.getAge(), d.getMajor());
	}

	//
	public int update(Doctor d) {
		String sql = "UPDATE doctor SET name=?, age = ?,major = ? where id=?";
		return this.execute(sql, d.getName(), d.getAge(), d.getMajor(), d
				.getId());
	}

	public int delete(int id) {
		String sql = "delete  from Doctor where id = ?";
		return this.execute(sql, id);

	}

}
