package cerlist.model.service;

import static common.JDBCTemplate.close;
import static common.JDBCTemplate.getConnection;

import java.sql.Connection;
import java.util.ArrayList;

import cerlist.model.dao.CerListDao;
import cerlist.model.vo.CerList;
import productOrder.model.vo.ProductOrder;

public class CerListService {
	private CerListDao cdao = new CerListDao(); 
	
	public CerListService() {}

	public int getListCount() {
		Connection conn = getConnection();
		int listCount = cdao.getListCount(conn);
		close(conn);
		return listCount;
	}

	public ArrayList<CerList> selectCerList(int currentPage, int limit) {
		Connection conn= getConnection();
		ArrayList<CerList> list = cdao.selectPomList(conn, currentPage, limit);
		close(conn);
		return list;
	}
}
