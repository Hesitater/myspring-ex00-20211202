package lecture.p11core;

import org.springframework.context.ApplicationContext;
import org.springframework.context.support.ClassPathXmlApplicationContext;


public class App {
	public static void main(String[] args) {
		
		String config = "lecture/p11core/context.xml";
		
		ApplicationContext context = new ClassPathXmlApplicationContext(config);
		
		MyServlet s = context.getBean(MyServlet.class);
		MyDao d = context.getBean(MyDao.class);
		
		System.out.println(s);
		System.out.println(d);
		
		System.out.println(s.getMyDao());
	}
}
