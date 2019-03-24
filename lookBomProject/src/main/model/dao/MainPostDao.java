package main.model.dao;

import static common.JDBCTemplate.close;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.Statement;
import java.util.ArrayList;

import main.model.vo.MainPost;
public class MainPostDao {

	public int insertPost(Connection conn, MainPost mpost) {
		PreparedStatement stmt = null;
		String query = "INSERT INTO SCREEN_BANNER (BANNER_NO, BANNER_URL,BANNER_IMG, BANNER_DIVISION)" + 
				"VALUES (to_char(SEQ_BANNER_NO.NEXTVAL) ,? , ? ,1)";
		int result =0;
		try{
			stmt = conn.prepareStatement(query);
			stmt.setString(1, mpost.getUrl());
			stmt.setString(2, mpost.getImg());
			result = stmt.executeUpdate();
			
		}catch(Exception e) {
			e.printStackTrace();
		}finally {
			close(stmt);
		}
		return result;
	}

	

	public ArrayList<MainPost> selectPost(Connection conn) {
		Statement stmt = null;
		ResultSet rset = null;
		String query = "select * from screen_banner order by banner_no";
		ArrayList<MainPost> list = new ArrayList<>();
		try {
			stmt = conn.createStatement();
			rset = stmt.executeQuery(query);
			while(rset.next()) {
				MainPost post = new MainPost();
				post.setPostNo(rset.getInt("banner_no"));
				post.setUrl(rset.getString("banner_url"));
				post.setImg(rset.getString("banner_img"));
				post.setCategory(rset.getInt("banner_division"));
				post.setContent(rset.getString("ad_contents"));
				
				list.add(post);
			}
		}catch(Exception e) {
			e.printStackTrace();
		}finally {
			close(rset);
			close(stmt);
		}
		return list;
	}

	public int deletePost(Connection conn, String rnum ) {
		
		int result = 0;
		return result;
	}

}
