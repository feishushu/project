package star.mvc.modle;

public class car {
	private String id;
	private String bookid;
	private String bookname;
	
	private String bookpic;
	private String nowprice;
	private String booknum;
	private String buyer;
	public String getId() {
		return id;
	}
	public void setId(String id) {
		this.id = id;
	}
	public String getbookid() {
		return bookid;
	}
	public void setbookid(String bookid) {
		this.bookid = bookid;
	}
	public String getBookname() {
		return bookname;
	}
	public void setBookname(String bookname) {
		this.bookname = bookname;
	}
	public String getBookpic() {
		return bookpic;
	}
	public void setBookpic(String bookpic) {
		this.bookpic = bookpic;
	}
	public String getNowprice() {
		return nowprice;
	}
	public void setNowprice(String nowprice) {
		this.nowprice = nowprice;
	}
	public String getBooknum() {
		return booknum;
	}
	public void setBooknum(String booknum) {
		this.booknum = booknum;
	}
	public String getBuyer() {
		return buyer;
	}
	public void setBuyer(String buyer) {
		this.buyer = buyer;
	}
}
