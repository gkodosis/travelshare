package cl;

public class User {

	private String username;
	private String password;
	private String firstName;
	private String lastName;
	private String email;

	public User(String username, String password, String firstName, String lastName, String email) {
		this.username = username;
		this.password = password;
		this.firstName = firstName;
		this.lastName = lastName;
		this.email = email;
	}

	/*Getters and Setters*/

	public String getUsername() {
		return username;
	}

	public void setUsername(String username) {
		this.username = username;
	}

	public String getPassword() {
		return password;
	}

	public void setPassword(String password) {
		this.password = password;
	}

	public String getfirstName() {
			return firstName;
	}

	public void setfirstName(String firstName) {
			this.firstName = firstName;
	}

	public String getlastName() {
			return lastName;
	}

	public void setlastName(String lastName) {
			this.lastName = lastName;
	}

	public String getEmail() {
		return email;
	}

	public void setEmail(String email) {
		this.email = email;
	}

} //End of class
