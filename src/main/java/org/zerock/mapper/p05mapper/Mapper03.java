package org.zerock.mapper.p05mapper;

import org.apache.ibatis.annotations.Param;
import org.zerock.controller.p05controller.bean.Bean17;
import org.zerock.controller.p05controller.bean.Bean18;

public interface Mapper03 {

	//method01
	public int insertCustomer(@Param("customerName") String customerName,
				@Param("contactName") String contactName);
		
	//method02
	public int insertSupplier(@Param("supplierName") String supplierName,
				@Param("contactName") String contactName);
	
	//method03
	public int insertCustomer2(Bean17 bean);

	//method04
	public int insertSupplier2(Bean18 bean);

	//method05
	public int insertCustomer3(Bean17 bean);

	//method06
	public int insertSupplier3(Bean18 bean);
	
	//method07
	public int updateCustomer(Bean17 bean);

	//method08
	public int updateSupplier(Bean18 bean18);
	
	
	//method09
	public int deleteCustomer(Integer id);

	//method10
	public int deleteSuppliers(Integer id);
	
	
	
	
	//method11
	
	
	
	//method12
	
}









