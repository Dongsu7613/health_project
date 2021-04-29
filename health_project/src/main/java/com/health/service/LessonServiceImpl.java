package com.health.service;

import java.io.File;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

import org.apache.commons.io.FilenameUtils;
import org.apache.commons.lang3.RandomStringUtils;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.web.multipart.MultipartFile;

import com.health.dto.LessonDTO;
import com.health.dto.ReviewDTO;
import com.health.mapper.LessonMapper;
import com.health.mapper.ReviewMapper;

@Service
public class LessonServiceImpl implements LessonService{

	@Autowired
	LessonMapper lessonMapper;
	
	@Autowired
	ReviewMapper reviewMapper;
	
	Map<String,Object> map;
	List<LessonDTO> list;
	List<ReviewDTO> review_list;
	LessonDTO lessonDto;
	
	//---- 리뷰리스트 페이지 불러오기
	@Override
	public Map<String, Object> reviewListAll(String bid) {
		
		//초기화 꼭해주기...시부럴
		map = new HashMap<String, Object>();
		review_list = new ArrayList<ReviewDTO>();
		
		if(bid==null||bid.equals("")) {
			review_list = reviewMapper.selectReviewListAll();
		}else {
			review_list = reviewMapper.selectReviewListSearch(bid);
		}
		System.out.println("review_list 개수: "+ review_list.size());
		
		map.put("review_list", review_list);
		
		return map;
	}
	
	//---- 리뷰페이지 DB등록 
	@Override
	public void reviewWrite(ReviewDTO reviewDto) {
		
		reviewMapper.insertReveiwWrite(reviewDto);
	}

	// 수강신청서 작성후 DB 등록
	@Override
	public void applicationWrite(LessonDTO lessonDto,MultipartFile file) {
		
		/*
		 * String filename=file.getOriginalFilename(); System.out.println(filename);
		 * //확장자명 가져오기 String
		 * fileNameExtension=FilenameUtils.getExtension(filename).toLowerCase();
		 * if(FilenameUtils.getExtension(filename).toLowerCase()!="") { //파일저장위치 String
		 * fileUrl="D:/workspace/health_projectlast/src/main/resources/static/upload";
		 * 
		 * //신규 파일이름 (32자리이름생성.확장자명) String uploadFileName =
		 * RandomStringUtils.randomAlphanumeric(32)+"."+fileNameExtension; File f = new
		 * File(fileUrl+uploadFileName); //파일업로드 try { file.transferTo(f); } catch
		 * (Exception e) { e.printStackTrace();
		 * 
		 * } //파일이름저장 lessonDto.setFilename(uploadFileName); }else {
		 * lessonDto.setFilename("빈파일"); }
		 */
		lessonMapper.insertBoardwrite(lessonDto);
		
		return ;
		
	}

	

	
}
