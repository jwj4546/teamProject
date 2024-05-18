package org.kh.dto;

public class Historic {

	private String hname;
	private String htext;
	private String hrink;
	private int hlike;
	
	
	public Historic(String hname, String htext, String hrink, int hlike) {
		super();
		this.hname = hname;
		this.htext = htext;
		this.hrink = hrink;
		this.hlike = hlike;
	}
	public String getHname() {
		return hname;
	}
	public void setHname(String hname) {
		this.hname = hname;
	}
	public String getHtext() {
		return htext;
	}
	public void setHtext(String htext) {
		this.htext = htext;
	}
	public String getHrink() {
		return hrink;
	}
	public void setHrink(String hrink) {
		this.hrink = hrink;
	}
	public int getHlike() {
		return hlike;
	}
	public void setHlike(int hlike) {
		this.hlike = hlike;
	}
	
	
	@Override
	public String toString() {
		return "Historic [hname=" + hname + ", htext=" + htext + ", hrink=" + hrink + ", hlike=" + hlike + "]";
	}
	
	
	
	
	
}
