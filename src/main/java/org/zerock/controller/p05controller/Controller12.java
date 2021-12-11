package org.zerock.controller.p05controller;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.zerock.controller.p05controller.bean.Bean17;
import org.zerock.controller.p05controller.bean.Bean18;
import org.zerock.mapper.p05mapper.Mapper03;

import lombok.Setter;

@Controller
@RequestMapping("/cont12")
public class Controller12 {

	@Setter(onMethod_ = @Autowired )
	private Mapper03 mapper;
	
	@RequestMapping("/met01")
	public void method01() {
		String customerName = "ironman";
		String contactName = "tony";
		
//		mapper.insertCustomer(customerName, contactName);
		int cnt = mapper.insertCustomer(customerName, contactName);
		System.out.println(cnt);
		
	}
	
	@RequestMapping("/met02")
	public void method02() {
		String supplierName = "captain";
		String contactName = "steve";
		
		int cnt = mapper.insertSupplier(supplierName, contactName);
		System.out.println(cnt);
		
	}
	
	@RequestMapping("/met03")
	public void method03() {
		// 2. request 분석, 가공
		Bean17 bean = new Bean17();
		bean.setCustomerName("spiderman");
		bean.setContactName("peter");
		bean.setAddress("queens");
		bean.setCity("ny");
		bean.setPostalCode("2222");
		bean.setCountry("usa");
		
		// 3. business logic( 주로 db작업)
		mapper.insertCustomer2(bean);
		
		// 4. setattribute
		
		
		// 5. forward/ redirect
	}
	
	@RequestMapping("/met04")
	public void method04() {
		// 2. bean 작성(Bean18 by Suppliers)
		Bean18 bean = new Bean18();
		bean.setSupplierName("Thor");
		bean.setContactName("Ham");
		bean.setAddress("Nornheim");
		bean.setCity("Valhala");
		bean.setPostalCode("20171025");
		bean.setCountry("Asgard");
		bean.setPhone("010-1234-5678");
		
		// 3. mapper 실행
		mapper.insertSupplier2(bean);
	}
	
	
	@RequestMapping("/met05")
	public void method05( ) {
		// 2. request 분석, 가공
		Bean17 bean = new Bean17();
		bean.setCustomerName("danvers");
		bean.setContactName("marvel");
		bean.setAddress("seoul");
		bean.setCity("gangnam");
		bean.setPostalCode("9999");
		bean.setCountry("france");
		
		// 3. insert 하기전 id
		System.out.println(bean.getId()); // null or 0
		
		
		mapper.insertCustomer3(bean);
		
		System.out.println(bean.getId()); //인서트 한이후 key
		
	}
	
	
	@RequestMapping("/met06")
	public void method06() {
		// 2.
		Bean18 bean = new Bean18();
		bean.setSupplierName("wade");
		bean.setContactName("deadpool");
		bean.setAddress("yeoksam");
		bean.setCity("seoul");
		bean.setPostalCode("3333");
		bean.setCountry("UK");
		bean.setPhone("111");
		
		// 3. mapper 실행
		System.out.println(bean.getSupplierID());  // null or 0
		
		mapper.insertSupplier3(bean);
		
		System.out.println(bean.getSupplierID());  // key
	}
	
	
	@RequestMapping("/met07")
	public void method07() {
		// 2
		Bean17 bean = new Bean17();
		bean.setId(111);
		bean.setCustomerName("widow");
		bean.setContactName("nat");
		bean.setAddress("jongro");
		bean.setCity("Asgard");
		bean.setCountry("korea");
		bean.setPostalCode("77777");
		// 3
		int cnt = mapper.updateCustomer(bean);
		System.out.println(cnt);
	}
	
	
	// TODO : update Supplier
	@RequestMapping("/met08")
	public void method08() {
		// 2 request 가공 분석?
		Bean18 bean18 = new Bean18();
		bean18.setSupplierID(45);
		bean18.setSupplierName("Anastasiya");
		bean18.setContactName("NikolaYevna");
		bean18.setAddress("Don");
		bean18.setCity("Rostov");
		bean18.setPostalCode("863");
		bean18.setCountry("russia");
		bean18.setPhone("1119875");
		
		
		// 3.
		int cnt = mapper.updateSupplier(bean18);
		System.out.println(cnt); //성공 여부 
		
	}
	
	@RequestMapping("/met09")
	public void method09(Integer id) {
		int cnt = mapper.deleteCustomer(id);
		
		System.out.println(cnt);  // cnt  가 1인지 아닌지 에따라 따른 구문으로 처리해줘야함
	}
	
	@RequestMapping("/met10")
	public void method10(Integer id) {
		int cnt = mapper.deleteSuppliers(id);
		
		System.out.println(cnt);  // cnt  가 1인지 아닌지 에따라 따른 구문으로 처리해줘야함
		
	}
	
}













