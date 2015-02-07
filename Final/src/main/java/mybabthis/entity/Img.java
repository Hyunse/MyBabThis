package mybabthis.entity;

import java.io.Serializable;

/**
 * 사진 모델 클래스.
 * 
 * @author generated by ERMaster
 * @version $Id$
 */
public class Img implements Serializable {

	/** serialVersionUID. */
	private static final long serialVersionUID = 1L;

	/** 사진번호. */
	private Integer imgNo;

	/** 사진경로. */
	private String imgPath;

	/**
	 * 생성자.
	 */
	public Img() {
	}

	/**
	 * 사진번호을 설정합니다..
	 * 
	 * @param imgNo
	 *            사진번호
	 */
	public void setImgNo(Integer imgNo) {
		this.imgNo = imgNo;
	}

	/**
	 * 사진번호을 가져옵니다..
	 * 
	 * @return 사진번호
	 */
	public Integer getImgNo() {
		return this.imgNo;
	}

	/**
	 * 사진경로을 설정합니다..
	 * 
	 * @param imgPath
	 *            사진경로
	 */
	public void setImgPath(String imgPath) {
		this.imgPath = imgPath;
	}

	/**
	 * 사진경로을 가져옵니다..
	 * 
	 * @return 사진경로
	 */
	public String getImgPath() {
		return this.imgPath;
	}

	/**
	 * {@inheritDoc}
	 */
	@Override
	public int hashCode() {
		final int prime = 31;
		int result = 1;
		result = prime * result + ((imgNo == null) ? 0 : imgNo.hashCode());
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
		Img other = (Img) obj;
		if (imgNo == null) {
			if (other.imgNo != null) {
				return false;
			}
		} else if (!imgNo.equals(other.imgNo)) {
			return false;
		}
		return true;
	}

}
