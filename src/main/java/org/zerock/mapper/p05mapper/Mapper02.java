package org.zerock.mapper.p05mapper;

import java.util.List;

import org.apache.ibatis.annotations.Param;

public interface Mapper02 {
	
	//method01
	String getLastNameById(Integer id);

	//method02
	String getCustomerNameById(Integer id);

	//method03
	List<String> getProductNamesByCategory(String category);

	//method04
	List<String> getProductNamesByCategoryAndPrice(@Param("category") String category,@Param("price") Double price);

	//method05
	List<String> getSupplierNamesByCityAndCountry(@Param("city") String city,@Param("country")  String country);

	
	
	//method06
	
}
