package org.zerock.controller.project1;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.servlet.mvc.support.RedirectAttributes;
import org.zerock.domain.project1.BoardVO;
import org.zerock.service.project1.BoardService;

import lombok.Setter;

@Controller
@RequestMapping("/board")
public class BoardController {

	@Setter(onMethod_ = @Autowired)
	private BoardService service;

	@GetMapping("list")
	public void list(Model model) {
		// 3. business logic
		// 게시물(Board) 목록 조회
		List<BoardVO> list = service.getList();

		// 4. add attribute
		model.addAttribute("list", list); // model 받으려면 파마리터에 명시

		// 5. forward /redirect
		// jsp path : /WEB-INF/views/board/list.jsp //요청경로랑 주소목록이 같아서 가능

	}

	// /board/get?id=10
	@GetMapping({ "/get", "/modify" })
	public void get(@RequestParam("id") Integer id, Model model) {
		BoardVO board = service.get(id);

		model.addAttribute("board", board);

//		model.addAttribute("board", service.get(id));

		// 요청주소와 jsp주소 같으니 리턴안해도..?
	}

	@GetMapping("/register")
	public void register() {

	}

	@PostMapping("/register")
	public String register(BoardVO board, RedirectAttributes rttr) {
		// 2. request 분석 가공을 dispatcherServlet이 해줌

		// 3. business logic
		service.register(board);

		// 4. add attribute
		rttr.addFlashAttribute("result", board.getId() + "번 게시글이 등록었습니다");

		// 5. forward / redirect
		// 책: 목록으로 redirect

		return "redirect:/board/list";
	}

	@PostMapping("/modify")
	public String modify(BoardVO board, RedirectAttributes rttr) {

		if (service.modify(board)) {
			rttr.addFlashAttribute("result", board.getId() + "번 게시글이 수정되었습니다.");
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