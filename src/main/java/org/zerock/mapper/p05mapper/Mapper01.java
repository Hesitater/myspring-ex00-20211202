package org.zerock.mapper.p05mapper;

import java.util.List;

import org.zerock.controller.p05controller.bean.Bean09;
import org.zerock.controller.p05controller.bean.Bean16;

public interface Mapper01 {

	// method01
	public Bean16 getSupplierOne();
	
	// method02
	public Bean09 getEmployeeNameOne();
	
	// method03
	public List<Bean09> getEmployeeNameList();
	
	// method04
	public List<Bean16> getSupplierList();
	
	// method05
	public String getEmployeeLastNameOne();
	
	// method06
	public String getEmployeeFirstNameOne();
	
	//method07
	public List<String> getEmployeeLastNameList();
	
	
}








