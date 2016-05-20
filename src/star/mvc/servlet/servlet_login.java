package star.mvc.servlet;

import java.io.IOException;
import java.io.PrintWriter;

import javax.servlet.ServletException;
import javax.servlet.http.Cookie;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import star.mvc.service.userservice;

public class servlet_login extends HttpServlet {

	/**
	 * Constructor of the object.
	 */
	public servlet_login() {
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
		
		int bean;
		
		String id 		= request.getParameter("logname");
		String password = request.getParameter("logpass");
		String chk		= request.getParameter("savesid");
		
		response.setContentType("text/html;charset=utf-8");
		PrintWriter out = response.getWriter();
		
		out.println("<!DOCTYPE HTML PUBLIC \"-//W3C//DTD HTML 4.01 Transitional//EN\">");
		out.println("<HTML>");
		
		if((bean = userservice.setLogin(id, password)) == 1){
			if(chk!=null){
				Cookie cookie = new Cookie("user",id+"-"+password);
				cookie.setMaxAge(36000*3);
				cookie.setPath("/");
				response.addCookie(cookie);
			}
			out.println("<script language = javascript>alert('Login Successful!');");
			out.print("window.location.href='index.jsp'");
			out.println("</script>");
		}else{
			if(bean == 0){
				out.println("<script language = javascript>alert('user name does not exist!');");
				out.print("window.location.href='login.jsp'");
				out.println("</script>");
			}else{
				out.println("<script language = javascript>alert('password error!');");
				out.print("window.location.href='login.jsp'");
				out.println("</script>");
			}
		}
		out.println("</HTML>");
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
