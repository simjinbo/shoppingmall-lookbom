package reviewReply.model.service;

import static common.JDBCTemplate.*;

import java.sql.Connection;
import java.util.ArrayList;

import reviewReply.model.dao.ReviewReplyDao;
import reviewReply.model.vo.ReviewReply;

public class ReviewReplyService {
	ReviewReplyDao rrdao = new ReviewReplyDao();
	
	public ReviewReplyService() {}
	
	public ArrayList<ReviewReply> selectList(int currentPage, int limit){
		Connection conn = getConnection();
		ArrayList<ReviewReply> list = rrdao.selectList(conn, currentPage, limit);
		close(conn);
		return list;
	}
	
	public ReviewReply selectReviewReply(int reviewReplyNo) {
		Connection conn = getConnection();
		ReviewReply reviewReply = rrdao.selectReviewReply(conn, reviewReplyNo);
		close(conn);
		return reviewReply;
	}
	
	public int insertReviewReply(ReviewReply reviewReply) {
		Connection conn = getConnection();
		int result = rrdao.insertReview(conn, reviewReply);
		if(result > 0)
			commit(conn);
		else
			rollback(conn);
		close(conn);
		return result;
	}
	
	public int updateReviewReply(ReviewReply reviewReply) {
		Connection conn = getConnection();
		int result = rrdao.updateReview(conn, reviewReply);
		if(result > 0)
			commit(conn);
		else
			rollback(conn);
		close(conn);
		return result;
	}
	
	public int deleteReviewReply(ReviewReply reviewReplyNo) {
		Connection conn = getConnection();
		int result = rrdao.deleteReview(conn, reviewReplyNo);
		if(result > 0)
			commit(conn);
		else
			rollback(conn);
		close(conn);
		return result;
	}
	
	public int getListCount() {
		Connection conn = getConnection();
		int listCount = rrdao.getListCount(conn);
		close(conn);
		return listCount;
	}
}
