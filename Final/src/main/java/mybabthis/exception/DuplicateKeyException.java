package mybabthis.exception;

public class DuplicateKeyException extends RuntimeException {

	public DuplicateKeyException(String key) {
		super(key + "는 이미 사용 중입니다.");
	}
}
