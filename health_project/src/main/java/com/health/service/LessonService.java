package com.health.service;

import java.util.Map;

import org.springframework.web.multipart.MultipartFile;

import com.health.dto.LessonDTO;
import com.health.dto.ReviewDTO;

public interface LessonService {

	void applicationWrite(LessonDTO lessonDto, MultipartFile file);

	void reviewWrite(ReviewDTO reviewDto);

	Map<String, Object> reviewListAll(String bid);
	
	

}
