package review.model.service;

import static common.JDBCTemplate.close;
import static common.JDBCTemplate.commit;
import static common.JDBCTemplate.getConnection;
import static common.JDBCTemplate.rollback;

import java.sql.Connection;
import java.util.ArrayList;

import review.model.dao.ReviewDao;
import review.model.vo.Review;

public class ReviewService {
	ReviewDao rdao = new ReviewDao();
	
	public ReviewService() {}
	
	public ArrayList<Review> selectList(int currentPage, int limit){
		Connection conn = getConnection();
		ArrayList<Review> list = rdao.selectList(conn, currentPage, limit);
		close(conn);
		return list;
	}
	
	public Review selectReview(int reviewNo) {
		Connection conn = getConnection();
		Review review = rdao.selectReview(conn, reviewNo);
		close(conn);
		return review;
	}
	
	public void addLikeCount(int reviewLike) {
		null
	}
	
	public int insertReview(Review review) {
		Connection conn = getConnection();
		int result = rdao.insertReview(conn, review);
		if(result > 0)
			commit(conn);
		else
			rollback(conn);
		close(conn);
		return result;
	}
	
	public int updateReview(Review review) {
		Connection conn = getConnection();
		int result = rdao.updateReview(conn, review);
		if(result > 0)
			commit(conn);
		else
			rollback(conn);
		close(conn);
		return result;
	}
	
	public int deleteReview(int reviewNo) {
		Connection conn = getConnection();
		int result = rdao.deleteReview(conn, reviewNo);
		if(result > 0)
			commit(conn);
		else
			rollback(conn);
		close(conn);
		return result;
	}
	
	public int getListCount() {
		Connection conn = getConnection();
		int listCount = rdao.getListCount(conn);
		close(conn);
		return listCount;
	}
}
