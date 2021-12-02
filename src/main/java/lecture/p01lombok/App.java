package lecture.p01lombok;

import java.util.logging.Level;

import lombok.extern.java.Log;

@Log
public class App {

	public static void main(String[] args) {
		
		Customer c1 = new Customer();
		
		c1.setAddress("gangnam");
		c1.setId(1);
		c1.setCity("jeju");
		c1.setName("korea");
		
		System.out.println(c1.getAddress());
		System.out.println(c1.getId());
		System.out.println(c1.getCity());
		System.out.println(c1.getName());
		
		System.out.println(c1.toString());
		System.out.println(c1);
		
		Customer c2 = new Customer(2, "usa","ny", "queens");
		
		Employee emp1 = new Employee(1,"kim", "korea");
		System.out.println(emp1);
		
//		log.log(Level.INFO, emp1.toString());
		log.info(emp1.toString());
		
		log.severe(emp1.toString());
		log.warning(emp1.toString());
		log.info(emp1.toString());
		log.config(emp1.toString());
		
		System.out.println("----------Supplier----------");
		Supplier s1 = new Supplier();
		
		s1.setEmployeeID(1);
		s1.setLastField("mangja");
		s1.setFirstField("kim");
		
		System.out.println(s1.getEmployeeID());
		System.out.println(s1.getFirstField() + " " + s1.getLastField());
		
		System.out.println(s1.toString());
		System.out.println(s1);
		
		System.out.println("---------------");
		log.log(Level.INFO,s1.toString());
		
		log.severe(s1.toString());
		log.warning(s1.toString());
		log.info(s1.toString());
		log.config(s1.toString());
		
	}
	
	
}











