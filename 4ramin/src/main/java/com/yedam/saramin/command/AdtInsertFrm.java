package com.yedam.saramin.command;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.yedam.saramin.adoptions.Adoption;
import com.yedam.saramin.adoptions.service.AdoptionService;
import com.yedam.saramin.adoptions.service.impl.AdoptionServiceImpl;
import com.yedam.saramin.comm.Command;

public class AdtInsertFrm implements Command {

	@Override
	public String run(HttpServletRequest request, HttpServletResponse response) {
		Adoption adtVO = new Adoption();
		AdoptionService adtDAO = new AdoptionServiceImpl();
		adtVO.setTitle(request.getParameter("title"));
		adtVO.setBody(request.getParameter("contents"));
		adtVO.setCom_id(request.getParameter("comId"));
		adtVO.setCareer(request.getParameter("career"));
		adtVO.setAdt_exp(request.getParameter("adtExp"));
		adtVO.setAdt_email(request.getParameter("email"));
		adtVO.setAdt_imgsrc(request.getParameter("imgSrc"));
		adtVO.setSal_type(request.getParameter("salType"));
		adtVO.setSal_type((String)(request.getParameter("salHowmuch")));
		
		int r = adtDAO.insertAdoption(adtVO);
//		if(r!=1) {
			System.out.println("not 1");
//			return "adtInsertForm.do";
//		} else {
			return "main.do";
//		}
	}
}
