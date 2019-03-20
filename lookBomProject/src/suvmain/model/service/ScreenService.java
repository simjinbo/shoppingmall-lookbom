package screen.model.service;

import static common.JDBCTemplate.close;
import static common.JDBCTemplate.getConnection;

import java.sql.Connection;
import java.util.ArrayList;

import productOrder.model.vo.ProductOrder;
import screen.model.dao.ScreenDao;
import screen.model.vo.Screen;

public class ScreenService {
	
	private ScreenDao sdao = new ScreenDao();
	
	public ScreenService() {}
	
	public ArrayList<Screen> selectList() {
		Connection conn = getConnection();
		ArrayList<Screen> list = sdao.selectList(conn);
		close(conn);
		return list;
	}

}
