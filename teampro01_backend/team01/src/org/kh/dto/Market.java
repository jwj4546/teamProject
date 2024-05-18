package org.kh.dto;

public class Market {

	private String mname;
	private String mtext;
	private String mrink;
	private int mlike;
	
	
	public Market(String mname, String mtext, String mrink, int mlike) {
		super();
		this.mname = mname;
		this.mtext = mtext;
		this.mrink = mrink;
		this.mlike = mlike;
	}
	public String getMname() {
		return mname;
	}
	public void setMname(String mname) {
		this.mname = mname;
	}
	public String getMtext() {
		return mtext;
	}
	public void setMtext(String mtext) {
		this.mtext = mtext;
	}
	public String getMrink() {
		return mrink;
	}
	public void setMrink(String mrink) {
		this.mrink = mrink;
	}
	public int getMlike() {
		return mlike;
	}
	public void setMlike(int mlike) {
		this.mlike = mlike;
	}
	
	@Override
	public String toString() {
		return "Market [mname=" + mname + ", mtext=" + mtext + ", mrink=" + mrink + ", mlike=" + mlike + "]";
	}
	
	
	
}
