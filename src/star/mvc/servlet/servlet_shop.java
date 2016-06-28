package star.mvc.servlet;

import java.io.IOException;
import java.io.PrintWriter;
import java.util.ArrayList;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import star.mvc.service.carservice;

public class servlet_shop extends HttpServlet {

	/**
	 * Constructor of the object.
	 */
	public servlet_shop() {
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
		HttpSession session = request.getSession();
		
		String login = (String) session.getAttribute("login");
		ArrayList showbook = null;
		
		String redir = "login.jsp";
 		
		if(login!=null){
			redir = "shop.jsp";
		
		
		String xz = request.getParameter("xz");
		
		
		if(xz == null){
			String carnum 	= request.getParameter("carnum");
			String bookid 	= request.getParameter("bookid");
			String bookpic 	= request.getParameter("bookpic");
			String nowprice = request.getParameter("nowprice");
			
			carservice.addcar(bookid, bookpic, nowprice, carnum, login);
		}
		
		showbook = carservice.getMsgByIDEr(login);
		
		
		session.setAttribute("showbook", showbook);
		}
		
		response.sendRedirect(redir);
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
