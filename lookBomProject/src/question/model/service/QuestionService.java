package question.model.service;

import static common.JDBCTemplate.*;

import java.sql.Connection;
import java.util.ArrayList;

import question.model.dao.QuestionDao;
import question.model.vo.Question;

public class QuestionService {
	QuestionDao qdao = new QuestionDao();
	
	public QuestionService() {}
	
	public ArrayList<Question> selectList(int currentPage, int limit){
		Connection conn = getConnection();
		ArrayList<Question> list = qdao.selectList(conn, currentPage, limit);
		close(conn);
		return list;
	}
	
	public Question selectQuestion(int questionNo) {
		Connection conn = getConnection();
		Question question = qdao.selectQuestion(conn, questionNo);
		close(conn);
		return question;
	}
	
	public int insertQuestion(Question question) {
		Connection conn = getConnection();
		int result = qdao.insertQuestion(conn, question);
		if(result > 0)
			commit(conn);
		else
			rollback(conn);
		close(conn);
		return result;
	}
	
	public int deleteQuestion(int questionNo) {
		Connection conn = getConnection();
		int result = qdao.deleteQuestion(conn, questionNo);
		if(result > 0)
			commit(conn);
		else
			rollback(conn);
		close(conn);
		return result;
	}
	
	public int insertReply(Question questionReplyContents) {
		Connection conn = getConnection();
		int result = qdao.insertReply(conn, questionReplyContents);
		if(result > 0)
			commit(conn);
		else
			rollback(conn);
		close(conn);
		return result;
	}
	
	public int updateReply(Question question) {
		Connection conn = getConnection();
		int result = qdao.updateReply(conn, question);
		if(result > 0)
			commit(conn);
		else
			rollback(conn);
		close(conn);
		return result;
	}
	
	public int deleteReply(int questionNo) {
		Connection conn = getConnection();
		int result = qdao.deleteReply(conn, questionNo);
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
