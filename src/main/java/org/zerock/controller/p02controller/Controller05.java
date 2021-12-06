package org.zerock.controller.p02controller;

import javax.servlet.http.HttpServletRequest;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

@Controller
@RequestMapping("/cont05")
public class Controller05 {
	// request handler method return values
	
	@RequestMapping("/met01")
	public String method01(HttpServletRequest request) {
		// 2. request 분석.가공
		
		// 3. business 로직
		
		// 4. addd attribute
		
		// 5. forward / redirect
//		String path = "WEB-INF/view/view01.jsp";
//		request.getRequestDispatcher(path).forward(request,response);
		
		return "view01";
	}
	
	// 할일 : /cont05/met02 로 요청이 오면 /WEB-INF/views/view02.jsp로 포워드 되도록 작성
	
	@RequestMapping("/met02")
	public String method02() {
		
		return "view02";
	}
	
	/*
	 * @RequestMapping("/view03") public String method9999() {
	 * System.out.println("forward됨"); return "forward:/cont05/view03"; }
	 *
	 *	@RequestMapping("/met03")
	public String method03() {
		return "forward:cont05/view03";  // prefix : /WEB-INF/views/ , suffix : .jsp
	}
	 *
	 */
	
	
	@RequestMapping("/met03")
	public String method03() {
		return "cont05/view03";  // prefix : /WEB-INF/views/ , suffix : .jsp
	}
	
	@RequestMapping("/met04")
	public String method04() {
		return "/cont05/view04";    // /WEB-INF/views//cont05/view04.jsp
	}
	
	
	// redirect
	
	@RequestMapping("/met05")
	public String method05() {
		
		// servlet 사용시 /
		
//		String location = request.getContextPath() + "/path";
//		response.sendRedirect(location);
		
		/* spring mvc 사용시  */
		
		return "redirect:/cont05/met04";   // /WEB-INF/view/redirect:/cont05/met04
		
	}
	
	
	// 할일 : /cont05/met06 으로 요청 왔을 때 /cont05/met04 로 redirect 되는method06을 만들기
	
	@RequestMapping("/met06")
	public String method06() {
		
		return "redirect:/cont05/met04";
	}
	
	// /cont05/met07
	@RequestMapping("/met07")
	public String method07 () {
		
		return null;    // view 이름과 요청 경로가 같은 경우 null 리턴 가능
	}
	
	
	// /cont05/met08
	@RequestMapping("/met08")
	public void method08() {
		
		// view 이름과 요청 경로가 같은 경우 void return 타입으로 결정
	}


	// 할 일 : /cont05/met09 로 요청이 왔을 때 /WEB-INF/views/cont05/met09.jsp로 표워드 되도록 method09 메소드 작성
	
	@RequestMapping("/met09")
	public String method09 () {
		System.out.println("method09실행");
		return null;
	}
/*
	@RequestMapping("/met09")
	public void method09 () {
		
	}
 * */
}



























