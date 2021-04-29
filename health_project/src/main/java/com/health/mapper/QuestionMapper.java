package com.health.mapper;

import java.util.List;

import org.apache.ibatis.annotations.Mapper;

import com.health.dto.QuestionDTO;

@Mapper
public interface QuestionMapper {

	void insertBoardwrite(QuestionDTO questionDto);

	List<QuestionDTO> selectBoardListAll();

	List<QuestionDTO> selectBoardListSearchAll(String search);

	QuestionDTO selctBoardContentView(String bid);

	void updateBoardModify(QuestionDTO questionDto);
	
	void deleteBoardDelete(String bid);

	void updateUpHit(String bid);


}
