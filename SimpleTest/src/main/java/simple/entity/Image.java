package simple.entity;

import java.io.Serializable;

/**
 * 사진 모델 클래스.
 * 
 * @author generated by ERMaster
 * @version $Id$
 */
public class Image implements Serializable {

	/** serialVersionUID. */
	private static final long serialVersionUID = 1L;

	/** 사진번호. */
	private Integer imageNo;

	/** 사진경로. */
	private String imagePath;

	/**
	 * 생성자.
	 */
	public Image() {
	}

	/**
	 * 사진번호을 설정합니다..
	 * 
	 * @param imageNo
	 *            사진번호
	 */
	public void setImageNo(Integer imageNo) {
		this.imageNo = imageNo;
	}

	/**
	 * 사진번호을 가져옵니다..
	 * 
	 * @return 사진번호
	 */
	public Integer getImageNo() {
		return this.imageNo;
	}

	/**
	 * 사진경로을 설정합니다..
	 * 
	 * @param imagePath
	 *            사진경로
	 */
	public void setImagePath(String imagePath) {
		this.imagePath = imagePath;
	}

	/**
	 * 사진경로을 가져옵니다..
	 * 
	 * @return 사진경로
	 */
	public String getImagePath() {
		return this.imagePath;
	}

	/**
	 * {@inheritDoc}
	 */
	@Override
	public int hashCode() {
		final int prime = 31;
		int result = 1;
		result = prime * result + ((imageNo == null) ? 0 : imageNo.hashCode());
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
		Image other = (Image) obj;
		if (imageNo == null) {
			if (other.imageNo != null) {
				return false;
			}
		} else if (!imageNo.equals(other.imageNo)) {
			return false;
		}
		return true;
	}

}
