package review.model.dao;

import java.sql.Connection;
import java.util.ArrayList;

import review.model.vo.Review;

public class ReviewDao {

	public ArrayList<Review> selectList(Connection conn, int currentPage, int limit) {
		// TODO Auto-generated method stub
		return null;
	}

	public Review selectReview(Connection conn, int reviewNo) {
		// TODO Auto-generated method stub
		return null;
	}

	public int insertReview(Connection conn, Review review) {
		// TODO Auto-generated method stub
		return 0;
	}

	public int updateReview(Connection conn, Review review) {
		// TODO Auto-generated method stub
		return 0;
	}

	public int deleteReview(Connection conn, int reviewNo) {
		// TODO Auto-generated method stub
		return 0;
	}

	public int getListCount(Connection conn) {
		// TODO Auto-generated method stub
		return 0;
	}

}
