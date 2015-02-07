package mybabthis.entity;

import java.io.Serializable;
import java.util.Date;

/**
 * 댓글 모델 클래스.
 * 
 * @author generated by ERMaster
 * @version $Id$
 */
public class Reply implements Serializable {

	/** serialVersionUID. */
	private static final long serialVersionUID = 1L;

	/** 댓글번호. */
	private Integer replyNo;

	/** 댓글내용. */
	private String replyContent;

	/** 댓글작성일. */
	private Date replyRegdate;

	/** 댓글수정일. */
	private Date replyUpdatedate;

	/** 사용자. */
	private Users users;

	/** 게시판. */
	private Board board;

	/**
	 * 생성자.
	 */
	public Reply() {
	}

	/**
	 * 댓글번호을 설정합니다..
	 * 
	 * @param replyNo
	 *            댓글번호
	 */
	public void setReplyNo(Integer replyNo) {
		this.replyNo = replyNo;
	}

	/**
	 * 댓글번호을 가져옵니다..
	 * 
	 * @return 댓글번호
	 */
	public Integer getReplyNo() {
		return this.replyNo;
	}

	/**
	 * 댓글내용을 설정합니다..
	 * 
	 * @param replyContent
	 *            댓글내용
	 */
	public void setReplyContent(String replyContent) {
		this.replyContent = replyContent;
	}

	/**
	 * 댓글내용을 가져옵니다..
	 * 
	 * @return 댓글내용
	 */
	public String getReplyContent() {
		return this.replyContent;
	}

	/**
	 * 댓글작성일을 설정합니다..
	 * 
	 * @param replyRegdate
	 *            댓글작성일
	 */
	public void setReplyRegdate(Date replyRegdate) {
		this.replyRegdate = replyRegdate;
	}

	/**
	 * 댓글작성일을 가져옵니다..
	 * 
	 * @return 댓글작성일
	 */
	public Date getReplyRegdate() {
		return this.replyRegdate;
	}

	/**
	 * 댓글수정일을 설정합니다..
	 * 
	 * @param replyUpdatedate
	 *            댓글수정일
	 */
	public void setReplyUpdatedate(Date replyUpdatedate) {
		this.replyUpdatedate = replyUpdatedate;
	}

	/**
	 * 댓글수정일을 가져옵니다..
	 * 
	 * @return 댓글수정일
	 */
	public Date getReplyUpdatedate() {
		return this.replyUpdatedate;
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
	 * 게시판을 설정합니다..
	 * 
	 * @param board
	 *            게시판
	 */
	public void setBoard(Board board) {
		this.board = board;
	}

	/**
	 * 게시판을 가져옵니다..
	 * 
	 * @return 게시판
	 */
	public Board getBoard() {
		return this.board;
	}

	/**
	 * {@inheritDoc}
	 */
	@Override
	public int hashCode() {
		final int prime = 31;
		int result = 1;
		result = prime * result + ((replyNo == null) ? 0 : replyNo.hashCode());
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
		Reply other = (Reply) obj;
		if (replyNo == null) {
			if (other.replyNo != null) {
				return false;
			}
		} else if (!replyNo.equals(other.replyNo)) {
			return false;
		}
		return true;
	}

}
