package free.model.vo;

import java.sql.Timestamp;

public class FreeBoard {
	
	private int freeBoardNo;
	private String freeBoardSubject;
	private String freeBoardContent;
	private String freeBoardWriter;
	private Timestamp uploadDate;
	private Timestamp updateDate;
	private int viewCount;
	
	public FreeBoard() {}
	
	

	



	public FreeBoard(String freeBoardSubject, String freeBoardContent) {
		super();
		this.freeBoardSubject = freeBoardSubject;
		this.freeBoardContent = freeBoardContent;
	}







	public int getFreeBoardNo() {
		return freeBoardNo;
	}

	public void setFreeBoardNo(int freeBoardNo) {
		this.freeBoardNo = freeBoardNo;
	}

	public String getFreeBoardSubject() {
		return freeBoardSubject;
	}

	public void setFreeBoardSubject(String freeBoardSubject) {
		this.freeBoardSubject = freeBoardSubject;
	}

	public String getFreeBoardContent() {
		return freeBoardContent;
	}

	public void setFreeBoardContent(String freeBoardContent) {
		this.freeBoardContent = freeBoardContent;
	}

	public String getFreeBoardWriter() {
		return freeBoardWriter;
	}

	public void setFreeBoardWriter(String freeBoardWriter) {
		this.freeBoardWriter = freeBoardWriter;
	}

	public Timestamp getUploadDate() {
		return uploadDate;
	}

	public void setUploadDate(Timestamp uploadDate) {
		this.uploadDate = uploadDate;
	}

	public Timestamp getUpdateDate() {
		return updateDate;
	}

	public void setUpdateDate(Timestamp updateDate) {
		this.updateDate = updateDate;
	}

	public int getViewCount() {
		return viewCount;
	}

	public void setViewCount(int viewCount) {
		this.viewCount = viewCount;
	}



	@Override
	public String toString() {
		return "자유게시판 [글번호=" + freeBoardNo + ", 글제목=" + freeBoardSubject
				+ ", 글내용=" + freeBoardContent + ", 글쓴이=" + freeBoardWriter + ", 올린날짜="
				+ uploadDate + ", 수정날짜=" + updateDate + ", 조회수=" + viewCount + "]";
	}
	









}

	
	