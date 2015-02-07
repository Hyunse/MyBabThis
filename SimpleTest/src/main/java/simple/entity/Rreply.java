package simple.entity;

import java.io.Serializable;
import java.util.Date;

/**
 * 맛집댓글 모델 클래스.
 * 
 * @author generated by ERMaster
 * @version $Id$
 */
public class Rreply implements Serializable {

	/** serialVersionUID. */
	private static final long serialVersionUID = 1L;

	/** 댓글번호. */
	private Integer rreplyNo;

	/** 댓글내용. */
	private String rreplyContent;

	/** 작성날짜. */
	private Date rreplyRegdate;

	/** 수정날짜. */
	private Date rreplyUpdatedate;

	/** 맛집. */
	private Restaurant restaurant;

	/** 사용자. */
	private Users users;

	/**
	 * 생성자.
	 */
	public Rreply() {
	}

	/**
	 * 댓글번호을 설정합니다..
	 * 
	 * @param rreplyNo
	 *            댓글번호
	 */
	public void setRreplyNo(Integer rreplyNo) {
		this.rreplyNo = rreplyNo;
	}

	/**
	 * 댓글번호을 가져옵니다..
	 * 
	 * @return 댓글번호
	 */
	public Integer getRreplyNo() {
		return this.rreplyNo;
	}

	/**
	 * 댓글내용을 설정합니다..
	 * 
	 * @param rreplyContent
	 *            댓글내용
	 */
	public void setRreplyContent(String rreplyContent) {
		this.rreplyContent = rreplyContent;
	}

	/**
	 * 댓글내용을 가져옵니다..
	 * 
	 * @return 댓글내용
	 */
	public String getRreplyContent() {
		return this.rreplyContent;
	}

	/**
	 * 작성날짜을 설정합니다..
	 * 
	 * @param rreplyRegdate
	 *            작성날짜
	 */
	public void setRreplyRegdate(Date rreplyRegdate) {
		this.rreplyRegdate = rreplyRegdate;
	}

	/**
	 * 작성날짜을 가져옵니다..
	 * 
	 * @return 작성날짜
	 */
	public Date getRreplyRegdate() {
		return this.rreplyRegdate;
	}

	/**
	 * 수정날짜을 설정합니다..
	 * 
	 * @param rreplyUpdatedate
	 *            수정날짜
	 */
	public void setRreplyUpdatedate(Date rreplyUpdatedate) {
		this.rreplyUpdatedate = rreplyUpdatedate;
	}

	/**
	 * 수정날짜을 가져옵니다..
	 * 
	 * @return 수정날짜
	 */
	public Date getRreplyUpdatedate() {
		return this.rreplyUpdatedate;
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
		result = prime * result + ((rreplyNo == null) ? 0 : rreplyNo.hashCode());
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
		Rreply other = (Rreply) obj;
		if (rreplyNo == null) {
			if (other.rreplyNo != null) {
				return false;
			}
		} else if (!rreplyNo.equals(other.rreplyNo)) {
			return false;
		}
		return true;
	}

}