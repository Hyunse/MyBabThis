package mybabthis.entity;

import java.io.Serializable;
import java.util.Date;
import java.util.HashSet;
import java.util.Set;

/**
 * 맛집 모델 클래스.
 * 
 * @author generated by ERMaster
 * @version $Id$
 */
public class Restaurant implements Serializable {

	/** serialVersionUID. */
	private static final long serialVersionUID = 1L;

	/** 맛집번호. */
	private Integer resNo;

	/** 맛집이름. */
	private String resName;

	/** 맛집전화번호. */
	private String resNumber;

	/** 맛집평점. */
	private Integer resScore;

	/** 맛집주소. */
	private String resLoc;

	/** 맛집내용. */
	private String resContent;

	/** 사용자. */
	private Users users;
	private String userId;

	/** 맛집사진. */
	private String resImg;

	/** 지역. */
	private Loc loc;
	
	private String locName;

	/** 맛집종류. */
	private String resKind;

	/** 맛집등록일. */
	private Date resRegdate;

	/** 맛집수정일. */
	private Date resUpdatedate;

	/** 맛집댓글 목록. */
	private Set<Rreply> rreplySet;

	/** 즐겨찾기 목록. */
	private Set<Favorite> favoriteSet;

	/** 맛집리뷰 목록. */
	private Set<Review> reviewSet;

	/**
	 * 생성자.
	 */
	public Restaurant() {
		this.favoriteSet = new HashSet<Favorite>();
		this.reviewSet = new HashSet<Review>();
		this.rreplySet = new HashSet<Rreply>();
	}

	/**
	 * 맛집번호을 설정합니다..
	 * 
	 * @param resNo
	 *            맛집번호
	 */
	public void setResNo(Integer resNo) {
		this.resNo = resNo;
	}

	/**
	 * 맛집번호을 가져옵니다..
	 * 
	 * @return 맛집번호
	 */
	public Integer getResNo() {
		return this.resNo;
	}

	/**
	 * 맛집이름을 설정합니다..
	 * 
	 * @param resName
	 *            맛집이름
	 */
	public void setResName(String resName) {
		this.resName = resName;
	}

	/**
	 * 맛집이름을 가져옵니다..
	 * 
	 * @return 맛집이름
	 */
	public String getResName() {
		return this.resName;
	}

	/**
	 * 맛집전화번호을 설정합니다..
	 * 
	 * @param resNumber
	 *            맛집전화번호
	 */
	public void setResNumber(String resNumber) {
		this.resNumber = resNumber;
	}

	/**
	 * 맛집전화번호을 가져옵니다..
	 * 
	 * @return 맛집전화번호
	 */
	public String getResNumber() {
		return this.resNumber;
	}

	/**
	 * 맛집평점을 설정합니다..
	 * 
	 * @param resScore
	 *            맛집평점
	 */
	public void setResScore(Integer resScore) {
		this.resScore = resScore;
	}

	/**
	 * 맛집평점을 가져옵니다..
	 * 
	 * @return 맛집평점
	 */
	public Integer getResScore() {
		return this.resScore;
	}

	/**
	 * 맛집주소을 설정합니다..
	 * 
	 * @param resLoc
	 *            맛집주소
	 */
	public void setResLoc(String resLoc) {
		this.resLoc = resLoc;
	}

	/**
	 * 맛집주소을 가져옵니다..
	 * 
	 * @return 맛집주소
	 */
	public String getResLoc() {
		return this.resLoc;
	}

	/**
	 * 맛집내용을 설정합니다..
	 * 
	 * @param resContent
	 *            맛집내용
	 */
	public void setResContent(String resContent) {
		this.resContent = resContent;
	}

	/**
	 * 맛집내용을 가져옵니다..
	 * 
	 * @return 맛집내용
	 */
	public String getResContent() {
		return this.resContent;
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
	 * 맛집사진을 설정합니다..
	 * 
	 * @param resImg
	 *            맛집사진
	 */
	public void setResImg(String resImg) {
		this.resImg = resImg;
	}

	/**
	 * 맛집사진을 가져옵니다..
	 * 
	 * @return 맛집사진
	 */
	public String getResImg() {
		return this.resImg;
	}

	/**
	 * 지역을 설정합니다..
	 * 
	 * @param loc
	 *            지역
	 */
	public void setLoc(Loc loc) {
		this.loc = loc;
	}

	/**
	 * 지역을 가져옵니다..
	 * 
	 * @return 지역
	 */
	public Loc getLoc() {
		return this.loc;
	}

	/**
	 * 맛집종류을 설정합니다..
	 * 
	 * @param resKind
	 *            맛집종류
	 */
	public void setResKind(String resKind) {
		this.resKind = resKind;
	}

	/**
	 * 맛집종류을 가져옵니다..
	 * 
	 * @return 맛집종류
	 */
	public String getResKind() {
		return this.resKind;
	}

	/**
	 * 맛집등록일을 설정합니다..
	 * 
	 * @param resRegdate
	 *            맛집등록일
	 */
	public void setResRegdate(Date resRegdate) {
		this.resRegdate = resRegdate;
	}

	/**
	 * 맛집등록일을 가져옵니다..
	 * 
	 * @return 맛집등록일
	 */
	public Date getResRegdate() {
		return this.resRegdate;
	}

	/**
	 * 맛집수정일을 설정합니다..
	 * 
	 * @param resUpdatedate
	 *            맛집수정일
	 */
	public void setResUpdatedate(Date resUpdatedate) {
		this.resUpdatedate = resUpdatedate;
	}

	/**
	 * 맛집수정일을 가져옵니다..
	 * 
	 * @return 맛집수정일
	 */
	public Date getResUpdatedate() {
		return this.resUpdatedate;
	}

	/**
	 * 맛집댓글 목록을 설정합니다..
	 * 
	 * @param rreplySet
	 *            맛집댓글 목록
	 */
	public void setRreplySet(Set<Rreply> rreplySet) {
		this.rreplySet = rreplySet;
	}

	/**
	 * 맛집댓글를 추가합니다..
	 * 
	 * @param rreply
	 *            맛집댓글
	 */
	public void addRreply(Rreply rreply) {
		this.rreplySet.add(rreply);
	}

	/**
	 * 맛집댓글 목록을 가져옵니다..
	 * 
	 * @return 맛집댓글 목록
	 */
	public Set<Rreply> getRreplySet() {
		return this.rreplySet;
	}

	/**
	 * 즐겨찾기 목록을 설정합니다..
	 * 
	 * @param favoriteSet
	 *            즐겨찾기 목록
	 */
	public void setFavoriteSet(Set<Favorite> favoriteSet) {
		this.favoriteSet = favoriteSet;
	}

	/**
	 * 즐겨찾기를 추가합니다..
	 * 
	 * @param favorite
	 *            즐겨찾기
	 */
	public void addFavorite(Favorite favorite) {
		this.favoriteSet.add(favorite);
	}

	/**
	 * 즐겨찾기 목록을 가져옵니다..
	 * 
	 * @return 즐겨찾기 목록
	 */
	public Set<Favorite> getFavoriteSet() {
		return this.favoriteSet;
	}

	/**
	 * 맛집리뷰 목록을 설정합니다..
	 * 
	 * @param reviewSet
	 *            맛집리뷰 목록
	 */
	public void setReviewSet(Set<Review> reviewSet) {
		this.reviewSet = reviewSet;
	}

	/**
	 * 맛집리뷰를 추가합니다..
	 * 
	 * @param review
	 *            맛집리뷰
	 */
	public void addReview(Review review) {
		this.reviewSet.add(review);
	}

	/**
	 * 맛집리뷰 목록을 가져옵니다..
	 * 
	 * @return 맛집리뷰 목록
	 */
	public Set<Review> getReviewSet() {
		return this.reviewSet;
	}

	/**
	 * {@inheritDoc}
	 */
	@Override
	public int hashCode() {
		final int prime = 31;
		int result = 1;
		result = prime * result + ((resNo == null) ? 0 : resNo.hashCode());
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
		Restaurant other = (Restaurant) obj;
		if (resNo == null) {
			if (other.resNo != null) {
				return false;
			}
		} else if (!resNo.equals(other.resNo)) {
			return false;
		}
		return true;
	}

	public String getLocName() {
		return locName;
	}

	public void setLocName(String locName) {
		this.locName = locName;
	}

	public String getUserId() {
		return userId;
	}

	public void setUserId(String userId) {
		this.userId = userId;
	}

	@Override
	public String toString() {
		return "Restaurant [resNo=" + resNo + ", resName=" + resName
				+ ", resNumber=" + resNumber + ", resScore=" + resScore
				+ ", resLoc=" + resLoc + ", resContent=" + resContent
				+ ", users=" + users + ", userId=" + userId + ", resImg="
				+ resImg + ", loc=" + loc + ", locName=" + locName
				+ ", resKind=" + resKind + ", resRegdate=" + resRegdate
				+ ", resUpdatedate=" + resUpdatedate + ", rreplySet="
				+ rreplySet + ", favoriteSet=" + favoriteSet + ", reviewSet="
				+ reviewSet + "]";
	}

	

}
