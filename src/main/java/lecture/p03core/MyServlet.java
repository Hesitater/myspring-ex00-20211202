package lecture.p03core;

import lombok.Setter;

@Setter
public class MyServlet {
	private MyDao dao = new MyDao();
	
	
	public void doGet() {
		// 0. ėŽė ėė
		
		// 2. request handle
		
		// 3. business logic
		dao.update();
		
		// 4. add attribute
		
		// 5. forward / redirect
		
		
	}
}
