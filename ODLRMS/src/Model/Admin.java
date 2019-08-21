package Model;

import Database.*;
import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import javax.swing.JOptionPane;
/**
 *
 * @author shuvra
 */
public class Admin extends Person{
    public Admin() {
	initValue();
    }

    private void initValue() {
	Connection con = DBConnection.getConnection();
        PreparedStatement ps;
        ResultSet rs;
        if(con != null) {
            try {
                ps = con.prepareStatement("SELECT * FROM `admin`");
                rs = ps.executeQuery();
                rs.next();
                this.id = rs.getInt(1);
                this.name = rs.getString(2);
                this.email = rs.getString(3);
                this.phoneNo = rs.getString(4);
                this.password = rs.getString(5);
            }
            catch(SQLException ex) {
            }
        }
        else
            JOptionPane.showMessageDialog(null, "DateBase Connection Failed");
    }
    public int getID() {
        return id;
    }
    public String getPassword() {
        return password;
    }
}
