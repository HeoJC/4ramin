package com.yedam.saramin.company.serviceImpl;

import java.util.List;

import org.apache.ibatis.session.SqlSession;

import com.yedam.saramin.comm.DataSource;
import com.yedam.saramin.company.service.CompanyMapper;
import com.yedam.saramin.company.service.CompanyService;
import com.yedam.saramin.company.service.CompanyVO;

public class CompanyServiceImpl implements CompanyService {
	private SqlSession sqlSession = DataSource.getInstance().openSession(true) ;
	private CompanyMapper map = sqlSession.getMapper(CompanyMapper.class) ;

	@Override
	public List<CompanyVO> selectCompanyList() {
		return map.selectCompanyList() ;
	}

	@Override
	public CompanyVO selectCompany(CompanyVO vo) {
		return map.selectCompany(vo) ;
	}

	@Override
	public int insertCompany(CompanyVO vo) {
		return map.insertCompany(vo) ;
	}

	@Override
	public int updateCompany(CompanyVO vo) {
		return map.updateCompany(vo) ;
	}

	@Override
	public int deleteCompany(CompanyVO vo) {
		return map.deleteCompany(vo) ;
	}
}
