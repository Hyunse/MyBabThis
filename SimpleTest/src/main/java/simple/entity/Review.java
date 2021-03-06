package simple.entity;

import java.io.Serializable;
import java.util.Date;

/**
 * 맛집리뷰 모델 클래스.
 * 
 * @author generated by ERMaster
 * @version $Id$
 */
public class Review implements Serializable {

	/** serialVersionUID. */
	private static final long serialVersionUID = 1L;

	/** 리뷰번호. */
	private Integer reviewNo;

	/** 리뷰점수. */
	private Integer reviewScore;

	/** 리뷰내용. */
	private String reviewContent;

	/** 작성날짜. */
	private Date reviewRegdate;

	/** 수정날짜. */
	private Date reviewUpdatedate;

	/** 맛집. */
	private Restaurant restaurant;

	/** 사용자. */
	private Users users;
	
	/**
	 * 생성자.
	 */
	public Review() {
	}

	/**
	 * 리뷰번호을 설정합니다..
	 * 
	 * @param reviewNo
	 *            리뷰번호
	 */
	public void setReviewNo(Integer reviewNo) {
		this.reviewNo = reviewNo;
	}

	/**
	 * 리뷰번호을 가져옵니다..
	 * 
	 * @return 리뷰번호
	 */
	public Integer getReviewNo() {
		return this.reviewNo;
	}

	/**
	 * 리뷰점수을 설정합니다..
	 * 
	 * @param reviewScore
	 *            리뷰점수
	 */
	public void setReviewScore(Integer reviewScore) {
		this.reviewScore = reviewScore;
	}

	/**
	 * 리뷰점수을 가져옵니다..
	 * 
	 * @return 리뷰점수
	 */
	public Integer getReviewScore() {
		return this.reviewScore;
	}

	/**
	 * 리뷰내용을 설정합니다..
	 * 
	 * @param reviewContent
	 *            리뷰내용
	 */
	public void setReviewContent(String reviewContent) {
		this.reviewContent = reviewContent;
	}

	/**
	 * 리뷰내용을 가져옵니다..
	 * 
	 * @return 리뷰내용
	 */
	public String getReviewContent() {
		return this.reviewContent;
	}

	/**
	 * 작성날짜을 설정합니다..
	 * 
	 * @param reviewRegdate
	 *            작성날짜
	 */
	public void setReviewRegdate(Date reviewRegdate) {
		this.reviewRegdate = reviewRegdate;
	}

	/**
	 * 작성날짜을 가져옵니다..
	 * 
	 * @return 작성날짜
	 */
	public Date getReviewRegdate() {
		return this.reviewRegdate;
	}

	/**
	 * 수정날짜을 설정합니다..
	 * 
	 * @param reviewUpdatedate
	 *            수정날짜
	 */
	public void setReviewUpdatedate(Date reviewUpdatedate) {
		this.reviewUpdatedate = reviewUpdatedate;
	}

	/**
	 * 수정날짜을 가져옵니다..
	 * 
	 * @return 수정날짜
	 */
	public Date getReviewUpdatedate() {
		return this.reviewUpdatedate;
	}

	/**
	 * 맛집을 설정합니다..
	 * 
	 * @param restaurant
	 *            맛집
	 */
	public void setRestaurant(Restaurant restaurant) {
		this.restaurant = restaurant;
	}

	/**
	 * 맛집을 가져옵니다..
	 * 
	 * @return 맛집
	 */
	public Restaurant getRestaurant() {
		return this.restaurant;
	}

	/**
	 * 사용자을 설정합니다..
	 * 
	 * @param users
	 *            사용자
	 */
	public void setUsers(Users users) {
		this.users = users;
	}

	/**
	 * 사용자을 가져옵니다..
	 * 
	 * @return 사용자
	 */
	public Users getUsers() {
		return this.users;
	}

	/**
	 * {@inheritDoc}
	 */
	@Override
	public int hashCode() {
		final int prime = 31;
		int result = 1;
		result = prime * result + ((reviewNo == null) ? 0 : reviewNo.hashCode());
		return result;
	}

	/**
	 * {@inheritDoc}
	 */
	@Override
	public boolean equals(Object obj) {
		if (this == obj) {
			return true;
		}
		if (obj == null) {
			return false;
		}
		if (getClass() != obj.getClass()) {
			return false;
		}
		Review other = (Review) obj;
		if (reviewNo == null) {
			if (other.reviewNo != null) {
				return false;
			}
		} else if (!reviewNo.equals(other.reviewNo)) {
			return false;
		}
		return true;
	}

}
