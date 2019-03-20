package screen.model.dao;

import java.sql.*;
import java.util.*;
import static common.JDBCTemplate.*;

import productOrder.model.vo.ProductOrder;
import screen.model.vo.Screen;

public class ScreenDao {
	public ScreenDao() {}
	
	public ArrayList<Screen> selectList(Connection conn){
		ArrayList<Screen> list = new ArrayList<Screen>();
		
		Statement stmt = null;
		ResultSet rset = null;
		
		String query = "select * from screen_banner";
		
		try {
			stmt = conn.createStatement();
			rset = stmt.executeQuery(query);
			
			while(rset.next()) {
				Screen screen = new Screen();
				
				screen.setBannerNo(rset.getInt("BANNER_NO"));
				screen.setBannerUrl(rset.getString("BANNER_URL"));
				screen.setBannerImg(rset.getString("BANNER_IMG"));
				screen.setBannerDivision(rset.getInt("BANNER_DIVISION"));
				screen.setAdContents(rset.getString("AD_CONTENTS"));
				
				list.add(screen);				
			}
		} catch (Exception e) {
			e.printStackTrace();
		} finally {
			close(rset);
			close(stmt);
		}
		return list;
	}
}
