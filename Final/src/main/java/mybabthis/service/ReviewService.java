package mybabthis.service;

import java.util.List;

import mybabthis.entity.Review;

public interface ReviewService {
	int createReview(Review review); // Review 생성
	int updateReview(Review review); // Review 수정
	int deleteReview(int reviewNo); // Review 삭제
	Review getReviewByReviewNo(int reviewNo); // Review 검색 By ReviewNo
	List<Review> getReviewByResNo(int resNo); // Review 검색 By ByResNo
	List<Review> getReviewByUserId(String userId); // Review 검색 By UserId
	List<Review> getAllReview(); // Review 검색 All Review
	public float getAverageScore(int resNo);// AverageScore 검색 By ResNo 
}
