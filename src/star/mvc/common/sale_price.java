package star.mvc.common;

public class sale_price {
	public static String subsale(String price,String sale){
		float price1,sale1,nowprice;
		price1 = Float.parseFloat(price);
		sale1  = Float.parseFloat(sale);
		nowprice = price1*(sale1/10f);
		return String.valueOf(nowprice);
	}
}
