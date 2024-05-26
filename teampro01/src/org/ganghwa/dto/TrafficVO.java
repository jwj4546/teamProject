package org.ganghwa.dto;

public class TrafficVO {
	private int tno;
	private String ttype;
	private String no;
	private String route;
	private String coment;
	private String uri;
	public TrafficVO() {}
	public TrafficVO(int tno, String ttype, String no) {
		super();
		this.tno = tno;
		this.ttype = ttype;
		this.no = no;
	}
	public int getTno() {
		return tno;
	}
	public void setTno(int tno) {
		this.tno = tno;
	}
	public String getTtype() {
		return ttype;
	}
	public void setTtype(String ttype) {
		this.ttype = ttype;
	}
	public String getNo() {
		return no;
	}
	public void setNo(String no) {
		this.no = no;
	}
	public String getRoute() {
		return route;
	}
	public void setRoute(String route) {
		this.route = route;
	}
	public String getComent() {
		return coment;
	}
	public void setComent(String coment) {
		this.coment = coment;
	}
	public String getUri() {
		return uri;
	}
	public void setUri(String uri) {
		this.uri = uri;
	}
	@Override
	public String toString() {
		return "TrafficVO [tno=" + tno + ", ttype=" + ttype + ", no=" + no + ", route=" + route + ", coment=" + coment
				+ ", uri=" + uri + "]";
	}
}
