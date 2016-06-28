package star.mvc.servlet;

import java.io.IOException;
import java.io.PrintWriter;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import star.mvc.service.bookservice;

import com.jspsmart.upload.SmartUpload;

public class servlet_upbook extends HttpServlet {

	/**
	 * Constructor of the object.
	 */
	public servlet_upbook() {
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
	 * @param request
	 *            the request send by the client to the server
	 * @param response
	 *            the response send by the server to the client
	 * @throws ServletException
	 *             if an error occurred
	 * @throws IOException
	 *             if an error occurred
	 */
	public void doGet(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		response.setContentType("text/html");
		PrintWriter out = response.getWriter();
		String bookid = null;
		String superid = null;
		String subid = null;
		String bookname = null;
		String isbn = null;
		String introduce = null;
		String price = null;
		String nowprice = null;
		String pages = null;
		String publisher = null;
		String author = null;
		String intime = null;
		String booknum = null;
		String location = null;
		String hotsbook = null;
		String newbook = null;
		String speciabook = null;
		boolean flag = false;
		SmartUpload su = new SmartUpload();
		try {
			su.initialize(this.getServletConfig(), request, response);
			su.setAllowedFilesList("jpg,bmp,gif,png,PNG,JPG");
			su.setDeniedFilesList("exe,bat,jsp,htm,html");
			su.upload();
			su.save("/uploadpic");
			com.jspsmart.upload.File file = su.getFiles().getFile(0);
			location = "uploadpic/" + file.getFilePathName().toString();
			if (file.getFilePathName().toString().length() < 2) {
				location = null;
			}
			bookid = su.getRequest().getParameter("bookid");
			superid = su.getRequest().getParameter("supertypeid");
			subid = su.getRequest().getParameter("subtypeid");
			bookname = su.getRequest().getParameter("bookname");
			isbn = su.getRequest().getParameter("isbn");
			introduce = su.getRequest().getParameter("introduce");
			price = su.getRequest().getParameter("price");
			nowprice = su.getRequest().getParameter("nowprice");
			pages = su.getRequest().getParameter("pages");
			publisher = su.getRequest().getParameter("publisher");
			author = su.getRequest().getParameter("author");
			intime = su.getRequest().getParameter("intime");
			booknum = su.getRequest().getParameter("booknum");
			hotsbook = su.getRequest().getParameter("bookhot");
			newbook = su.getRequest().getParameter("booknew");
			speciabook = su.getRequest().getParameter("bookspecial");

		} catch (Exception e) {
			e.printStackTrace();
		}
		if (location == null) {
			location = su.getRequest().getParameter("img");
		}
		flag = bookservice.UpdateBook(bookid, superid, subid, bookname, isbn,
				introduce, price, nowprice, pages, publisher, author, intime,
				booknum, location, hotsbook, newbook, speciabook);
		if (flag){
			out.println("<script language = javascript>alert('update successfully');");
			out.print("window.location.href='manger-main.jsp'");
			out.println("</script>");
		}
		out.println("<script language = javascript>alert('update failed');");
		out.print("window.location.href='manger-main.jsp'");
		out.println("</script>");
		out.flush();
		out.close();
	}

	/**
	 * The doPost method of the servlet. <br>
	 *
	 * This method is called when a form has its tag value method equals to
	 * post.
	 * 
	 * @param request
	 *            the request send by the client to the server
	 * @param response
	 *            the response send by the server to the client
	 * @throws ServletException
	 *             if an error occurred
	 * @throws IOException
	 *             if an error occurred
	 */
	public void doPost(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {

		doGet(request, response);
	}

	/**
	 * Initialization of the servlet. <br>
	 *
	 * @throws ServletException
	 *             if an error occurs
	 */
	public void init() throws ServletException {
		// Put your code here
	}

}
