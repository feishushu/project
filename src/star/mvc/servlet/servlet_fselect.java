package star.mvc.servlet;

import java.io.IOException;
import java.io.PrintWriter;
import java.util.ArrayList;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import star.mvc.service.bookservice;

public class servlet_fselect extends HttpServlet {

	/**
	 * Constructor of the object.
	 */
	public servlet_fselect() {
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
		ArrayList subList = null;
		
		String	cou 	 = request.getParameter("cou");
		Integer	page 	 = (Integer)session.getAttribute("page");
		String	subty	 = (String)session.getAttribute("-->");
		String	xz		 = (String)session.getAttribute("xz");
		
		if(cou.equals("add")){
			if(xz.equals("1")){
				subList = bookservice.getMsgBySuperID(subty,page+1);
				session.setAttribute("booktype",subList);
			}
			
			if(xz.equals("2")){
				subList = bookservice.getMsgBySubID(subty,page+1);
				session.setAttribute("booktype", subList);
			}
			
			if(xz.equals("3")){
				subList = bookservice.getsearchMsgBystring(subty,page+1);
				session.setAttribute("booktype", subList);
			}
			
			session.setAttribute("page", page+1);
		}else{
			if(xz.equals("1")){
				subList = bookservice.getMsgBySuperID(subty,page-1);
				session.setAttribute("booktype",subList);
			}
			
			if(xz.equals("2")){
				subList = bookservice.getMsgBySubID(subty,page-1);
				session.setAttribute("booktype", subList);
			}
			
			if(xz.equals("3")){
				subList = bookservice.getsearchMsgBystring(subty,page-1);
				session.setAttribute("booktype", subList);
			}
			
			session.setAttribute("page", page-1);
		}
		
		response.sendRedirect("bookshow.jsp");
		
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
