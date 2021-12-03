package lecture.p12core;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Component;

import lombok.Getter;

@Component
@Getter
public class MyServlet {
	//Set도 없고 생성자도 없는 상태
	
	@Autowired
	private MyDao myDao;
}
