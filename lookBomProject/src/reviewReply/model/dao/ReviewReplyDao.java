package reviewReply.model.dao;

import java.sql.Connection;
import java.util.ArrayList;

import reviewReply.model.vo.ReviewReply;

public class ReviewReplyDao {

	public ArrayList<ReviewReply> selectList(Connection conn, int currentPage, int limit) {
		// TODO Auto-generated method stub
		return null;
	}

	public ReviewReply selectReviewReply(Connection conn, int reviewReplyNo) {
		// TODO Auto-generated method stub
		return null;
	}

	public int insertReview(Connection conn, ReviewReply reviewReply) {
		// TODO Auto-generated method stub
		return 0;
	}

	public int updateReview(Connection conn, ReviewReply reviewReply) {
		// TODO Auto-generated method stub
		return 0;
	}

	public int deleteReview(Connection conn, ReviewReply reviewReplyNo) {
		// TODO Auto-generated method stub
		return 0;
	}

	public int getListCount(Connection conn) {
		// TODO Auto-generated method stub
		return 0;
	}

}
