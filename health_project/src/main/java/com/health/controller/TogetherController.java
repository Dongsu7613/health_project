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
import org.springframework.web.multipart.MultipartFile;

import com.health.dto.CommentDTO;
import com.health.dto.TogetherDTO;
import com.health.service.TogetherService;

@Controller
public class TogetherController {

	Map<String, Object> map;

	@Autowired
	TogetherService togetherService;

	// ----같이운동해요-------------------------------------------------------------------------------------------

	// 같이 운동해요 게시물 삭제하기 DB Delete
	@RequestMapping("/togetherEx_delete")
	public String togetherEx_delete(@RequestParam String bid, Model model, @RequestParam @Nullable String search,
			MultipartFile file) throws UnsupportedEncodingException {
		System.out.println("진입함");

		togetherService.BoardDelete(bid);
		search = URLEncoder.encode(search, "utf-8");
		return "redirect:/lessonBoardAccess";
	}

	// 같이 운동해요 게시물 수정하기 DB Update
	@RequestMapping("/togetherEx_modify")
	public String togetherEx_modify(TogetherDTO togetherDto, Model model, @RequestParam @Nullable String search,
			@RequestParam @Nullable String bid, MultipartFile file) throws UnsupportedEncodingException {

		togetherService.BoardModify(togetherDto, file);
		search = URLEncoder.encode(search, "utf-8");
		return "redirect:/lessonBoardAccess";
	}

	// 같이 운동해요 게시물 수정페이지 보기
	@RequestMapping("/togetherEx_modifyView")
	public String togetherEx_modifyView(Model model, @RequestParam @Nullable String search,
			@RequestParam @Nullable String bid) {

		map = togetherService.BoardModifyView(bid, search);

		model.addAttribute("map", map);
		return "lessonBoard/togetherEx_modifyView";
	}

	// 같이 운동해요 게시물 한개 보기
	@RequestMapping("/togetherEx_contentView")
	public String togetherEx_contentView(Model model, @RequestParam @Nullable String search,
			@RequestParam @Nullable String bid) {

		Map<String, Object> map = togetherService.BoardContentView(bid, search);
		ArrayList<CommentDTO> clist = togetherService.commentListAll(bid);

		model.addAttribute("map", map);
		model.addAttribute("clist", clist);

		return "lessonBoard/togetherEx_contentView";
	}

	// 댓글 달기
	@RequestMapping("/comment_Write")
	public String comment_Write(Model model, @RequestParam @Nullable String search, CommentDTO commentDto) {

		togetherService.insertCommentWrite(commentDto);

		model.addAttribute("map", map);

		return "redirect:/lessonBoardAccess";
	}

	// 댓글 삭제하기
		@RequestMapping("/comment_Delete")
		public String comment_Delete(@RequestParam String commentNo, Model model, @RequestParam @Nullable String search,
			MultipartFile file) throws UnsupportedEncodingException {
			togetherService.commentDelete(commentNo);
			return "redirect:/lessonBoardAccess";
		}
	
	// 같이 운동해요 리스트 페이지
	@RequestMapping("/lessonBoard03")
	public String togetherEx_list(Model model, @RequestParam @Nullable String search) {
		String num = "3";

		map = togetherService.BoardListAll(search);

		model.addAttribute("map", map);
		model.addAttribute("num", num);
		return "/lessonBoardCall";
	}

	// 같이운동해요 작성후 DB로 업로드
	@RequestMapping("/togetherEx_write")
	public String togetherEx_write(TogetherDTO togetherDto, MultipartFile file, Model model) {

		togetherService.BoardWrite(togetherDto, file);

		return "redirect:/lessonBoardAccess";
	}

	// 같이운동해요 작성페이지로 연결
	@RequestMapping("/togetherEx_writeView")
	public String togetherEx_wirteView() {
		return "lessonBoard/togetherEx_writeView";
	}

}
