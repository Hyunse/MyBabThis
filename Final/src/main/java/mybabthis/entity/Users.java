package mybabthis.entity;

import java.io.Serializable;
import java.util.Date;
import java.util.HashSet;
import java.util.Set;

/**
 * 사용자 모델 클래스.
 * 
 * @author generated by ERMaster
 * @version $Id$
 */
public class Users implements Serializable {

	/** serialVersionUID. */
	private static final long serialVersionUID = 1L;

	/** 사용자아이디. */
	private String userId;

	/** 사용자패스워드. */
	private String userPass;

	/** 사용자닉네임. */
	private String userName;

	/** 사용자이메일. */
	private String userEmail;

	/** 사용자성별. */
	private String userGender;

	/** 사용자전화번호. */
	private String userPhone;

	/** 사용자등록일. */
	private Date userRegdate;

	/** 사용자수정일. */
	private Date userUpdatedate;

	/** 사용자등급. */
	private String userGrade;

	/** 사용자사진. */
	private String userImg;

	/** 사용자활성여부. */
	private String userActivation;

	/** 친구 목록. */
	private Set<Friend> friendSet;

	/** 즐겨찾기 목록. */
	private Set<Favorite> favoriteSet;

	/** 게시판 목록. */
	private Set<Board> boardSet;

	/** 맛집 목록. */
	private Set<Restaurant> restaurantSet;

	/** 관심지역 목록. */
	private Set<FavoriteLocation> favoriteLocationSet;

	/** 맛집리뷰 목록. */
	private Set<Review> reviewSet;

	/** 자격증취득회원 목록. */
	private Set<LicensedUser> licensedUserSet;

	/** 댓글 목록. */
	private Set<Reply> replySet;

	/** 맛집댓글 목록. */
	private Set<Resreply> resreplySet;

	/**
	 * 생성자.
	 */
	public Users() {
		this.boardSet = new HashSet<Board>();
		this.favoriteSet = new HashSet<Favorite>();
		this.favoriteLocationSet = new HashSet<FavoriteLocation>();
		this.friendSet = new HashSet<Friend>();
		this.licensedUserSet = new HashSet<LicensedUser>();
		this.replySet = new HashSet<Reply>();
		this.resreplySet = new HashSet<Resreply>();
		this.restaurantSet = new HashSet<Restaurant>();
		this.reviewSet = new HashSet<Review>();
	}

	/**
	 * 사용자아이디을 설정합니다..
	 * 
	 * @param userId
	 *            사용자아이디
	 */
	public void setUserId(String userId) {
		this.userId = userId;
	}

	/**
	 * 사용자아이디을 가져옵니다..
	 * 
	 * @return 사용자아이디
	 */
	public String getUserId() {
		return this.userId;
	}

	/**
	 * 사용자패스워드을 설정합니다..
	 * 
	 * @param userPass
	 *            사용자패스워드
	 */
	public void setUserPass(String userPass) {
		this.userPass = userPass;
	}

	/**
	 * 사용자패스워드을 가져옵니다..
	 * 
	 * @return 사용자패스워드
	 */
	public String getUserPass() {
		return this.userPass;
	}

	/**
	 * 사용자닉네임을 설정합니다..
	 * 
	 * @param userName
	 *            사용자닉네임
	 */
	public void setUserName(String userName) {
		this.userName = userName;
	}

	/**
	 * 사용자닉네임을 가져옵니다..
	 * 
	 * @return 사용자닉네임
	 */
	public String getUserName() {
		return this.userName;
	}

	/**
	 * 사용자이메일을 설정합니다..
	 * 
	 * @param userEmail
	 *            사용자이메일
	 */
	public void setUserEmail(String userEmail) {
		this.userEmail = userEmail;
	}

	/**
	 * 사용자이메일을 가져옵니다..
	 * 
	 * @return 사용자이메일
	 */
	public String getUserEmail() {
		return this.userEmail;
	}

	/**
	 * 사용자성별을 설정합니다..
	 * 
	 * @param userGender
	 *            사용자성별
	 */
	public void setUserGender(String userGender) {
		this.userGender = userGender;
	}

	/**
	 * 사용자성별을 가져옵니다..
	 * 
	 * @return 사용자성별
	 */
	public String getUserGender() {
		return this.userGender;
	}

	/**
	 * 사용자전화번호을 설정합니다..
	 * 
	 * @param userPhone
	 *            사용자전화번호
	 */
	public void setUserPhone(String userPhone) {
		this.userPhone = userPhone;
	}

	/**
	 * 사용자전화번호을 가져옵니다..
	 * 
	 * @return 사용자전화번호
	 */
	public String getUserPhone() {
		return this.userPhone;
	}

	/**
	 * 사용자등록일을 설정합니다..
	 * 
	 * @param userRegdate
	 *            사용자등록일
	 */
	public void setUserRegdate(Date userRegdate) {
		this.userRegdate = userRegdate;
	}

	/**
	 * 사용자등록일을 가져옵니다..
	 * 
	 * @return 사용자등록일
	 */
	public Date getUserRegdate() {
		return this.userRegdate;
	}

	/**
	 * 사용자수정일을 설정합니다..
	 * 
	 * @param userUpdatedate
	 *            사용자수정일
	 */
	public void setUserUpdatedate(Date userUpdatedate) {
		this.userUpdatedate = userUpdatedate;
	}

	/**
	 * 사용자수정일을 가져옵니다..
	 * 
	 * @return 사용자수정일
	 */
	public Date getUserUpdatedate() {
		return this.userUpdatedate;
	}

	/**
	 * 사용자등급을 설정합니다..
	 * 
	 * @param userGrade
	 *            사용자등급
	 */
	public void setUserGrade(String userGrade) {
		this.userGrade = userGrade;
	}

	/**
	 * 사용자등급을 가져옵니다..
	 * 
	 * @return 사용자등급
	 */
	public String getUserGrade() {
		return this.userGrade;
	}

	/**
	 * 사용자사진을 설정합니다..
	 * 
	 * @param userImg
	 *            사용자사진
	 */
	public void setUserImg(String userImg) {
		this.userImg = userImg;
	}

	/**
	 * 사용자사진을 가져옵니다..
	 * 
	 * @return 사용자사진
	 */
	public String getUserImg() {
		return this.userImg;
	}

	/**
	 * 사용자활성여부을 설정합니다..
	 * 
	 * @param userActivation
	 *            사용자활성여부
	 */
	public void setUserActivation(String userActivation) {
		this.userActivation = userActivation;
	}

	/**
	 * 사용자활성여부을 가져옵니다..
	 * 
	 * @return 사용자활성여부
	 */
	public String getUserActivation() {
		return this.userActivation;
	}

	/**
	 * 친구 목록을 설정합니다..
	 * 
	 * @param friendSet
	 *            친구 목록
	 */
	public void setFriendSet(Set<Friend> friendSet) {
		this.friendSet = friendSet;
	}

	/**
	 * 친구를 추가합니다..
	 * 
	 * @param friend
	 *            친구
	 */
	public void addFriend(Friend friend) {
		this.friendSet.add(friend);
	}

	/**
	 * 친구 목록을 가져옵니다..
	 * 
	 * @return 친구 목록
	 */
	public Set<Friend> getFriendSet() {
		return this.friendSet;
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
	 * 게시판 목록을 설정합니다..
	 * 
	 * @param boardSet
	 *            게시판 목록
	 */
	public void setBoardSet(Set<Board> boardSet) {
		this.boardSet = boardSet;
	}

	/**
	 * 게시판를 추가합니다..
	 * 
	 * @param board
	 *            게시판
	 */
	public void addBoard(Board board) {
		this.boardSet.add(board);
	}

	/**
	 * 게시판 목록을 가져옵니다..
	 * 
	 * @return 게시판 목록
	 */
	public Set<Board> getBoardSet() {
		return this.boardSet;
	}

	/**
	 * 맛집 목록을 설정합니다..
	 * 
	 * @param restaurantSet
	 *            맛집 목록
	 */
	public void setRestaurantSet(Set<Restaurant> restaurantSet) {
		this.restaurantSet = restaurantSet;
	}

	/**
	 * 맛집를 추가합니다..
	 * 
	 * @param restaurant
	 *            맛집
	 */
	public void addRestaurant(Restaurant restaurant) {
		this.restaurantSet.add(restaurant);
	}

	/**
	 * 맛집 목록을 가져옵니다..
	 * 
	 * @return 맛집 목록
	 */
	public Set<Restaurant> getRestaurantSet() {
		return this.restaurantSet;
	}

	/**
	 * 관심지역 목록을 설정합니다..
	 * 
	 * @param favoriteLocationSet
	 *            관심지역 목록
	 */
	public void setFavoriteLocationSet(Set<FavoriteLocation> favoriteLocationSet) {
		this.favoriteLocationSet = favoriteLocationSet;
	}

	/**
	 * 관심지역를 추가합니다..
	 * 
	 * @param favoriteLocation
	 *            관심지역
	 */
	public void addFavoriteLocation(FavoriteLocation favoriteLocation) {
		this.favoriteLocationSet.add(favoriteLocation);
	}

	/**
	 * 관심지역 목록을 가져옵니다..
	 * 
	 * @return 관심지역 목록
	 */
	public Set<FavoriteLocation> getFavoriteLocationSet() {
		return this.favoriteLocationSet;
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
	 * 자격증취득회원 목록을 설정합니다..
	 * 
	 * @param licensedUserSet
	 *            자격증취득회원 목록
	 */
	public void setLicensedUserSet(Set<LicensedUser> licensedUserSet) {
		this.licensedUserSet = licensedUserSet;
	}

	/**
	 * 자격증취득회원를 추가합니다..
	 * 
	 * @param licensedUser
	 *            자격증취득회원
	 */
	public void addLicensedUser(LicensedUser licensedUser) {
		this.licensedUserSet.add(licensedUser);
	}

	/**
	 * 자격증취득회원 목록을 가져옵니다..
	 * 
	 * @return 자격증취득회원 목록
	 */
	public Set<LicensedUser> getLicensedUserSet() {
		return this.licensedUserSet;
	}

	/**
	 * 댓글 목록을 설정합니다..
	 * 
	 * @param replySet
	 *            댓글 목록
	 */
	public void setReplySet(Set<Reply> replySet) {
		this.replySet = replySet;
	}

	/**
	 * 댓글를 추가합니다..
	 * 
	 * @param reply
	 *            댓글
	 */
	public void addReply(Reply reply) {
		this.replySet.add(reply);
	}

	/**
	 * 댓글 목록을 가져옵니다..
	 * 
	 * @return 댓글 목록
	 */
	public Set<Reply> getReplySet() {
		return this.replySet;
	}

	/**
	 * 맛집댓글 목록을 설정합니다..
	 * 
	 * @param resreplySet
	 *            맛집댓글 목록
	 */
	public void setResreplySet(Set<Resreply> resreplySet) {
		this.resreplySet = resreplySet;
	}

	/**
	 * 맛집댓글를 추가합니다..
	 * 
	 * @param resreply
	 *            맛집댓글
	 */
	public void addResreply(Resreply resreply) {
		this.resreplySet.add(resreply);
	}

	/**
	 * 맛집댓글 목록을 가져옵니다..
	 * 
	 * @return 맛집댓글 목록
	 */
	public Set<Resreply> getResreplySet() {
		return this.resreplySet;
	}

	/**
	 * {@inheritDoc}
	 */
	@Override
	public int hashCode() {
		final int prime = 31;
		int result = 1;
		result = prime * result + ((userId == null) ? 0 : userId.hashCode());
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
		Users other = (Users) obj;
		if (userId == null) {
			if (other.userId != null) {
				return false;
			}
		} else if (!userId.equals(other.userId)) {
			return false;
		}
		return true;
	}

}
