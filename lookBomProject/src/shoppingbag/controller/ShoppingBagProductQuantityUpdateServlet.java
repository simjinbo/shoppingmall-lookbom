package shoppingbag.controller;

import java.io.IOException;
import java.io.PrintWriter;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import shoppingbag.model.service.ShoppingBagService;
import shoppingbag.model.vo.ShoppingBagList;

/**
 * Servlet implementation class ShoppingBagProductQuantityUpdateServlet
 */
@WebServlet("/sbpquantity")
public class ShoppingBagProductQuantityUpdateServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public ShoppingBagProductQuantityUpdateServlet() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// 장바구니 상품 수량 업데이트 컨트롤러
		
		int sbno = Integer.parseInt(request.getParameter("sbno"));
		int productquantity = Integer.parseInt(request.getParameter("productquantity"));
		int result = new ShoppingBagService().updateQuantity(sbno, productquantity);
		
		response.setContentType("text/html; charset=UTF-8");
		PrintWriter client = response.getWriter();
		client.write(String.valueOf(productquantity));
		client.flush();
		client.close();
		
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		doGet(request, response);
	}

}
