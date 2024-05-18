package org.kh.dto;

public class Nadeulgil {

	private String ndname;
	private String ndcourse;
	private String ndtext;
	private String ndrink;
	private int ndlike;
	
	public Nadeulgil(String ndname, String ndcourse, String ndtext, String ndrink, int ndlike) {
		super();
		this.ndname = ndname;
		this.ndcourse = ndcourse;
		this.ndtext = ndtext;
		this.ndrink = ndrink;
		this.ndlike = ndlike;
	}

	public String getNdname() {
		return ndname;
	}

	public void setNdname(String ndname) {
		this.ndname = ndname;
	}

	public String getNdcourse() {
		return ndcourse;
	}

	public void setNdcourse(String ndcourse) {
		this.ndcourse = ndcourse;
	}

	public String getNdtext() {
		return ndtext;
	}

	public void setNdtext(String ndtext) {
		this.ndtext = ndtext;
	}

	public String getNdrink() {
		return ndrink;
	}

	public void setNdrink(String ndrink) {
		this.ndrink = ndrink;
	}

	public int getNdlike() {
		return ndlike;
	}

	public void setNdlike(int ndlike) {
		this.ndlike = ndlike;
	}

	@Override
	public String toString() {
		return "Nadeulgil [ndname=" + ndname + ", ndcourse=" + ndcourse + ", ndtext=" + ndtext + ", ndrink=" + ndrink
				+ ", ndlike=" + ndlike + "]";
	}
	
	
}
