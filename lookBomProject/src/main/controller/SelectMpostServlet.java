package main.controller;

import java.io.IOException;
import java.io.PrintWriter;
import java.util.ArrayList;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import main.model.service.MainPostService;
import main.model.vo.MainPost;

/**
 * Servlet implementation class SelectMpostServlet
 */
@WebServlet("/mpselect")
public class SelectMpostServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public SelectMpostServlet() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		//메인 포스트 셀렉트
		
		response.setContentType("text/html; charset:utf-8");
		ArrayList<MainPost> list = new MainPostService().selectPost();
		PrintWriter out =response.getWriter();
		  RequestDispatcher view = null;
		  if(list.size() > 0 ) {
	   view = request.getRequestDispatcher("views/adminMain/mainPostUpdate.jsp");
	    request.setAttribute("list", list);
	    view.forward(request, response);
	   
		  }else {
			  view = request.getRequestDispatcher("views/common/mainError.jsp");
			  request.setAttribute("message", "에러");
			  view.forward(request, response);
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
