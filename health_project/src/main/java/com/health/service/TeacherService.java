package com.health.service;

import java.util.Map;

import org.springframework.web.multipart.MultipartFile;

import com.health.dto.TeacherDTO;

public interface TeacherService {

	void admissionSubmit(TeacherDTO teacherDto, MultipartFile file);

	Map<String, Object> teacherListAll(String search);

	Map<String, Object> teacherContentView(String bid, String search);

	Map<String, Object> teacherOKListAll(String search);

}
