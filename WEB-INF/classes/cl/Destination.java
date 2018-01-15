package cl;

public class Destination {

	private int id;
	private String name;
	private String country;

	/**
	 * Constructor
	 *
	 * @param id, integer
	 * @param name, String
	 */
	public Destination(int id, String name, String Country) {

		this.id = id;
		this.name = name;
		this.country = country;
	}

	/*Getters and Setters*/

	public int getId() {
		return id;
	}

	public void setId(int id) {
		this.id = id;
	}
	public String getName() {
		return name;
	}

	public void setName(String name) {
		this.name = name;

	}
	public String getCountry() {
		return country;
	}

	public void setCountry(String name) {
		this.country = country;
	}
} //End of class
