package entity;

import java.io.Serializable;

/**
 * 즐겨찾기 모델 클래스.
 * 
 * @author generated by ERMaster
 * @version $Id$
 */
public class Favorite implements Serializable {

	/** serialVersionUID. */
	private static final long serialVersionUID = 1L;

	/** 사용자. */
	private Users users;

	/** 맛집게시판. */
	private RestaurantBoard restaurantBoard;

	/**
	 * 생성자.
	 */
	public Favorite() {
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
	 * 맛집게시판을 설정합니다..
	 * 
	 * @param restaurantBoard
	 *            맛집게시판
	 */
	public void setRestaurantBoard(RestaurantBoard restaurantBoard) {
		this.restaurantBoard = restaurantBoard;
	}

	/**
	 * 맛집게시판을 가져옵니다..
	 * 
	 * @return 맛집게시판
	 */
	public RestaurantBoard getRestaurantBoard() {
		return this.restaurantBoard;
	}


}
