package com.health.service;

import java.util.ArrayList;
import java.util.Map;

import org.springframework.web.multipart.MultipartFile;

import com.health.dto.CommentDTO;
import com.health.dto.TogetherDTO;

public interface TogetherService {

	void BoardDelete(String bid);
	
	void BoardModify(TogetherDTO togetherDto, MultipartFile file);
	
	Map<String, Object> BoardModifyView(String bid, String search);
	
	Map<String, Object> BoardContentView(String bid, String search);
	
	Map<String, Object> BoardListAll(String search);
	
	void BoardWrite(TogetherDTO togetherDto, MultipartFile file);

	ArrayList<CommentDTO> commentListAll(String bid);

	void insertCommentWrite(CommentDTO commentDto);

	void commentDelete(String commentNo);


}
