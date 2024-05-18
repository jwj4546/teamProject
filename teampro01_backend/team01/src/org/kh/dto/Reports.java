package org.kh.dto;

public class Reports {

	private String rname;
	private String rtext;
	private String rrink;
	private int rlike;
	
	public Reports(String rname, String rtext, String rrink, int rlike) {
		super();
		this.rname = rname;
		this.rtext = rtext;
		this.rrink = rrink;
		this.rlike = rlike;
	}
	public String getRname() {
		return rname;
	}
	public void setRname(String rname) {
		this.rname = rname;
	}
	public String getRtext() {
		return rtext;
	}
	public void setRtext(String rtext) {
		this.rtext = rtext;
	}
	public String getRrink() {
		return rrink;
	}
	public void setRrink(String rrink) {
		this.rrink = rrink;
	}
	public int getRlike() {
		return rlike;
	}
	public void setRlike(int rlike) {
		this.rlike = rlike;
	}
	@Override
	public String toString() {
		return "Reports [rname=" + rname + ", rtext=" + rtext + ", rrink=" + rrink + ", rlike=" + rlike + "]";
	}
	
	
	
	
}