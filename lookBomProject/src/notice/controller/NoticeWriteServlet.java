package notice.controller;

import java.io.File;
import java.io.FileInputStream;
import java.io.FileOutputStream;
import java.io.IOException;
import java.io.PrintWriter;
import java.sql.Date;
import java.text.SimpleDateFormat;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.apache.commons.fileupload.servlet.ServletFileUpload;

import com.oreilly.servlet.MultipartRequest;
import com.oreilly.servlet.multipart.DefaultFileRenamePolicy;

import notice.model.service.NoticeService;
import notice.model.vo.Notice;

/**
 * Servlet implementation class NoticeWriteServlet
 */
@WebServlet("/nwrite")
public class NoticeWriteServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;

    /**
     * Default constructor. 
     */
    public NoticeWriteServlet() {
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		response.setContentType("text/html; charset=utf-8");
		PrintWriter out = response.getWriter();
		if(!ServletFileUpload.isMultipartContent(request)) {
			out.println("<script>");
			out.print("alert('form 태그에 enctype 속성이 설정되지 않았습니다!');");
			out.println("history.back(-1)");
			out.println("</script>");
			out.flush();
			out.close();
		}
		
		int maxSize = 1024 * 1024 * 5;
		
		
		String root = request.getSession().getServletContext().getRealPath("/");
		String savePath = root + "files/noticeimages";
		
		MultipartRequest mrequest = new MultipartRequest(request, savePath, maxSize, "UTF-8", new DefaultFileRenamePolicy());
		
		Notice notice = new Notice();
		notice.setNoticeTitle(mrequest.getParameter("ntitle"));
		notice.setNoticeContents(mrequest.getParameter("ncontents"));
		
		String originalImageName1 = mrequest.getFilesystemName("nupimage1");
		String originalImageName2 = mrequest.getFilesystemName("nupimage2");
		String originalImageName3 = mrequest.getFilesystemName("nupimage3");
		
		SimpleDateFormat sdf = new SimpleDateFormat("yyyyMMddHHmmss");
		Date currentTime = new Date(System.currentTimeMillis());
		
		if(originalImageName1 != null) {
		
		String renameImageName1 = sdf.format(currentTime)+ "11."
				+ originalImageName1.substring(originalImageName1.lastIndexOf(".") + 1);
		File originalImage1 = new File(savePath + "\\" + originalImageName1);
		File renameImage1 = new File(savePath + "\\" + renameImageName1);
		
		if(!originalImage1.renameTo(renameImage1)) {
			int read = -1;
			byte[] buf = new byte[1024];
			FileInputStream fin = new FileInputStream(originalImage1);
			FileOutputStream fout = new FileOutputStream(renameImage1);
			while((read = fin.read(buf, 0, buf.length)) != -1) {
				fout.write(buf, 0, read);
			}
			fin.close();
			fout.close();
			originalImage1.delete();
		}
		
		notice.setNoticeImage1(renameImageName1);
		}
		if(originalImageName2 != null) {
		String renameImageName2 = sdf.format(currentTime)+ "22."
				+ originalImageName2.substring(originalImageName2.lastIndexOf(".") + 1);
		File originalImage2 = new File(savePath + "\\" + originalImageName2);
		File renameImage2 = new File(savePath + "\\" + renameImageName2);
		
		if(!originalImage2.renameTo(renameImage2)) {
			int read = -1;
			byte[] buf = new byte[1024];
			FileInputStream fin = new FileInputStream(originalImage2);
			FileOutputStream fout = new FileOutputStream(renameImage2);
			while((read = fin.read(buf, 0, buf.length)) != -1) {
				fout.write(buf, 0, read);
			}
			fin.close();
			fout.close();
			originalImage2.delete();
		}
		notice.setNoticeImage2(renameImageName2);
		}
		if(originalImageName3 != null) {
		String renameImageName3 = sdf.format(currentTime)+ "33."
				+ originalImageName3.substring(originalImageName3.lastIndexOf(".") + 1);
		
		File originalImage3 = new File(savePath + "\\" + originalImageName3);
		File renameImage3 = new File(savePath + "\\" + renameImageName3);
		
		if(!originalImage3.renameTo(renameImage3)) {
			int read = -1;
			byte[] buf = new byte[1024];
			FileInputStream fin = new FileInputStream(originalImage3);
			FileOutputStream fout = new FileOutputStream(renameImage3);
			while((read = fin.read(buf, 0, buf.length)) != -1) {
				fout.write(buf, 0, read);
			}
			fin.close();
			fout.close();
			originalImage3.delete();
		}
		
		notice.setNoticeImage3(renameImageName3);
		}
		int result = new NoticeService().insertNotice(notice);
		
		if(result> 0) {
			response.sendRedirect("/lb/nlist?page=1");
		}else {
			out.println("<script>");
			out.print("alert('공지글 등록 실패!');");
			out.println("history.back(-1)");
			out.println("</script>");
			out.flush();
			out.close();
		}
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		doGet(request, response);
	}

}
