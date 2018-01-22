package cl;

public class Post {

	private String username;
	private String destination;
	private String datepicker1;
	private String datepicker2;
	private String availability;

	/**
	 * Constructor
	 *
	 * @param destination
	 * @param datepicker1
	 * @param datepicker2
	 * @param availability
	 */
	public Post(String username, String destination, String datepicker1, String datepicker2, String availability) {
		this.username = username;
		this.destination = destination;
		this.datepicker1 = datepicker1;
		this.datepicker2 = datepicker2;
		this.availability = availability;
	}

	/*Getters and Setters*/

	public String getUsername() {
		return username;
	}

	public void setUsername(String username) {
		this.username = username;
	}


	public String getDest() {
		return destination;
	}

	public void setDest(String destination) {
		this.destination = destination;
	}

	public String getDate1() {
		return datepicker1;
	}

	public void setDate1(String datepicker1) {
		this.datepicker1 = datepicker1;
	}

	public String getDate2() {
			return datepicker2;
		}

		public void setDate2(String datepicker2) {
			this.datepicker2 = datepicker2;
	}

	public String getAvailability() {
		return availability;
	}

	public void setAvailability(String availability) {
		this.availability = availability;
	}

} //End of class
