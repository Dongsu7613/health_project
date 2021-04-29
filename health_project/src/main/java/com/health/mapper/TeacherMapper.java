package com.health.mapper;

import java.util.List;

import org.apache.ibatis.annotations.Mapper;

import com.health.dto.TeacherDTO;

@Mapper
public interface TeacherMapper {

	void insertAdmissionSubmit(TeacherDTO teacherDto);

	// 관리자가 보는 선생등록신청을 한사람 전부
	List<TeacherDTO> selectteacherListAll();

	List<TeacherDTO> selectteacherListSearchAll(String search);

	TeacherDTO selectTeacherContentView(String bid);

	// 회원들이 보는 grade=3인 선생님들
	List<TeacherDTO> selectteacherOKListAll();

	List<TeacherDTO> selectteacherOKListSearchAll(String search);

}
