package c01_mvc;

import z01_database.MembersDAO;
import z02_vo.Members;

public class A06_Service_0523 {
//	DB�� �����ؼ� id�� password�� ��ȿ���� Ȯ���ϴ� �޼��� ����
//	1. �����Ͻ� ����ó��
//	2. DB ���� ȣ��
	private MembersDAO dao;
//	��ȿ���� üũ
	public boolean isValid(Members vo){
		boolean hasData=false;
		dao = new MembersDAO();
//		�ش� db���� �����Ͱ� ���� ���� ��ȿ		
		if(dao.memInfo(vo)!=null){
			hasData=true;
		}
		return hasData;		
	}
//	������ data�� �� �������� ���
	public Members memInfo(Members vo){
		dao = new MembersDAO();
		return dao.memInfo(vo);
	}
}
