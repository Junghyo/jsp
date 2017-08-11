package z02_vo;

public class Product {
	private String jprod;
	private int jcount;
	
	public Product() {
	}
	public Product(String jprod, int jcount) {
		this.jprod = jprod;
		this.jcount = jcount;
	}
	public String getJprod() {
		return jprod;
	}
	public void setJprod(String jprod) {
		this.jprod = jprod;
	}
	public int getJcount() {
		return jcount;
	}
	public void setJcount(int jcount) {
		this.jcount = jcount;
	}
	
}
