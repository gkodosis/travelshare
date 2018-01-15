package cl;
import java.sql.*;
import java.text.ParseException;
import java.text.SimpleDateFormat;
import java.util.regex.Matcher;
import java.util.regex.Pattern;


public class DataValidation {

	public DataValidation() {

	}

	public boolean isNameValid(String name) {

		return (name == null || name.length() < 3 ? false : true);

	}

	public boolean isValidEmailAddress(String email) {

        String ePattern = "^[a-zA-Z0-9.!#$%&'*+/=?^_`{|}~-]+@((\\[[0-9]{1,3}\\.[0-9]{1,3}\\.[0-9]{1,3}\\.[0-9]{1,3}\\])|(([a-zA-Z\\-0-9]+\\.)+[a-zA-Z]{2,}))$";
        java.util.regex.Pattern p = java.util.regex.Pattern.compile(ePattern);
        java.util.regex.Matcher m = p.matcher(email);

        return m.matches();
	}


	public boolean isPasswordValid(String password, String passwordval) {

		if(password.equals(passwordval)) {

			return true;

		} else {

			return false;
		}
	}

	public boolean isUsernameValid(String username) throws Exception {

		Connection con = null;

		String sqlquery = "SELECT username FROM users WHERE username = ?;";

		PreparedStatement stmt = null;

		DB db = new DB();

		try {

			db.open();

			con = db.getConnection();

			stmt = con.prepareStatement(sqlquery);

			stmt.setString(1, username);

			ResultSet rs = stmt.executeQuery();

			if(rs.next()) {

				return false;

			} else {

				return true;
			}



		} catch (Exception e) {

			throw new Exception(e.getMessage());

		} finally {

			try {
				db.close();

			} catch (Exception e) {

			}
		}
	}

	public static boolean isNull(String s)	{

	  return (s==null || s.trim().equals(""));
	}
}
