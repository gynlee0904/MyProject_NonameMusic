package member.model.vo;

import java.sql.Timestamp;

public class Member {
	private String memberPhone;
	private String memberGender;
	private String memberName;
	private String memberEmail;
	private String memberPw;
	
	private String memberPic;
	private String place;
	private String lesson;
	private String lessonType;
	private String tGender;
	private String myLevel;
	private String freeWords;
	private Timestamp memberDate;
	private Timestamp updateDate;
	private String memberYn;
	
	
	public Member() {}
	
	
	public Member(String memberEmail, String memberPw) {
		super();
		this.memberEmail = memberEmail;
		this.memberPw = memberPw;
	}



	public Member(String memberEmail, String memberPw, String place, String lesson,
			String lessonType, String tGender, String myLevel, String freeWords) {
		super();
		this.memberEmail = memberEmail;
		this.memberPw = memberPw;
		this.place = place;
		this.lesson = lesson;
		this.lessonType = lessonType;
		this.tGender = tGender;
		this.myLevel = myLevel;
		this.freeWords = freeWords;
	}



	public Member(String memberPhone, String memberGender, String memberName, String memberEmail, String memberPw, String memberPic, String place, String lesson,
			String lessonType, String tGender, String myLevel, String freeWords) {
		super();
		this.memberPhone = memberPhone;
		this.memberGender = memberGender;
		this.memberName = memberName;
		this.memberEmail = memberEmail;
		this.memberPw = memberPw;
		this.memberPic = memberPic;
		this.place = place;
		this.lesson = lesson;
		this.lessonType = lessonType;
		this.tGender = tGender;
		this.myLevel = myLevel;
		this.freeWords = freeWords;
	}


	public String getMemberPhone() {
		return memberPhone;
	}


	public void setMemberPhone(String memberPhone) {
		this.memberPhone = memberPhone;
	}


	public String getMemberGender() {
		return memberGender;
	}


	public void setMemberGender(String memberGender) {
		this.memberGender = memberGender;
	}


	public String getMemberName() {
		return memberName;
	}


	public void setMemberName(String memberName) {
		this.memberName = memberName;
	}


	public String getMemberEmail() {
		return memberEmail;
	}


	public void setMemberEmail(String memberEmail) {
		this.memberEmail = memberEmail;
	}


	public String getMemberPw() {
		return memberPw;
	}


	public void setMemberPw(String memberPw) {
		this.memberPw = memberPw;
	}


	public String getMemberPic() {
		return memberPic;
	}


	public void setMemberPic(String memberPic) {
		this.memberPic = memberPic;
	}


	public String getPlace() {
		return place;
	}


	public void setPlace(String place) {
		this.place = place;
	}


	public String getLesson() {
		return lesson;
	}


	public void setLesson(String lesson) {
		this.lesson = lesson;
	}


	public String getLessonType() {
		return lessonType;
	}


	public void setLessonType(String lessonType) {
		this.lessonType = lessonType;
	}


	public String gettGender() {
		return tGender;
	}


	public void settGender(String tGender) {
		this.tGender = tGender;
	}


	public String getMyLevel() {
		return myLevel;
	}


	public void setMyLevel(String myLevel) {
		this.myLevel = myLevel;
	}


	public String getFreeWords() {
		return freeWords;
	}


	public void setFreeWords(String freeWords) {
		this.freeWords = freeWords;
	}


	public Timestamp getMemberDate() {
		return memberDate;
	}


	public void setMemberDate(Timestamp memberDate) {
		this.memberDate = memberDate;
	}


	public Timestamp getUpdateDate() {
		return updateDate;
	}


	public void setUpdateDate(Timestamp updateDate) {
		this.updateDate = updateDate;
	}


	public String getMemberYn() {
		return memberYn;
	}


	public void setMemberYn(String memberYn) {
		this.memberYn = memberYn;
	}


	@Override
	public String toString() {
		return "회원 [휴대폰=" + memberPhone + ", 회원성별=" + memberGender + ", 회원이름=" + memberName
				+ ", 이메일=" + memberEmail + ", 비밀번호=" + memberPw + ", 프로필사진=" + memberPic + ", 레슨장소="
				+ place + ", 레슨방식=" + lesson + ", 레슨레벨=" + lessonType + ", 선생님성별=" + tGender + ", 학생레벨="
				+ myLevel + ", 하고싶은말=" + freeWords + ", 가입일=" + memberDate + ", 정보수정일=" + updateDate
				+ ", 회원여부=" + memberYn + "]";
	}

	
	



	
	
	
	
	
	
	
}
