package star.mvc.modle;

import java.util.ArrayList;

public class order {
	private String oederid;
	private String bookidsum;
	private String numsum;
	private String buyer;
	private String time;
	private ArrayList<book> orbook;
	
	public String getOederid() {
		return oederid;
	}
	public void setOederid(String oederid) {
		this.oederid = oederid;
	}
	public String getBookidsum() {
		return bookidsum;
	}
	public void setBookidsum(String bookidsum) {
		this.bookidsum = bookidsum;
	}
	public String getNumsum() {
		return numsum;
	}
	public void setNumsum(String numsum) {
		this.numsum = numsum;
	}
	public String getBuyer() {
		return buyer;
	}
	public void setBuyer(String buyer) {
		this.buyer = buyer;
	}
	public String getTime() {
		return time;
	}
	public void setTime(String time) {
		this.time = time;
	}
	public ArrayList<book> getOrbook() {
		return orbook;
	}
	public void setOrbook(ArrayList<book> orbook) {
		this.orbook = orbook;
	}
	
}
