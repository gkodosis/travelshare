package cl;

import java.sql.*;
import java.util.List;
import java.util.ArrayList;

public class PostDAO {


	public PostDAO() {  }

	public void savePost(Post post) throws Exception {

		Connection con = null;

		String sql = "INSERT INTO post (username, destination, datepicker1, datepicker2, availability) VALUES(?, ?, ?, ?, ?)";

		DB db = new DB();

		PreparedStatement stmt = null;


		try {
			db.open();

			con = db.getConnection();

			stmt = con.prepareStatement(sql);

			String username = post.getUsername();
			String destination = post.getDest();
			String datepicker1 = post.getDate1();
			String datepicker2 = post.getDate2();
			String availability = post.getAvailability();

			stmt.setString(1, username);
			stmt.setString(2, destination);
			stmt.setString(3, datepicker1);
			stmt.setString(4, datepicker2);
			stmt.setString(5, availability);

			stmt.executeUpdate();

			stmt.close();
			db.close();

		} catch (SQLException e) {

			throw new Exception(e.getMessage());

		} finally {

			try {

				db.close();

			} catch(Exception e) {}
		}
	} //End of savePost


	public List<Post> getPosts() throws Exception {

		Connection con = null;

		String sqlquery = "SELECT * FROM post;";

		DB db = new DB();

		List<Post> posts = new ArrayList<Post>();

		try {
			db.open();
			con = db.getConnection();
			PreparedStatement stmt = con.prepareStatement(sqlquery);
			ResultSet rs = stmt.executeQuery();

			while(rs.next()) {

				posts.add(new Post(rs.getString("username"), rs.getString("destination"), rs.getString("datepicker1"), rs.getString("datepicker2"), rs.getString("availability")));
			}

			rs.close();
			stmt.close();
			db.close();

			return posts;
		} catch (Exception e) {

			throw new Exception(e.getMessage());

		} finally {

			try {
				db.close();
			} catch (Exception e) {}
		}

	} //End of getPosts

} //End of class
