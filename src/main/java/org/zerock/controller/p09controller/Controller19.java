package org.zerock.controller.p09controller;

import java.io.File;
import java.io.IOException;

import org.omg.CORBA.Request;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.multipart.MultipartFile;

@Controller
@RequestMapping("/cont19")
public class Controller19 {
	
	@RequestMapping("/met01")
	
	public String method01(String name, String age, MultipartFile file1) {
		System.out.println(name);
		System.out.println(age);
		
		if(file1 != null) {
			System.out.println(file1.getOriginalFilename());
			
			
			String path = "C:\\Users\\user\\Desktop\\" + file1.getOriginalFilename();
			File dest = new File(path);
			
			try {
				file1.transferTo(dest);
			} catch (IllegalStateException e) {
				// TODO Auto-generated catch block
				e.printStackTrace();
			} catch (IOException e) {
				// TODO Auto-generated catch block
				e.printStackTrace();
			}
			
		}
		
		return null;
	}
	
	@RequestMapping("/met02")
	public void method02(MultipartFile file1, MultipartFile file2) {
		
		if (file1 != null) {
			System.out.println("file1 : " + file1.getOriginalFilename());
			
			String path = "C:\\Users\\user\\Desktop\\course\\fileupload\\" + file1.getOriginalFilename();
			
			try {
				file1.transferTo(new File(path));
			} catch (IllegalStateException e) {
				// TODO Auto-generated catch block
				e.printStackTrace();
			} catch (IOException e) {
				// TODO Auto-generated catch block
				e.printStackTrace();
			}
		}
		
		if (file2 != null) {
			System.out.println("file2 : " + file2.getOriginalFilename());
			
			String path = "C:\\Users\\user\\Desktop\\course\\fileupload\\" + file2.getOriginalFilename();
			File dest = new File(path);
			
			try {
				file2.transferTo(dest);
			} catch (IllegalStateException e) {
				// TODO Auto-generated catch block
				e.printStackTrace();
			} catch (IOException e) {
				// TODO Auto-generated catch block
				e.printStackTrace();
			}
			
		}
		
	}
	
	
	@RequestMapping("/met03")
	public void method03(MultipartFile[] files) {
		
		for (MultipartFile file : files) {
			if(file != null) {
				System.out.println(file.getOriginalFilename());
				String path = "C:\\Users\\user\\Desktop\\course\\fileupload\\" + file.getOriginalFilename();
				
				try {
					file.transferTo(new File(path));
				} catch (IllegalStateException e) {
					// TODO Auto-generated catch block
					e.printStackTrace();
				} catch (IOException e) {
					// TODO Auto-generated catch block
					e.printStackTrace();
				}
			}
			
		}
		
	}
	
	@RequestMapping("/met04")
	public String method04(String name, String age, MultipartFile file1) {
		System.out.println(name);
		System.out.println(age);
		
		if (file1 != null) {
			System.out.println(file1.getOriginalFilename());
			
			String path = "C:\\Users\\user\\Desktop\\newF\\" + file1.getOriginalFilename();
			File dest = new File(path);
			
			try {
				file1.transferTo(dest);
			} catch (IllegalStateException e) {
				// TODO Auto-generated catch block
				e.printStackTrace();
			} catch (IOException e) {
				// TODO Auto-generated catch block
				e.printStackTrace();
			}
		}
		
		return null;
	}
	
	@RequestMapping("/met05")
	public String method05(MultipartFile file1, MultipartFile file2) {
		
		
		if (file1 != null) {
			System.out.println("file1 : " + file1.getOriginalFilename());
			
			String path = "C:\\Users\\user\\Desktop\\newF\\" + file1.getOriginalFilename();
			File dest = new File(path);
			
			
			try {
				file1.transferTo(dest);
			} catch (IllegalStateException e) {
				// TODO Auto-generated catch block
				e.printStackTrace();
			} catch (IOException e) {
				// TODO Auto-generated catch block
				e.printStackTrace();
			}
		}
			
		if (file2 != null) {
			System.out.println("file2 : " + file2.getOriginalFilename());
		
			String path = "C:\\Users\\user\\Desktop\\newF\\" + file2.getOriginalFilename();
			File dest = new File(path);
			
			try {
				file2.transferTo(dest);
			} catch (IllegalStateException e) {
				// TODO Auto-generated catch block
				e.printStackTrace();
			} catch (IOException e) {
				// TODO Auto-generated catch block
				e.printStackTrace();
			}
			
		}
		
		return null;
	}
	
	@RequestMapping("/met06")
	public String method06(MultipartFile[] files) {
		
		for ( MultipartFile file : files) {
			if (file != null) {
				System.out.println(file.getOriginalFilename());
				String path = "C:\\Users\\user\\Desktop\\newF\\" + file.getOriginalFilename();
				
				try {
					file.transferTo(new File(path));
				} catch (IllegalStateException e) {
					// TODO Auto-generated catch block
					e.printStackTrace();
				} catch (IOException e) {
					// TODO Auto-generated catch block
					e.printStackTrace();
				}
			}
		}
		
		return null;
	}
	
}








