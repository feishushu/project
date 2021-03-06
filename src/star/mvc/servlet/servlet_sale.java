package star.mvc.servlet;

import java.io.IOException;
import java.io.PrintWriter;

import javax.jms.Session;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import star.mvc.common.sale_price;
import star.mvc.service.bookservice;

public class servlet_sale extends HttpServlet {

	/**
	 * Constructor of the object.
	 */
	public servlet_sale() {
		super();
	}

	/**
	 * Destruction of the servlet. <br>
	 */
	public void destroy() {
		super.destroy(); // Just puts "destroy" string in log
		// Put your code here
	}

	/**
	 * The doGet method of the servlet. <br>
	 *
	 * This method is called when a form has its tag value method equals to get.
	 * 
	 * @param request the request send by the client to the server
	 * @param response the response send by the server to the client
	 * @throws ServletException if an error occurred
	 * @throws IOException if an error occurred
	 */
	public void doGet(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		response.setContentType("text/html");
		PrintWriter out = response.getWriter();
		HttpSession session = request.getSession();
		
		String bookid = request.getParameter("bookid");
		String price  = request.getParameter("price");
		String sale   = request.getParameter("nowprice");
		
		
		
		String nowprice = sale_price.subsale(price, sale);
		System.out.println(nowprice);
		if(bookservice.UpdateNowprice(bookid, nowprice)){
			session.setAttribute("sale.jsp", null);
			out.println("<script language = javascript>alert('update cheng gong');");
			out.print("window.location.href='manger-main.jsp'");
			out.println("</script>");
		}
		out.println("<script language = javascript>alert('udate shi bai');");
		out.print("window.location.href='manger-main.jsp'");
		out.println("</script>");
		
		out.flush();
		out.close();
	}

	/**
	 * The doPost method of the servlet. <br>
	 *
	 * This method is called when a form has its tag value method equals to post.
	 * 
	 * @param request the request send by the client to the server
	 * @param response the response send by the server to the client
	 * @throws ServletException if an error occurred
	 * @throws IOException if an error occurred
	 */
	public void doPost(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {

		doGet(request, response);
	}

	/**
	 * Initialization of the servlet. <br>
	 *
	 * @throws ServletException if an error occurs
	 */
	public void init() throws ServletException {
		// Put your code here
	}

}
