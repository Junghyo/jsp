package z02_vo;
/*CREATE TABLE DEPT
(
   DEPTNO   NUMBER (2),
   DNAME    VARCHAR2 (14),
   LOC      VARCHAR2 (13)
)
NOCACHE
LOGGING;*/
public class Dept {
	private String jdeptno;
	private String jdname;
	private String jloc;
	
	public String getJdeptno() {
		return jdeptno;
	}
	public void setJdeptno(String jdeptno) {
		this.jdeptno = jdeptno;
	}
	public String getJdname() {
		return jdname;
	}
	public void setJdname(String jdname) {
		this.jdname = jdname;
	}
	public String getJloc() {
		return jloc;
	}
	public void setJloc(String jloc) {
		this.jloc = jloc;
	}
	
}
