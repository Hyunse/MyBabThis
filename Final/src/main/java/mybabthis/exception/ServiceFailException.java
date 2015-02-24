package mybabthis.exception;

public class ServiceFailException extends RuntimeException {


	public ServiceFailException(Exception src) {
		super(src);
	}
	public ServiceFailException(String msg) {
		super(msg);
	}
}
