package star.mvc.servlet;

import java.io.IOException;
import java.io.PrintWriter;
import java.text.ParseException;
import java.text.SimpleDateFormat;
import java.util.Date;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import star.mvc.db.oracle_sql;

public class servlet_register extends HttpServlet {

	/**
	 * Constructor of the object.
	 */
	public servlet_register() {
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

		request.setCharacterEncoding("utf-8");
		
		String id 		= request.getParameter("registername");
		String password = request.getParameter("registerpass");
		String truename = request.getParameter("registerTname");
		String postcode = request.getParameter("registeremail");
		String mphone 	= request.getParameter("registerphone");
		String sex 		= request.getParameter("registersex");
		String birthday = request.getParameter("registerbir");
		
		
		response.setContentType("text/html;charset = utf-8");
		PrintWriter out = response.getWriter();
		
		if(oracle_sql.oracle_user(id, password, truename, postcode, mphone, sex, birthday)){
			out.println("<!DOCTYPE HTML PUBLIC \"-//W3C//DTD HTML 4.01 Transitional//EN\">");
			out.println("<HTML>");
			out.println("<script language = javascript>alert('×¢²á³É¹¦£¡');");
			out.print("window.location.href='login.jsp'");
			out.println("</script>");
			out.println("</HTML>");
			//response.sendRedirect("login.jsp");
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

		doGet(request,response);
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
