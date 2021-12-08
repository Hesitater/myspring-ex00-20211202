package org.zerock.mapper.p05mapper;

import java.util.List;

import org.apache.ibatis.annotations.Select;
import org.zerock.controller.p05controller.bean.Bean09;
import org.zerock.controller.p05controller.bean.Bean10;
import org.zerock.controller.p05controller.bean.Bean11;
import org.zerock.controller.p05controller.bean.Bean12;
import org.zerock.controller.p05controller.bean.Bean13;
import org.zerock.controller.p05controller.bean.Bean14;
import org.zerock.controller.p05controller.bean.Bean15;

public interface TimeMapper {

		@Select("SELECT NOW()")
		public String getTime();

		// methood 2,3 사용
		@Select("SELECT CustomerName FROM Customers WHERE CustomerID = 1")
		public String getCustomerName();
		
		@Select("SELECT LastName FROM Employees WHERE EmployeeID = 1")
		public String getLastName();

//		@Select("SELECT CustomerName FROM Customers WHERE CustomerID = ?");
		@Select("SELECT CustomerName FROM Customers WHERE CustomerID = #{id}")
		public String getCustomerNameById(Integer id);
		
		
		@Select("SELECT lastName FROM Employees WHERE EmployeeId = #{id}")
		public String getLastNameById(Integer id);
		
		
		@Select("SELECT CustomerName FROM Customers")
		public List<String> getCustomerNames();

		
		// 직원 테이블의 LastName 들을 조회하는 쿼리를 실행하는 메소드(getLastNames) 작성
		@Select("SELECT LastName FROM Employees")
		public List<String> getLastNames();
		
		
		//2021 1208
		
		//method09
		@Select("SELECT EmployeeID, LastName, FirstName FROM Employees WHERE EmployeeID = 1")
		public Bean09 getEmployeeName();
		
		//method10
		@Select("SELECT CustomerName, ContactName FROM Customers WHERE CustomerID = 1")
		public Bean10 getName();
		
		//method11
//		@Select("SELECT customerID, customerName FROM Customers WHERE CustomerID = 1")
		@Select("SELECT customerID AS id, customerName FROM Customers WHERE CustomerID = 1")
		public Bean11 getCustomerInfo();
		
		////method12
		@Select("SELECT EmployeeID id, LastName lname, FirstName fname FROM Employees WHERE EmployeeID = 2")
		public Bean12 getEmployeeInfo();
		
		//method13
		@Select("SELECT EmployeeID, LastName, FirstName, BirthDate, Photo, Notes "
				+ " FROM Employees WHERE EmployeeID = #{id} ")
		public Bean13 getEmployeeById( Integer id);
		
		//method14
		@Select("SELECT CustomerID, CustomerName, ContactName, Address, "
				+ " City, PostalCode, Country "
				+ " FROM Customers WHERE CustomerID = #{id}")
		public Bean14 getCustomerById(Integer id);
		
		
		//method15
		@Select("SELECT CustomerID, CustomerName, ContactName, Address, "
				+ " City, PostalCode, Country "
				+ " FROM Customers ")		
		public List<Bean14> getCustomers();

		//method16
		@Select("SELECT EmployeeID, LastName, FirstName, BirthDate, Photo, Notes "
				+ " FROM Employees ")
		public List<Bean13> getEmployees();
		
		
		//method17
		@Select("SELECT p.ProductName, c.CategoryName, p.Unit, p.Price " + 
				" FROM Products p JOIN Categories c On p.CategoryID = c.CategoryID ")
		public List<Bean15> getProductsInfo();
		
		//xml일로 따로빼서
		public List<Bean15> getProductsInfo2();
		
}












