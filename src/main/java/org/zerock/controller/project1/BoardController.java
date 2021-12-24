package org.zerock.controller.project1;

import java.io.IOException;
import java.util.Arrays;
import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.multipart.MultipartFile;
import org.springframework.web.servlet.mvc.support.RedirectAttributes;
import org.zerock.domain.project1.BoardVO;
import org.zerock.domain.project1.PageInfoVO;
import org.zerock.service.project1.BoardService;

import lombok.Setter;

@Controller
@RequestMapping("/board")
public class BoardController {

	@Setter(onMethod_ = @Autowired)
	private BoardService service;

	@GetMapping("list")
	public void list(@RequestParam(value = "page", defaultValue = "1") Integer page, Model model) {
		
//		if(page == null) {
//			page = 1;
//		}
		
		System.out.println(page);
		Integer numberPerPage = 10; // 한 페이지의 row 수 
		
		
		// 3. business logic
		// 게시물(Board) 목록 조회
		List<BoardVO> list = service.getListPage(page, numberPerPage);
		PageInfoVO pageInfo = service.getPageInfo(page, numberPerPage);
		
//		List<BoardVO> list = service.getList();
//		System.out.println(model.asMap().get("result"));

		// 4. add attribute
		model.addAttribute("list", list); // model 받으려면 파마리터에 명시
		model.addAttribute("pageInfo", pageInfo);

		// 5. forward /redirect
		// jsp path : /WEB-INF/views/board/list.jsp //요청경로랑 주소목록이 같아서 가능

	}

	// /board/get?id=10
	@GetMapping({ "/get", "/modify" })
	public void get(@RequestParam("id") Integer id, Model model) {
		BoardVO board = service.get(id);
		
		String[] fileNames = service.getFileNamesByBoardId(id);
		
		model.addAttribute("board", board);
		model.addAttribute("fileNames", fileNames);
		

//		model.addAttribute("board", service.get(id));

		// 요청주소와 jsp주소 같으니 리턴안해도..?
	}
	
		
	@GetMapping("/register")
	public void register() {
		
	}

	@PostMapping("/register")
	public String register(BoardVO board, MultipartFile[] files, RedirectAttributes rttr) {
		// 2. request 분석 가공을 dispatcherServlet이 해줌

		try {
			// 3. business logic
			service.register(board, files);
			// 4. add attribute
			rttr.addFlashAttribute("result", board.getId() + "번 게시글이 등록었습니다");
			
		} catch (IllegalStateException | IOException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
			rttr.addFlashAttribute("result", "게시물 등록 중 오류가 발생 하였습니다.");
		}


		// 5. forward / redirect
		// 책: 목록으로 redirect

		return "redirect:/board/list";
	}

	@PostMapping("/modify")
	public String modify(BoardVO board, String[] removeFile ,MultipartFile[] files  ,RedirectAttributes rttr) {

//		System.out.println(Arrays.toString(removeFile)); // 넘어오는지 확인용 
		
		try {
			if (service.modify(board,removeFile ,files)) {
				rttr.addFlashAttribute("result", board.getId() + "번 게시글이 수정되었습니다.");
			}
		} catch (IllegalStateException | IOException e) {
			e.printStackTrace();
			rttr.addFlashAttribute("result", board.getId() + "번 게시글이 수정중 문제가 발생하였습니다.");
		}

		// 게시물 조회 redirect
		/*
		rttr.addAttribute("id", board.getId());
		return "redirect:/board/get";
		*/
		 // 목록 조회로 redirect 
		return "redirect:/board/list";

	}
		
	@PostMapping("/remove")	
	public String remove(@RequestParam("id") Integer id, RedirectAttributes rttr) {
		
		if (service.remove(id)) {
			rttr.addFlashAttribute("result", id + "번 게시글이 삭제되었습니다.");
		}
		
		
		return "redirect:/board/list";
	}
		
		

	/*
	 * // get메소드와 하는일이 같아서 위에서 같이 적용
	 * 
	 * @GetMapping("/modify") public void modify(@RequestParam("id") Integer id,
	 * Model model) { BoardVO board = service.get(id);
	 * 
	 * model.addAttribute("board", board);
	 * 
	 * }
	 */

}
