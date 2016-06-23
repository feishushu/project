package star.mvc.common;

public class sale_price {
	public static String subsale(String price,String sale){
		double price1,sale1,nowprice;
		
		price1 = Double.parseDouble(price);
		sale1  = Double.parseDouble(sale);
		
		nowprice = price1*(sale1/10);
		
		return String.valueOf(nowprice);
	}
}
