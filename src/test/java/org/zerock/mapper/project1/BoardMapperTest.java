package org.zerock.mapper.project1;

import static org.junit.Assert.assertEquals;
import static org.junit.Assert.assertNotEquals;
import static org.junit.Assert.assertNotNull;
import static org.junit.Assert.assertNull;
import static org.junit.Assert.assertTrue;

import java.util.List;

import org.junit.Test;
import org.junit.runner.RunWith;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.test.context.ContextConfiguration;
import org.springframework.test.context.junit4.SpringJUnit4ClassRunner;
import org.zerock.domain.project1.BoardVO;

@RunWith(SpringJUnit4ClassRunner.class)
@ContextConfiguration("file:src/main/webapp/WEB-INF/spring/root-context.xml")
public class BoardMapperTest {
	
	@Autowired
	public BoardMapper mapper;
	
	@Test
	public void mapperTest() {
		assertNotNull(mapper);
	}

	@Test
	public void insertTest() {
		BoardVO vo = new BoardVO();
		vo.setTitle("test용 제목");
		vo.setContent("test 용 본문");
		vo.setWriter("tester");
		
		int cnt = mapper.insert(vo);
		
		assertEquals(1, cnt);
	}
	
	@Test
	public void insertAndSelectTest() {
		BoardVO vo = new BoardVO();
		vo.setTitle("test 용 제목" + Math.random());
		vo.setContent("test 용 본문" + Math.random());
		vo.setWriter("tester"+ Math.random());
		
		mapper.insert(vo);
		
		assertNotNull(vo.getId());
		assertNotEquals(0, vo.getId().intValue());  // 위의 코드들이 값을 넣어주는..?
		
		BoardVO lastInserted = mapper.read(vo.getId());
		
		assertEquals(vo.getTitle(), lastInserted.getTitle());
		assertEquals(vo.getContent(), lastInserted.getContent());
		assertEquals(vo.getWriter(), lastInserted.getWriter());
		
		
	}
	
	@Test
	public void updateTest() {
		BoardVO vo = new BoardVO();
		vo.setTitle("test 용 제목" + Math.random());
		vo.setContent("test 용 본문" + Math.random());
		vo.setWriter("tester"+ Math.random());
		
		mapper.insert(vo);
		
		assertNotNull(vo.getId());
		assertNotEquals(0, vo.getId().intValue());    // 업데이트 확인하가위해 직전에 값을 넣어주는..?
		
		String newTitle = "update 용 제목" + Math.random();
		String newContent = "update 용 본문" + Math.random();
		
		vo.setTitle(newTitle);
		vo.setContent(newContent);
		
		mapper.update(vo);
		
		BoardVO updatedVO = mapper.read(vo.getId());
		
		assertEquals(newTitle, updatedVO.getTitle());
		assertEquals(newContent, updatedVO.getContent());
		
	}
	
	@Test
	public void deleteTest() {
		BoardVO vo = new BoardVO();
		vo.setTitle("삭제용 제목");
		vo.setContent("삭제용 본문");
		vo.setWriter("tester");
		
		int cnt = mapper.insert(vo);
		
		assertEquals(1,cnt);
		// 삭제 확인하가위해 직전에 값을 넣어주고 그값을 지우는?
		
		cnt = mapper.delete(vo.getId());
		
		assertEquals(1, cnt);
		
		BoardVO deleted = mapper.read(vo.getId());
		assertNull(deleted);
		
	}
	
	@Test
	public void getListTest() {
		List<BoardVO> list = mapper.getList();
		assertNotNull(list);
		assertTrue(list.size() > 0 );
		
		BoardVO vo = new BoardVO();
		vo.setTitle("list 테스트용");
		vo.setContent("list 테스트용 본문");
		vo.setWriter("tester");
		
		mapper.insert(vo);
		
		List<BoardVO> list2 = mapper.getList();
		
		assertEquals(list.size() + 1, list2.size());
		
		for (BoardVO item : list2) {
			assertNotNull(item.getId());
			assertNotNull(item.getTitle());
			assertNotNull(item.getContent());
			assertNotNull(item.getWriter());
			assertNotNull(item.getInserted());
			assertNotNull(item.getUpdated());
			
		}
		
	}
	
	
}




















