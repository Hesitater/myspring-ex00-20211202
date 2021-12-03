package lecture.p11core;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Component;

import lombok.Getter;

@Component
@Getter
public class MyServlet {
	
	private MyDao myDao;
	
	// 생성자를 이용한 (인젝션한거 꺼내야하니깐..)
	@Autowired		// 생성자가 하나만 존재할 경우 @Autowired가 없어도 DI 됨.
	public MyServlet(MyDao myDao ) {
		this.myDao = myDao;
	}
	

}
