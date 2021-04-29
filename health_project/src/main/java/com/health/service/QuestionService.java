package com.health.service;

import java.util.Map;

import org.springframework.web.multipart.MultipartFile;

import com.health.dto.QuestionDTO;

public interface QuestionService {

	void BoardDelete(String bid);

	void BoardModify(QuestionDTO questionDto, MultipartFile file);

	Map<String, Object> BoardModifyView(String bid, String search);

	Map<String, Object> BoardContentView(String bid, String search);

	Map<String, Object> BoardListAll(String search);

	void BoardWrite(QuestionDTO questionDto, MultipartFile file);


}
