package org.kh.dto;

public class Beach {

	private String bname;
	private String btext;
	private String brink;
	private int blike;
	
	
	public Beach(String bname, String btext, String brink, int blike) {
		super();
		this.bname = bname;
		this.btext = btext;
		this.brink = brink;
		this.blike = blike;
	}


	public String getBname() {
		return bname;
	}


	public void setBname(String bname) {
		this.bname = bname;
	}


	public String getBtext() {
		return btext;
	}


	public void setBtext(String btext) {
		this.btext = btext;
	}


	public String getBrink() {
		return brink;
	}


	public void setBrink(String brink) {
		this.brink = brink;
	}


	public int getBlike() {
		return blike;
	}


	public void setBlike(int blike) {
		this.blike = blike;
	}


	@Override
	public String toString() {
		return "Beach [bname=" + bname + ", btext=" + btext + ", brink=" + brink + ", blike=" + blike + "]";
	}
	
	
	
	
}