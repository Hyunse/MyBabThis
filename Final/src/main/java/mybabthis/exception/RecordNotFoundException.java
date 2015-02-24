package mybabthis.exception;

public class RecordNotFoundException extends RuntimeException {

	public RecordNotFoundException(String key) {
		super(key + "에 해당하는 자료를 찾을 수 없습니다.");
	}
}
