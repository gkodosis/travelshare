package cl;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.SQLException;

public class DB {

	private Connection con = null;

	/* Database connection settings */
	private final String dbServerAddress = "195.251.249.131";
	private final String dbServerPort = "3306";
	private final String dbName = "ismgroup55";
	private final String dbusername = "ismgroup55";
	private final String dbpassword = "7oa6nt";

	/**
	 * Default Constructor
	 */
	public DB() {  }

	/**
	 * A method to get the Connection object (in order to execute sql statements).
	 *
	 * @return Connection
	 */
	public Connection getConnection() {
		return this.con;
	}

	/**
	 * Establishes a connection with the database and initializes Connection (con) object.
	 *
	 * @throws SQLException
	 */
	public void open() throws SQLException {
		try {

			// dynamically load the driver's class file into memory
			Class.forName("com.mysql.jdbc.Driver").newInstance();

		} catch (Exception e) {

			throw new SQLException("MySQL Driver error: " + e.getMessage());
		}

		try {

			// establish a connection with the database and initializes the Connection object (con)
			con = DriverManager.getConnection("jdbc:mysql://" + dbServerAddress + ":" + dbServerPort +"/" + dbName, dbusername, dbpassword);

		} catch (Exception e) {
			con = null;
			// throw SQLException if a database access error occurs
			throw new SQLException("Could not establish connection with the Database Server: " + e.getMessage());
		}

	} // End of open

	/**
	 *  Close database connection and release any other database resources.
	 *  It is very important to close the database connection after it is used.
	 *
	 * @throws SQLException
	 */
	public void close() throws SQLException {

		try {

			// if connection is (still) open
			if (con != null)
				con.close(); // close the connection to the database to end database session

		} catch (Exception e) {

			throw new SQLException("Could not close connection with the Database Server: " + e.getMessage());
		}

	}// end of close

} // End of class
