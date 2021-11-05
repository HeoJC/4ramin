package com.yedam.saramin.command;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.yedam.saramin.comm.Command;
import com.yedam.saramin.company.service.CompanyService;
import com.yedam.saramin.company.service.CompanyVO;
import com.yedam.saramin.company.serviceImpl.CompanyServiceImpl;

public class CompanyJoin implements Command {

	@Override
	public String run(HttpServletRequest request, HttpServletResponse response) {
		// 기업 회원가입 처리
		CompanyService companyDao = new CompanyServiceImpl() ;
		CompanyVO vo = new CompanyVO() ;
		
		vo.setCom_id(request.getParameter("com_id")) ;
		vo.setCom_pw(request.getParameter("com_pw")) ;
		vo.setCom_name(request.getParameter("com_name")) ;
		vo.setCom_intro(request.getParameter("com_intro")) ;
		vo.setCom_phone(request.getParameter("com_phone")) ;
		vo.setCom_email(request.getParameter("com_email")) ;
		vo.setCom_loc(request.getParameter("com_loc")) ;
		vo.setCom_reg(request.getParameter("com_reg")) ;
		vo.setCom_imp(request.getParameter("com_imp")) ;
		vo.setCom_man(request.getParameter("com_man")) ;
		vo.setCom_sal(request.getParameter("com_sal")) ;
		
		int n = companyDao.insertCompany(vo) ;
		System.out.println(n);
		String viewPage = null ;
		
		if (n != 0) {
			viewPage = "loginForm.do" ;
		} else {
			request.setAttribute("message", "회원가입이 정상적으로 처리되지 않았습니다") ;
			viewPage = "company/companyJoinForm" ;
		}
		return viewPage ;
	}

}
