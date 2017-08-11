package c01_mvc;

import z01_database.A01_EmpDB_0510;
import z02_vo.Emp;

public class A07_Emp_LoginService_0523 {
	private A01_EmpDB_0510 dao;
	public Emp check(Emp dto){
		dao = new A01_EmpDB_0510();
		return dao.Infologin(dto);
	}
	
	
}
