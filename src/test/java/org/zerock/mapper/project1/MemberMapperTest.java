package org.zerock.mapper.project1;

import static org.junit.Assert.assertEquals;
import static org.junit.Assert.assertNotEquals;
import static org.junit.Assert.assertNotNull;
import static org.junit.Assert.assertNull;

import java.time.LocalDateTime;
import java.util.Date;
import java.util.List;

import org.junit.After;
import org.junit.Before;
import org.junit.Ignore;
import org.junit.Test;
import org.junit.runner.RunWith;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.test.context.ContextConfiguration;
import org.springframework.test.context.junit4.SpringJUnit4ClassRunner;
import org.zerock.domain.project1.MemberVO;

@RunWith(SpringJUnit4ClassRunner.class)
@ContextConfiguration("file:src/main/webapp/WEB-INF/spring/root-context.xml")
public class MemberMapperTest {
	
	@Autowired
	public MemberMapper mapper;
	
	@Before
	public void beforeClass() {
		System.out.println("-----테스트 시작-----");
	}
	
	@After
	public void afterClass() {
		System.out.println("-----테스트 종료-----");
	}
	
	@Test
	public void mapperTest() {
		String id = "member" + (new Date()).getTime();
		String password = "newpassword" + (new Date()).getTime();
		String address = "jeju" + (new Date()).getTime();
		String email = id + "@gmail.com";
		
		MemberVO vo = new MemberVO();
		vo.setId(id);
		vo.setPassword(password);
		vo.setAddress(address);
		vo.setEmail(email);
		
		// insert test
		int cnt = mapper.insert(vo);
		assertEquals(1, cnt);
				
		// select test
		MemberVO s = mapper.select(id);
		
		assertEquals(id, s.getId());
		assertEquals(password, s.getPassword());
		assertEquals(address, s.getAddress());
		assertEquals(email, s.getEmail());
		
		//update test
		String newPassword = "newPassword";
		String newAddress = "newAddress";
		LocalDateTime inserted = s.getInserted();
		
		s.setPassword(newPassword);
		s.setAddress(newAddress);
		
		cnt = mapper.update(s);
		assertEquals(1, cnt);
		
		MemberVO t = mapper.select(id);
		
		assertEquals(id, t.getId());
		assertEquals(newPassword, t.getPassword());
		assertEquals(newAddress, t.getAddress());
		assertEquals(email, t.getEmail());
		assertEquals(inserted, t.getInserted());
		
		// list test (before delete)
		List<MemberVO> list1 = mapper.list();
		int size1 = list1.size();
		for (MemberVO item : list1) {
			assertNotNull(item.getId());
			assertNotNull(item.getAddress());
			assertNotNull(item.getPassword());
			assertNotNull(item.getEmail());
			assertNotNull(item.getInserted());
		}
		
		
		// delete test
		// 지웠으니 id값이 Null 이겠죠?
		cnt = mapper.delete(id);
		assertEquals(1, cnt);
		assertNull(mapper.select(id));
		
		// list test( after delete)
		List<MemberVO> list2 = mapper.list();
		int size2 = list2.size();
		
		assertEquals(size1 - 1 , size2);
		
		
	}
	

	@Ignore
	public void insertAndselectTest() {
		String id = "member" + (new Date()).getTime();
		String password = "newpassword" + (new Date()).getTime();
		String address = "jeju" + (new Date()).getTime();
		String email = id + "@gmail.com";
		
		MemberVO vo = new MemberVO();
		vo.setId(id);
		vo.setPassword(password);
		vo.setAddress(address);
		vo.setEmail(email);
		
		// insert test
		int cnt = mapper.insert(vo);
		assertEquals(1, cnt);
				
		// select test
		MemberVO s = mapper.select(id);
		
		assertEquals(id, s.getId());
		assertEquals(password, s.getPassword());
		assertEquals(address, s.getAddress());
		assertEquals(email, s.getEmail());
		
	}	

	
}






















