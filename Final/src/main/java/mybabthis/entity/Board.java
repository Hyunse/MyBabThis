package mybabthis.entity;

import java.io.Serializable;
import java.util.Calendar;
import java.util.Date;
import java.util.HashSet;
import java.util.Set;

/**
 * 게시판 모델 클래스.
 * 
 * @author generated by ERMaster
 * @version $Id$
 */
public class Board implements Serializable {

	/** serialVersionUID. */
	private static final long serialVersionUID = 1L;

	/** 게시글번호. */
	private Integer boardNo;

	/** 게시글제목. */
	private String boardTitle;

	/** 게시글내용. */
	private String boardContent;

	/** 게시글등록일. */
	private Date boardRegdate;

	/** 게시글수정일. */
	private Date boardUpdatedate;

	/** 게시글종류. */
	private String boardType;
	
	/** 사용자아이디. */
	private String userId;

	/** 댓글 목록. */
	private Set<Breply> breplySet;

	/**
	 * 생성자.
	 */
	public Board() {
		this.breplySet = new HashSet<Breply>();
	}

	/**
	 * 게시글번호을 설정합니다..
	 * 
	 * @param boardNo
	 *            게시글번호
	 */
	public void setBoardNo(Integer boardNo) {
		this.boardNo = boardNo;
	}

	/**
	 * 게시글번호을 가져옵니다..
	 * 
	 * @return 게시글번호
	 */
	public Integer getBoardNo() {
		return this.boardNo;
	}

	/**
	 * 게시글제목을 설정합니다..
	 * 
	 * @param boardTitle
	 *            게시글제목
	 */
	public void setBoardTitle(String boardTitle) {
		this.boardTitle = boardTitle;
	}

	/**
	 * 게시글제목을 가져옵니다..
	 * 
	 * @return 게시글제목
	 */
	public String getBoardTitle() {
		return this.boardTitle;
	}

	/**
	 * 게시글내용을 설정합니다..
	 * 
	 * @param boardContent
	 *            게시글내용
	 */
	public void setBoardContent(String boardContent) {
		this.boardContent = boardContent;
	}

	/**
	 * 게시글내용을 가져옵니다..
	 * 
	 * @return 게시글내용
	 */
	public String getBoardContent() {
		return this.boardContent;
	}

	/**
	 * 게시글등록일을 설정합니다..
	 * 
	 * @param boardRegdate
	 *            게시글등록일
	 */
	public void setBoardRegdate(Date boardRegdate) {
		this.boardRegdate = boardRegdate;
	}

	/**
	 * 게시글등록일을 가져옵니다..
	 * 
	 * @return 게시글등록일
	 */
	public Date getBoardRegdate() {
		return this.boardRegdate;
	}

	/**
	 * 게시글수정일을 설정합니다..
	 * 
	 * @param boardUpdatedate
	 *            게시글수정일
	 */
	public void setBoardUpdatedate(Date boardUpdatedate) {
		this.boardUpdatedate = boardUpdatedate;
	}

	/**
	 * 게시글수정일을 가져옵니다..
	 * 
	 * @return 게시글수정일
	 */
	public Date getBoardUpdatedate() {
		return this.boardUpdatedate;
	}

	/**
	 * 게시글종류을 설정합니다..
	 * 
	 * @param boardType
	 *            게시글종류
	 */
	public void setBoardType(String boardType) {
		this.boardType = boardType;
	}

	/**
	 * 게시글종류을 가져옵니다..
	 * 
	 * @return 게시글종류
	 */
	public String getBoardType() {
		return this.boardType;
	}

	/**
	 * 사용자 아이디를 가져옵니다..
	 * 
	 * @return 사용자 아이디
	 */
	public String getUserId() {
		return userId;
	}

	/**
	 * 사용자 아이디를 설정합니다..
	 * 
	 * @param 사용자 아이디
	 */
	public void setUserId(String userId) {
		this.userId = userId;
	}

	/**
	 * 댓글 목록을 설정합니다..
	 * 
	 * @param breplySet
	 *            댓글 목록
	 */
	public void setBreplySet(Set<Breply> breplySet) {
		this.breplySet = breplySet;
	}

	/**
	 * 댓글를 추가합니다..
	 * 
	 * @param breply
	 *            댓글
	 */
	public void addBreply(Breply breply) {
		this.breplySet.add(breply);
	}

	/**
	 * 댓글 목록을 가져옵니다..
	 * 
	 * @return 댓글 목록
	 */
	public Set<Breply> getBreplySet() {
		return this.breplySet;
	}

	/**
	 * {@inheritDoc}
	 */
	@Override
	public int hashCode() {
		final int prime = 31;
		int result = 1;
		result = prime * result + ((boardNo == null) ? 0 : boardNo.hashCode());
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
		Board other = (Board) obj;
		if (boardNo == null) {
			if (other.boardNo != null) {
				return false;
			}
		} else if (!boardNo.equals(other.boardNo)) {
			return false;
		}
		return true;
	}

}
