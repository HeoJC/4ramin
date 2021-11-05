package com.yedam.saramin.command;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import com.yedam.saramin.comm.Command;
import com.yedam.saramin.company.service.CompanyService;
import com.yedam.saramin.company.service.CompanyVO;
import com.yedam.saramin.company.serviceImpl.CompanyServiceImpl;

public class CompanyUpdateForm implements Command {

	@Override
	public String run(HttpServletRequest request, HttpServletResponse response) {
		// 기업 정보 수정 폼 호출	
		HttpSession session = request.getSession() ;
		CompanyVO vo = new CompanyVO() ;
		vo.setCom_id(String.valueOf(session.getAttribute("id"))) ;
		vo.setCom_name(String.valueOf(session.getAttribute("name"))) ;
		request.setAttribute("company", vo) ;
		
		// 수정 폼 불렀을 때 회사 아이디랑 회사명이 기본으로 폼에 들어가도록 하려고 세션에서 받는걸로 
		
		return "company/companyUpdateForm" ;
	}

}
