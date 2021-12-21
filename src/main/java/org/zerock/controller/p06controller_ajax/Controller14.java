package org.zerock.controller.p06controller_ajax;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;

@Controller
@RequestMapping("cont14")
public class Controller14 {
	
	@RequestMapping("/met01")
	@ResponseBody
	public String method01(@RequestParam("name") String name) {
		System.out.println("cont14 met01 일함");
		System.out.println(name);
		return "hello /cont14/met01";
	}
	
	
	@RequestMapping("/met02")
	@ResponseBody
	public String method02(@RequestParam("name") String name, @RequestParam("city") String city) {
		System.out.println("/cont14/met02 or /cont14/met03 is clear");
		System.out.println(name + " - " + city);
		return "hello hesitater /cont14/met02";
	}

	
	@RequestMapping("/met03")
	@ResponseBody
	public String method03(@RequestParam("name") String name,@RequestParam("city") String city) {
		System.out.println(name + " - " + city);
		return "hello /cont14/met03/";
	}
	
	@RequestMapping("/met04")
	@ResponseBody
	public String method04( String data1) {
		System.out.println(data1);
		
		return "hello hesitater";
	}
	
	@RequestMapping("/met05")
	public void method05(String name, String address) {
		System.out.println(name + " - " + address);
	}
	
	
	
}














