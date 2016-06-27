package star.mvc.servlet;

import java.io.IOException;
import java.io.PrintWriter;
import java.util.ArrayList;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import oracle.net.aso.i;
import star.mvc.common.StringFormat;
import star.mvc.dao.commentdao;
import star.mvc.service.bookservice;

public class getAllMsgByBook extends HttpServlet {

	/**
	 * Constructor of the object.
	 */
	public getAllMsgByBook() {
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
		request.setCharacterEncoding("utf-8");
		
		String bookid 	= request.getParameter("bookid");
		String pointV1	= request.getParameter("pointV1");
		String pointV2	= request.getParameter("pointV2");
		String pointV3	= request.getParameter("pointV3");
		String content	= request.getParameter("content");
		String xz	  = request.getParameter("xz");
		
		if(pointV1 != null){
			String score = StringFormat.CountpintV(pointV1, pointV2,pointV3);
			
			commentdao.addcomment(bookid, score, content,(String) session.getAttribute("login"));
			xz = "book.jsp";
		}
		
		ArrayList allBook = bookservice.getAllMsgByBook(bookid);
		ArrayList comList = commentdao.getMsgByID(bookid);
		
		if(allBook != null){
			session.setAttribute("allbook", allBook);
			session.setAttribute("comlist", comList);
		}else{
			session.setAttribute("allbook", null);
			session.setAttribute("comlist", null);
		}
		
		response.sendRedirect(xz);
		
		response.setContentType("text/html");
		PrintWriter out = response.getWriter();
		
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
