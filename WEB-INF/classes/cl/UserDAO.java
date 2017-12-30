package cl;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;

import java.util.ArrayList;
import java.util.List;

/**
 * UserDAO provides all the necessary methods for "handling" user's data.
 *
 * @author sofos@aueb.gr
 *
 */
public class UserDAO {

	/**
	 * This method returns a List with all Users
	 *
	 * @return List<User>
	 */
	public List<User> getUsers() throws Exception {

		Connection con = null;

		String sqlquery= "SELECT * FROM users;";

		DB db = new DB();
		List<User> users = new ArrayList<User>();

		try {

			db.open(); //open connection

			con = db.getConnection(); //get Connection object

			PreparedStatement stmt = con.prepareStatement(sqlquery);
			ResultSet rs = stmt.executeQuery();

			while ( rs.next() ) {
				users.add( new User( rs.getString("username"), rs.getString("password"), rs.getString("firstName"), rs.getString("lastName"), rs.getString("email") ) );
			}

			rs.close(); //closing ResultSet
			stmt.close(); // closing PreparedStatement
			db.close(); // closing connection

			return users;

		} catch (Exception e) {

			throw new Exception( e.getMessage() );

		} finally {

			try {
				db.close();
			} catch (Exception e) {
				//no need to do anything...
			}

		}

	}

	/**
	 * Search user by username
	 *
	 * @param username, String
	 * @return User, the User object
	 * @throws Exception, if user not found or encounter error
	 */
	public User findUser(String username) throws Exception {

		Connection con = null;

		String sqlquery= "SELECT * FROM users WHERE username=?;";

		DB db = new DB();

		try {

			db.open();

			con = db.getConnection();

			PreparedStatement stmt = con.prepareStatement(sqlquery);
			stmt.setString( 1, username );

			ResultSet rs = stmt.executeQuery();

			if( !rs.next() ) {

				rs.close();
				stmt.close();
				db.close();

				throw new Exception("Not valid username");

			}

			User user = new User( rs.getString("username"), rs.getString("password"), rs.getString("fistName"), rs.getString("lastName"), rs.getString("email") );

			rs.close(); //closing ResultSet
			stmt.close(); // closing PreparedStatement
			db.close(); // closing connection

			return user;

		} catch (Exception e) {

			throw new Exception(e.getMessage());

		} finally {

			try {
				db.close();
			} catch (Exception e) {
				//no need to do anything...
			}

		}

	}

	/**
	 * Check user's credentials.
	 *
	 * @param username, String
	 * @param password, String
	 * @throws Exception, if username or password do not match or encounter error.
	 */
	public void authenticate(String username, String password) throws Exception {

		Connection con = null;

		String sqlquery= "SELECT * FROM users WHERE username=? AND password=?;";

		DB db = new DB();

		try {
			db.open();

			con = db.getConnection();

			PreparedStatement stmt = con.prepareStatement(sqlquery);
			stmt.setString( 1, username );
			stmt.setString( 2, password );

			ResultSet rs = stmt.executeQuery();

			if(!rs.next()) {
				rs.close();
				stmt.close();
				db.close();
				throw new Exception("Wrong username or password");
			}

			rs.close();
			stmt.close();
			db.close();

		} catch (Exception e) {

			throw new Exception(e.getMessage());

		} finally {

			try {
				db.close();
			} catch (Exception e) {
				//no need to do anything...
			}

		}
	}

	/**
	 * Default constructor
	 */
	public UserDAO() {

	}

}
