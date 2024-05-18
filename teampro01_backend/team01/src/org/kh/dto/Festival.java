package org.kh.dto;

public class Festival {

	private String fname;
	private String ftext;
	private String frink;
	private int flike;
	
	
	public Festival(String fname, String ftext, String frink, int flike) {
		super();
		this.fname = fname;
		this.ftext = ftext;
		this.frink = frink;
		this.flike = flike;
	}


	public String getFname() {
		return fname;
	}


	public void setFname(String fname) {
		this.fname = fname;
	}


	public String getFtext() {
		return ftext;
	}


	public void setFtext(String ftext) {
		this.ftext = ftext;
	}


	public String getFrink() {
		return frink;
	}


	public void setFrink(String frink) {
		this.frink = frink;
	}


	public int getFlike() {
		return flike;
	}


	public void setFlike(int flike) {
		this.flike = flike;
	}


	@Override
	public String toString() {
		return "Festival [fname=" + fname + ", ftext=" + ftext + ", frink=" + frink + ", flike=" + flike + "]";
	}
	
}
