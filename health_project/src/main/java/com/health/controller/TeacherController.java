package com.health.controller;

import java.util.HashMap;
import java.util.Map;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.lang.Nullable;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.multipart.MultipartFile;

import com.health.dto.ReviewDTO;
import com.health.dto.TeacherDTO;
import com.health.dto.TogetherDTO;
import com.health.service.LessonService;
import com.health.service.TeacherService;

@Controller
public class TeacherController {

	Map<String, Object> map;
	
	@Autowired
	TeacherService teacherService;
	@Autowired
	LessonService lessonService;
	
	
	//----강사------------------------------------------------------------------------
	
	
	//******여기에 리뷰리스 끌어오기
	// 강사 1명 상세보기
		@RequestMapping("/teacher_contentView")
		 public String teahcer_contentView(@Nullable ReviewDTO reviewDto,Model model,@RequestParam @Nullable String search,
				 @RequestParam @Nullable String bid) {
			
			System.out.println("bid : "+bid);
			Map<String, Object> map = teacherService.teacherContentView(bid,search);
			Map<String, Object> review_map = lessonService.reviewListAll(bid);
			
			model.addAttribute("map",map);
			model.addAttribute("reviewMap", review_map);
			 
			return "lessonBoard/teacher_contentView"; 
		 }
		
		
	// 강사 리스트 페이지(회원이보는)
		@RequestMapping("/lessonBoard/lessonBoard02")
		public String teacher_list(Model model,@RequestParam @Nullable String search) {
			Map<String, Object> map = new HashMap<String, Object>();
			
			System.out.println("search : "+search);
			
			map = teacherService.teacherOKListAll(search);
			
			model.addAttribute("map",map); 
			
			return "lessonBoard/lessonBoard02"; 
		}
		
	// 강사등록 신청 리스트 페이지
		 @RequestMapping("/lessonBoard/teacher_admissionList")
		 public String teacher_admissionlist(Model model,@RequestParam @Nullable String search) {
			
			 map = teacherService.teacherListAll(search);
			 
			 model.addAttribute("map",map); 
			 
			 return "lessonBoard/teacher_admissionList"; 
		 }
		
		
	// 강사 정보 DB업로드 insert
		@RequestMapping("/teacher_admission")
		public String teacher_admission (TeacherDTO teacherDto,MultipartFile file,Model model) {
		
		teacherService.admissionSubmit(teacherDto,file);
		
		return "redirect:/lessonBoardAccess";
		}
		
	// 강사 등록페이지로 연결
	@RequestMapping("/teacher_admissionView")
	public String teacher_admissionView() {
		return "lessonBoard/teacher_admissionView";
	}
	
	
	
	
}
