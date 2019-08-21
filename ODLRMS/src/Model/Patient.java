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
public class Patient extends Person{
    Connection con;
    PreparedStatement ps;
    ResultSet rs;
    String address;
    public Patient() {
        con = DBConnection.getConnection();
    }

    
    public void initValue( ResultSet rs) {
	if(con != null) {
            try {
                this.id = rs.getInt(1);
                this.name = rs.getString(2);
                this.email = rs.getString(3);
                this.phoneNo = rs.getString(4);
                this.address = rs.getString(5);
                this.password = rs.getString(6);
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
