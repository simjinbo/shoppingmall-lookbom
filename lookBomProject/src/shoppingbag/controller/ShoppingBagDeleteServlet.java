package shoppingbag.controller;

import java.io.IOException;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import shoppingbag.model.service.ShoppingBagService;

/**
 * Servlet implementation class ShoppingBagDeleteServlet
 */
@WebServlet("/sbdelete")
public class ShoppingBagDeleteServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public ShoppingBagDeleteServlet() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// 선택된 장바구니 상품 삭제 컨트롤러
		String[] sbdeletearr = request.getParameterValues("RowCheck");
		int[] sbdelete = new int[sbdeletearr.length];
		for(int i = 0; i<sbdeletearr.length; i++) {
			sbdelete[i] = Integer.parseInt(sbdeletearr[i]);
			System.out.println(sbdelete[i]);
		}
		
		int result = new ShoppingBagService().deleteSbProduct(sbdelete);
		
		if(result > 0) {
			response.sendRedirect("/lb/sblist");
		} else {
			RequestDispatcher view = request.getRequestDispatcher("views/shoppingbag/shoppingBagError.jsp");
			request.setAttribute("message", "상품삭제를 실패하였습니다.");
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
