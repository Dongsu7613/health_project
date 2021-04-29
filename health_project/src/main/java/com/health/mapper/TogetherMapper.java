package com.health.mapper;

import java.util.List;

import org.apache.ibatis.annotations.Mapper;

import com.health.dto.CommentDTO;
import com.health.dto.TogetherDTO;

@Mapper
public interface TogetherMapper {

	void insertBoardwrite(TogetherDTO togetherDto);

	List<TogetherDTO> selectBoardListAll();

	List<TogetherDTO> selectBoardListSearchAll(String search);

	TogetherDTO selctBoardContentView(String bid);

	void updateBoardModify(TogetherDTO togetherDto);

	void deleteBoardDelete(String bid);

	void updateUpHit(String bid);

	List<CommentDTO> commentListAll(String bid);

	void insertCommentWrite(CommentDTO commentDto);

	void commentDelete(String commentNo);

}
