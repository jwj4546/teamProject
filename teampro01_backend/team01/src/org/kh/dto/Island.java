package org.kh.dto;

public class Island {

	private String iname;
	private String itext;
	private String irink;
	private int ilike;
	
	
	public Island(String iname, String itext, String irink, int ilike) {
		super();
		this.iname = iname;
		this.itext = itext;
		this.irink = irink;
		this.ilike = ilike;
	}
	
	
	public String getIname() {
		return iname;
	}
	public void setIname(String iname) {
		this.iname = iname;
	}
	public String getItext() {
		return itext;
	}
	public void setItext(String itext) {
		this.itext = itext;
	}
	public String getIrink() {
		return irink;
	}
	public void setIrink(String irink) {
		this.irink = irink;
	}
	public int getIlike() {
		return ilike;
	}
	public void setIlike(int ilike) {
		this.ilike = ilike;
	}
	
	
	@Override
	public String toString() {
		return "Island [iname=" + iname + ", itext=" + itext + ", irink=" + irink + ", ilike=" + ilike + "]";
	}
	
	
	
	
}
