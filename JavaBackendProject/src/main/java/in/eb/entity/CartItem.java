package in.eb.entity;

public class CartItem {
	 private int bookId;
	    private String bookName;
	    private String author;
	    private double price;
	    
	    public CartItem(int bookId, String bookName, String author, double price) {
	        this.bookId = bookId;
	        this.bookName = bookName;
	        this.author = author;
	        this.price = price;
	    }

	    public int getBookId() { return bookId; }
	    public String getBookName() { return bookName; }
	    public String getAuthor() { return author; }
	    public double getPrice() { return price; }
	}

