package qna.model.service;

import static common.JDBCTemplate.*;

import java.sql.Connection;
import java.util.ArrayList;

import qna.model.dao.QnaDao;
import qna.model.vo.Qna;

public class QnaService {
	QnaDao qdao = new QnaDao();
	
	public QnaService() {}
	
	public ArrayList<Qna> selectList(int currentPage, int limit){
		Connection conn = getConnection();
		ArrayList<Qna> list = qdao.selectList(conn, currentPage, limit);
		close(conn);
		return list;
	}
	
	public Qna selectQna(int qnaNo) {
		Connection conn = getConnection();
		Qna qna = qdao.selectQna(conn, qnaNo);
		close(conn);
		return qna;
	}
	
	public int insertQna(Qna qna) {
		Connection conn = getConnection();
		int result = qdao.insertQna(conn, qna);
		if(result > 0)
			commit(conn);
		else
			rollback(conn);
		close(conn);
		return result;
	}
	
	public int deleteQna(int qnaNo) {
		Connection conn = getConnection();
		int result = qdao.deleteQna(conn, qnaNo);
		if(result > 0)
			commit(conn);
		else
			rollback(conn);
		close(conn);
		return result;
	}
	
	public int insertReply(Qna qnaReplyContents) {
		Connection conn = getConnection();
		int result = qdao.insertReply(conn, qnaReplyContents);
		if(result > 0)
			commit(conn);
		else
			rollback(conn);
		close(conn);
		return result;
	}
	
	public int updateReply(Qna qna) {
		Connection conn = getConnection();
		int result = qdao.updateReply(conn, qna);
		if(result > 0)
			commit(conn);
		else
			rollback(conn);
		close(conn);
		return result;
	}
	
	public int deleteReply(int qnaNo) {
		Connection conn = getConnection();
		int result = qdao.deleteReply(conn, qnaNo);
		if(result > 0)
			commit(conn);
		else
			rollback(conn);
		close(conn);
		return result;
	}
	
	public int getListCount() {
		Connection conn = getConnection();
		int listCount = qdao.getListCount(conn);
		close(conn);
		return listCount;
	}
}
