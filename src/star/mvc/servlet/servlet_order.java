package star.mvc.servlet;

import java.io.IOException;
import java.io.PrintWriter;
import java.util.ArrayList;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import oracle.net.aso.r;
import star.mvc.common.*;
import star.mvc.dao.bookdao;
import star.mvc.dao.orderdao;
import star.mvc.modle.book;
import star.mvc.modle.order;
import star.mvc.service.orderservice;


public class servlet_order extends HttpServlet {

	/**
	 * Constructor of the object.
	 */
	public servlet_order() {
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
	@SuppressWarnings("unchecked")
	public void doGet(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {

		response.setContentType("text/html");
		PrintWriter out = response.getWriter();
		HttpSession session = request.getSession();
		
		String strbook[] = request.getParameterValues("bookid");
		String time		 = Time.getorderidtime();
		String orderid 	 = (String)session.getAttribute("login")+ "@" + time;
		String[] numsum = null;
		
		ArrayList<order> list;
		
		if(strbook != null){
			numsum  = new String[strbook.length];
		
			for(int i = 0; i < strbook.length; i ++){
				numsum[i] = request.getParameter(strbook[i]);
			}
		
			orderservice.addorder(orderid, StringFormat.CombString(strbook),
					StringFormat.CombString(numsum), (String)session.getAttribute("login"), time);
		}
		
		list = orderdao.getMsgByBuyer((String)session.getAttribute("login"));
		
		if(list.size() != 0){
			for(int i = 0; i < list.size(); i ++){
				list.get(i).setOrbook((ArrayList<book>)bookdao.getMsgByBookIDStr(list.get(i).getBookidsum()));
			}
			session.setAttribute("buy.jsp", list);
			response.sendRedirect("buy.jsp");
		}
		
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
