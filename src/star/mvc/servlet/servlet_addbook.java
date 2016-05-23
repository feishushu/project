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
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		request.setCharacterEncoding("utf-8");
		
		String ID = null;
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
			location = "uploadpic/"
					+ file.getFilePathName().toString();
			ID = "1";
			System.out.println(ID);
			a = bookservice.addpic(ID, location);
		} catch (Exception e) {
			e.printStackTrace();
		}
		if( a ){
			response.sendRedirect("showpic");
		}
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		doGet(request, response);
	}

}
