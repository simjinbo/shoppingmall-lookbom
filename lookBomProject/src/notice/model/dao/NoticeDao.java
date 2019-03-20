package notice.model.dao;

import static common.JDBCTemplate.*;

import java.sql.*;
import java.util.ArrayList;

import notice.model.vo.Notice;

public class NoticeDao {

	public int getListCount(Connection conn) {
		int listCount = 0;
		Statement stmt = null;
		ResultSet rset = null;
		
		String query = "select count(*) from notice";
		
		try {
			stmt = conn.createStatement();
			rset = stmt.executeQuery(query);
			
			if(rset.next()) {
				listCount = rset.getInt(1);
			}
		}catch (Exception e) {
			e.printStackTrace();
		}finally {
			close(rset);
			close(stmt);
		}
		return listCount;
	}

	public ArrayList<Notice> selectSearch(Connection conn, String noticeTitle, String noticeCotents, int currentPage,
			int limit) {
		// TODO Auto-generated method stub
		return null;
	}

	public int deleteNotice(Connection conn, int noticeNo) {
		// TODO Auto-generated method stub
		return 0;
	}

	public int updateNotice(Connection conn, Notice notice) {
		int result = 0;
		PreparedStatement pstmt = null;
		
		String query = "update notice set "
				+ "notice_title = ?, notice_contents = ?, notice_image1 = ?, notice_image2 = ?, notice_image3 = ? "
				+ "where notice_no = ?";
		try {
			pstmt = conn.prepareStatement(query);
			pstmt.setString(1, notice.getNoticeTitle());
			pstmt.setString(2, notice.getNoticeContents());
			pstmt.setString(3, notice.getNoticeImage1());
			pstmt.setString(4, notice.getNoticeImage2());
			pstmt.setString(5, notice.getNoticeImage3());
			pstmt.setInt(6, notice.getNoticeNo());
			
			result = pstmt.executeUpdate();
			
		} catch (Exception e) {
			e.printStackTrace();
		} finally {
			close(pstmt);
		}
		return result;
	}

	public int insertNotice(Connection conn, Notice notice) {
		int result = 0;
		PreparedStatement pstmt = null;
		
		String query = "insert into notice values(seq_notice_no.nextval, ?, ?, default, default, ?, ?, ?)";
		
		try {
			pstmt = conn.prepareStatement(query);
			pstmt.setString(1, notice.getNoticeTitle());
			pstmt.setString(2, notice.getNoticeContents());
			pstmt.setString(3, notice.getNoticeImage1());
			pstmt.setString(4, notice.getNoticeImage2());
			pstmt.setString(5, notice.getNoticeImage3());
			
			result = pstmt.executeUpdate();
			
		} catch (Exception e) {
			e.printStackTrace();
		} finally {
			close(pstmt);
		}
		return result;
	}

	public Notice selectNotice(Connection conn, int noticeNo) {
		// TODO Auto-generated method stub
		return null;
	}

	public ArrayList<Notice> selectList(Connection conn, int currentPage, int limit) {
		ArrayList<Notice> list = new ArrayList<Notice>();
		PreparedStatement pstmt = null;
		ResultSet rset = null;
		
		int startRow = (currentPage -1) * limit + 1;
		int endRow = startRow + limit - 1;
		
		String query = 
				"SELECT * " + 
				"FROM( " + 
				"SELECT ROWNUM RNUM, NOTICE_NO, NOTICE_TITLE, NOTICE_CONTENTS, NOTICE_WRITE_DATE, " + 
				"NOTICE_VIEWS, NOTICE_IMAGE1, NOTICE_IMAGE2, NOTICE_IMAGE3 " + 
				"FROM NOTICE) " + 
				"WHERE RNUM >= ? AND RNUM <= ?";
		
		try {
			pstmt = conn.prepareStatement(query);
			pstmt.setInt(1, startRow);
			pstmt.setInt(2, endRow);
			
			rset = pstmt.executeQuery();
			
			while(rset.next()) {
				Notice notice = new Notice();
			
				notice.setNoticeNo(rset.getInt("notice_no"));
				notice.setNoticeTitle(rset.getString("notice_title"));
				notice.setNoticeContents(rset.getString("notice_contents"));
				notice.setNoticeViews(rset.getInt("notice_views"));
				notice.setNoticeWriteDate(rset.getDate("notice_write_date"));
				notice.setNoticeImage1(rset.getString("notice_image1"));
				notice.setNoticeImage2(rset.getString("notice_image2"));
				notice.setNoticeImage3(rset.getString("notice_image3"));
				
				list.add(notice);
			}
		} catch (Exception e) {
			e.printStackTrace();
		}finally {
			close(rset);
			close(pstmt);
		}
		return list;
	}

}
