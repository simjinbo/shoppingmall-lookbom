package cerlist.model.dao;

import static common.JDBCTemplate.*;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.Statement;
import java.util.ArrayList;

import cerlist.model.vo.CerList;


public class CerListDao {
	public CerListDao() {}

	public int getListCount(Connection conn) {
		int listCount = 0;
		Statement stmt = null;
		ResultSet rset = null;
		
		String query = "select count(*) from cer_list";
		
		try {
			stmt = conn.createStatement();
			rset = stmt.executeQuery(query);
			
			if(rset.next()) {
				listCount = rset.getInt(1);
			}
		} catch (Exception e) {
			e.printStackTrace();
		} finally {
			close(rset);
			close(stmt);
		}
		
		return listCount;
	}
	
	public ArrayList<CerList> selectPomList(Connection conn, int currentPage, int limit) {
		ArrayList<CerList> list = new ArrayList<CerList>();
		PreparedStatement pstmt = null;
		ResultSet rset = null;
		
		int startRow = (currentPage -1) * limit + 1;
		int endRow = startRow + limit - 1;
		
		String query = "SELECT * " + 
				"FROM (SELECT ROWNUM RNUM, RECEPTION_NO, RECEPTION_DATE, RECEPTION_TYPE, RECEPTION_PROGRESS, RECEPTION_TITLE, RECEPTION_CONTENT, ORDER_NO " +
				"FROM (SELECT * FROM CER_LIST " + 
				"ORDER BY RECEPTION_NO DESC))" + 
				"WHERE RNUM >= ? AND RNUM <= ?";
		
		try {
			pstmt = conn.prepareStatement(query);
			pstmt.setInt(1, startRow);
			pstmt.setInt(2, endRow);
			
			rset = pstmt.executeQuery();
			
			while(rset.next()) {
				CerList cer = new CerList();
				
				cer.setReceptionNo(rset.getInt("RECEPTION_NO"));
				cer.setReceptionDate(rset.getDate("RECEPTION_DATE"));
				cer.setReceptionType(rset.getString("RECEPTION_TYPE"));
				cer.setReceptionProgress(rset.getString("RECEPTION_PROGRESS"));
				cer.setReceptionTitle(rset.getString("RECEPTION_TITLE"));
				cer.setReceptionContent(rset.getString("RECEPTION_CONTENT"));
				cer.setOrderNo(rset.getInt("ORDER_NO"));
				
				list.add(cer);				
			}
		} catch (Exception e) {
			e.printStackTrace();
		} finally {
			close(rset);
			close(pstmt);
		}
		
		return list;
	}

}
