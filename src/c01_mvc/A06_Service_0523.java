package c01_mvc;

import z01_database.MembersDAO;
import z02_vo.Members;

public class A06_Service_0523 {
//	DB에 접속해서 id와 password가 유효한지 확인하는 메서드 구현
//	1. 비지니스 로직처리
//	2. DB 연결 호출
	private MembersDAO dao;
//	유효성만 체크
	public boolean isValid(Members vo){
		boolean hasData=false;
		dao = new MembersDAO();
//		해당 db에서 데이터가 있을 때만 유효		
		if(dao.memInfo(vo)!=null){
			hasData=true;
		}
		return hasData;		
	}
//	연관된 data를 다 가져오는 경우
	public Members memInfo(Members vo){
		dao = new MembersDAO();
		return dao.memInfo(vo);
	}
}
