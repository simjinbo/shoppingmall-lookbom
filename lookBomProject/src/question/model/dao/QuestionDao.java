package question.model.dao;

import java.sql.Connection;
import java.util.ArrayList;

import question.model.vo.Question;

public class QuestionDao {

	public ArrayList<Question> selectList(Connection conn, int currentPage, int limit) {
		// TODO Auto-generated method stub
		return null;
	}

	public Question selectQuestion(Connection conn, int questionNo) {
		// TODO Auto-generated method stub
		return null;
	}

	public int insertQuestion(Connection conn, Question question) {
		// TODO Auto-generated method stub
		return 0;
	}

	public int deleteQuestion(Connection conn, int questionNo) {
		// TODO Auto-generated method stub
		return 0;
	}

	public int insertReply(Connection conn, Question questionReplyContents) {
		// TODO Auto-generated method stub
		return 0;
	}

	public int updateReply(Connection conn, Question question) {
		// TODO Auto-generated method stub
		return 0;
	}

	public int deleteReply(Connection conn, int questionNo) {
		// TODO Auto-generated method stub
		return 0;
	}

	public int getListCount(Connection conn) {
		// TODO Auto-generated method stub
		return 0;
	}

}
