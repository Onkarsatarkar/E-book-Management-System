package in.eb.entity;

public class Book {
	 private int id;
	    private String title;
	    private String author;
	    private double price;
	    private String photo;
	    
		

			    public Book(int id, String title, String author, double price, String photo) {
			super();
			this.id = id;
			this.title = title;
			this.author = author;
			this.price = price;
			this.photo = photo;
		}

				// Getters
			    public int getId() {
			        return id;
			    }

			    public String getTitle() {
			        return title;
			    }

			    public String getAuthor() {
			        return author;
			    }

			    public double getPrice() {
			        return price;
			    }

			    public String getPhoto() {
			        return photo;
			    }

		}

