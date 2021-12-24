package org.zerock.mapper.project1;

import org.apache.ibatis.annotations.Param;

public interface FileMapper {

	int insert(@Param("boardId") Integer boardId,@Param("fileName")  String Filename);

	String[] selectNamesByBoardId(Integer boardId);


	void delete(@Param("boardId") Integer BoardId,@Param("fileName") String FileName);

	void deleteByBoardId(Integer boardId);



}
