package cl;
import java.sql.*;

public class UserDAO {

	public UserDAO() {

	}

	public User findUser(String username) throws Exception {

		Connection con = null;

		String sqlquery= "SELECT * FROM Users WHERE username=?;";

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

			User user = new User(rs.getString("username"), rs.getString("password"), rs.getString("email") );

			rs.close();
			stmt.close();
			db.close();

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


	public void authenticate(String username, String password) throws Exception {

		Connection con = null;

		String sqlquery = "SELECT * FROM Users WHERE username=? AND password=?;";

		DB db = new DB();

		try {

			db.open();

			con = db.getConnection();

			PreparedStatement stmt = con.prepareStatement(sqlquery);
			stmt.setString(1, username);
			stmt.setString(2, password);

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

			}

		}

	}

	public void saveUser(User user) throws Exception {

		Connection con = null;

		String sqlquery = "INSERT INTO Users (username, password, email) VALUES (?, ?, ?);";

		DB db = new DB();

		PreparedStatement stmt = null;

		try {

			db.open();

			con = db.getConnection();

			stmt = con.prepareStatement(sqlquery);

			String username = customer.getUsername();
			String password = customer.getPassword();
			String email = customer.getEmail();

			stmt.setString(1, username);
			stmt.setString(2, password);
			stmt.setString(3, email);
			

			stmt.executeUpdate();
			stmt.close();
			db.close();

		} catch (SQLException e) {

			throw new Exception(e.getMessage());

		} finally {

			try {

				db.close();

			}catch(Exception e) {

			}

		}

	}


}
