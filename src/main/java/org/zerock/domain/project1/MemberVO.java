package org.zerock.domain.project1;

import java.time.LocalDateTime;
import java.time.ZoneId;

import lombok.Data;

@Data
public class MemberVO {
	private String id;
	private String password;
	private String email;
	private String address;
	private LocalDateTime inserted;
	private String nickName;
	private int numberOfBoard;
	
	public String getCustomInserted() {
		//현재 일시
		LocalDateTime now = LocalDateTime.now(ZoneId.of("+09:00"));
		
		LocalDateTime beforeOneDayFromNow = now.minusDays(1);
		
		if(inserted.isBefore(beforeOneDayFromNow)) {
			return inserted.toLocalDate().toString();
		} else {
			return inserted.toLocalTime().toString();
		}
		
	}
	
}
