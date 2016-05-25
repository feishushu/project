package star.mvc.servlet;

import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import star.mvc.service.bookservice;

import com.jspsmart.upload.SmartUpload;

/**
 * Servlet implementation class servlet_addbook
 */
@WebServlet("/addbook")
public class servlet_addbook extends HttpServlet {
	private static final long serialVersionUID = 1L;

	/**
	 * @see HttpServlet#HttpServlet()
	 */
	public servlet_addbook() {
		super();
		// TODO Auto-generated constructor stub
	}

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse
	 *      response)
	 */
	protected void doGet(HttpServletRequest request,
			HttpServletResponse response) throws ServletException, IOException {
		request.setCharacterEncoding("utf-8");

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
		boolean a = false;
		SmartUpload su = new SmartUpload();
		try {
			su.initialize(this.getServletConfig(), request, response);
			su.setAllowedFilesList("jpg,bmp,gif,png,PNG,JPG");
			su.setDeniedFilesList("exe,bat,jsp,htm,html");
			su.upload();
			su.save("/uploadpic");
			com.jspsmart.upload.File file = su.getFiles().getFile(0);
			location = "uploadpic/" + file.getFilePathName().toString();
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
			// System.out.println(bookid+superid+subid+bookname+isbn+introduce+price+nowprice+pages+publisher+author+intime+booknum);
			a = bookservice.addMsg(bookid, superid, subid, bookname, isbn,
					introduce, price, nowprice, pages, publisher, author,
					intime, booknum, location);
		} catch (Exception e) {
			e.printStackTrace();
		}
		if (a) {
			response.sendRedirect("first.jsp");
		}
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse
	 *      response)
	 */
	protected void doPost(HttpServletRequest request,
			HttpServletResponse response) throws ServletException, IOException {
		doGet(request, response);
	}

}
