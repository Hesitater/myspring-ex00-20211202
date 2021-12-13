package org.zerock.mapper.project1;

import java.util.List;

import org.zerock.domain.project1.MemberVO;

public interface MemberMapper {
		
		// 회원 가입
		public int insert(MemberVO member);
		
		//회원 조회
		public MemberVO select(String id);
		
		//회원정보 업데이트
		public int update(MemberVO member);
		
		// 회원 삭제
		public int delete(String id);
		
		//회원 목록보기
		public List<MemberVO> list();  //
	
}
