package cl;

import java.sql.*;
import java.util.List;
import java.util.ArrayList;


public class DestinationDAO {

	/**
	 * Default constructor
	 */
	public DestinationDAO() {  }

	public List<Destination> getDestinations() throws Exception {

		DB db = new DB();
		Connection con = null;
		PreparedStatement stmt = null;
		String query1 = "SELECT * FROM places;";
		ResultSet rs = null;
		List<Destination> destinations = new ArrayList<Destination>();

		try{
			db.open();
			con = db.getConnection();
			stmt = con.prepareStatement(query1);
			rs = stmt.executeQuery();

			while(rs.next()) {
				destinations.add(new Destination(rs.getInt("id"), rs.getString("name"), rs.getString("country")));
			}

			stmt.close();
			rs.close();

			return destinations;

		}catch(Exception e) {
			throw new Exception(e.getMessage());
		}finally {
			try{
				db.close();
			}catch(Exception e) {
				throw new Exception(e.getMessage());
			}
		}

	} //End of getDestinations


	public Destination getDestinationByID(int depid) throws Exception {

		DB db = new DB();
		Connection con = null;
		PreparedStatement stmt = null;
		String query2 = "SELECT * FROM places WHERE id = ?;";
		ResultSet rs = null;

		try{
			db.open();
			con = db.getConnection();
			stmt = con.prepareStatement(query2);
			stmt.setInt(1, depid);
			rs = stmt.executeQuery();

			if(!rs.next()) {
				throw new Exception("Could not find Place with id: " +depid);
			}

			Destination destination = new Destination(rs.getInt("id"), rs.getString("name"), rs.getString("country"));

			rs.close();
			stmt.close();

			return destination;

		}catch(Exception e) {
			throw new Exception(e.getMessage());
		}finally {
			try{
				db.close();
			}catch(Exception e) {
				throw new Exception(e.getMessage());
			}
		}

	} //End of getDestinationByID

} //End of class
