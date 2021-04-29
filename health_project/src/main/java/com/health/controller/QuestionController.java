package com.health.controller;

import java.io.UnsupportedEncodingException;
import java.net.URLEncoder;
import java.util.ArrayList;
import java.util.Map;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.lang.Nullable;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.multipart.MultipartFile;

import com.health.dto.CommentDTO;
import com.health.dto.QuestionDTO;
import com.health.service.QuestionService;
import com.health.service.TogetherService;

@Controller
public class QuestionController {

	Map<String, Object> map;

	@Autowired
	QuestionService questionService;
	
	@Autowired
	TogetherService togetherService;

	// ----Question-------------------------------------------------------------------------------------------

	// Question 게시물 삭제하기 DB Delete
	@RequestMapping("/question_delete")
	public String question_delete(@RequestParam String bid, Model model, @RequestParam @Nullable String search,
		MultipartFile file) throws UnsupportedEncodingException {
		questionService.BoardDelete(bid);
		search = URLEncoder.encode(search, "utf-8");
		return "redirect:/lessonBoard/question_list";
	}

	// Question 게시물 수정하기 DB Update
	@RequestMapping("/question_modify")
	public String question_modify(QuestionDTO questionDto, Model model, @RequestParam @Nullable String search,
			@RequestParam @Nullable String bid, MultipartFile file) throws UnsupportedEncodingException {

		questionService.BoardModify(questionDto, file);
		search = URLEncoder.encode(search, "utf-8");
		return "redirect:/lessonBoard/question_list";
	}

	// Question 게시물 수정페이지 보기
	@RequestMapping("/question_modifyView")
	public String question_modifyView(Model model, @RequestParam @Nullable String search,
			@RequestParam @Nullable String bid) {

		map = questionService.BoardModifyView(bid, search);

		model.addAttribute("map", map);
		return "lessonBoard/question_modifyView";
	}

	// Question 게시물 한개 보기
	@RequestMapping("/question_contentView")
	public String question_contentView(Model model, @RequestParam @Nullable String search,
			@RequestParam @Nullable String bid) {
		
		Map<String, Object> map = questionService.BoardContentView(bid, search);
		ArrayList<CommentDTO> clist = togetherService.commentListAll(bid);

		model.addAttribute("map", map);
		model.addAttribute("clist",clist); 

		return "lessonBoard/question_contentView";
	}
	
	

	// Question 리스트 페이지
	@RequestMapping("/questionBoard/question_list")
	public String question_list(Model model, @RequestParam @Nullable String search) {

		map = questionService.BoardListAll(search);

		model.addAttribute("map", map);

		return "lessonBoard/question_list";
	}

	// Question 작성후 DB로 업로드
	@RequestMapping("/question_write")
	public String question_write(QuestionDTO questionDto, MultipartFile file, Model model) {

		questionService.BoardWrite(questionDto, file);

		return "redirect:/lessonBoard/question_list";
	}

	// Question 작성페이지로 연결
	@RequestMapping("/question_writeView")
	public String question_writeView() {
		return "lessonBoard/question_writeView";
	}
}
