package qna.model.dao;

import java.sql.Connection;
import java.util.ArrayList;

import qna.model.vo.Qna;

public class QnaDao {

	public ArrayList<Qna> selectList(Connection conn, int currentPage, int limit) {
		// TODO Auto-generated method stub
		return null;
	}

	public Qna selectQna(Connection conn, int qnaNo) {
		// TODO Auto-generated method stub
		return null;
	}

	public int insertQna(Connection conn, Qna qna) {
		// TODO Auto-generated method stub
		return 0;
	}

	public int deleteQna(Connection conn, int qnaNo) {
		// TODO Auto-generated method stub
		return 0;
	}

	public int insertReply(Connection conn, Qna qnaReplyContents) {
		// TODO Auto-generated method stub
		return 0;
	}

	public int updateReply(Connection conn, Qna qna) {
		// TODO Auto-generated method stub
		return 0;
	}

	public int deleteReply(Connection conn, int qnaNo) {
		// TODO Auto-generated method stub
		return 0;
	}

	public int getListCount(Connection conn) {
		// TODO Auto-generated method stub
		return 0;
	}



}
