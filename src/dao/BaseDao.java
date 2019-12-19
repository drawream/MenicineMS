package dao;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;

public class BaseDao {
    // 四大属性
    private String driver = "com.mysql.jdbc.Driver";
    private String url = "jdbc:mysql://localhost:3306/hospital";
    private String user = "root";
    private String password = "root";
    // 三大对象
    public Connection con = null;
    public PreparedStatement ps = null;
    public ResultSet rs = null;

    // 三大方法
    // 1，获取连接方法
    public void getCon() {
	try {
	    Class.forName(driver);
	    con = DriverManager.getConnection(url, user, password);
	} catch (ClassNotFoundException e) {
	    e.printStackTrace();
	} catch (SQLException e) {
	    e.printStackTrace();
	}
    }

    // 2.关闭所有对象
    public void closeAll() {
	try {
	    if (rs != null) {
		rs.close();
	    }
	    if (ps != null) {
		ps.close();
	    }
	    if (con != null) {
		con.close();
	    }
	} catch (Exception e) {
	    e.printStackTrace();
	}
    }

    // 3.万能增删改
    public int execute(String sql, Object... param) {
	int result = 0;

	try {
	    this.getCon();
	    ps = con.prepareStatement(sql);
	    int i = 1;
	    for (Object obj : param) {
		ps.setObject(i++, obj);

	    }
	    result = ps.executeUpdate();
	} catch (SQLException e) {
	    e.printStackTrace();
	} finally {
	    this.closeAll();
	}
	return result;

    }

}
