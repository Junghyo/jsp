package z02_vo;
/*CREATE TABLE STUDENT
(
   NAME    VARCHAR2 (20),
   GRADE   NUMBER (10),
   CLASS   NUMBER (10),
   KOR     NUMBER (10),
   ENG     NUMBER (10),
   MATH    NUMBER (10)
)
NOCACHE
LOGGING;*/
public class Student_0511 {
	private String jname;
	private String jgrade;
	private int jclass;
	private int jkor;
	private int jeng;
	private int jmath;
	
	public Student_0511() {
	}

	public Student_0511(String jname, String jgrade, int jclass, int jkor, int jeng, int jmath) {
		this.jname = jname;
		this.jgrade = jgrade;
		this.jclass = jclass;
		this.jkor = jkor;
		this.jeng = jeng;
		this.jmath = jmath;
	}

	public String getJname() {
		return jname;
	}

	public void setJname(String jname) {
		this.jname = jname;
	}

	public String getJgrade() {
		return jgrade;
	}

	public void setJgrade(String jgrade) {
		this.jgrade = jgrade;
	}

	public int getJclass() {
		return jclass;
	}

	public void setJclass(int jclass) {
		this.jclass = jclass;
	}

	public int getJkor() {
		return jkor;
	}

	public void setJkor(int jkor) {
		this.jkor = jkor;
	}

	public int getJeng() {
		return jeng;
	}

	public void setJeng(int jeng) {
		this.jeng = jeng;
	}

	public int getJmath() {
		return jmath;
	}

	public void setJmath(int jmath) {
		this.jmath = jmath;
	}	
}

