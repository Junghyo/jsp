package c01_mvc;

import z01_database.MembersDAO;
import z02_vo.Members;

public class LoginService {
	private MembersDAO dao;
	public Members check(Members dto){
		dao = new MembersDAO();
		return dao.memInfo(dto);	
	}
}
