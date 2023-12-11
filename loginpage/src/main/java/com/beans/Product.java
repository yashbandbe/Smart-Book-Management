package com.beans;

import java.util.ArrayList;
import java.util.Collections;
import java.util.Comparator;

public class Product {
	
	private int id;
	private String bname;
	private String bauth;
	private String bprice;
	private String bpage;
	private String bedi;
	private String image;
	
	public int getId() {
		return id;
	}
	public void setId(int id) {
		this.id = id;
	}
	public String getBname() {
		return bname;
	}
	public void setBname(String bname) {
		this.bname = bname;
	}
	public String getBauth() {
		return bauth;
	}
	public void setBauth(String bauth) {
		this.bauth = bauth;
	}
	public String getBprice() {
		return bprice;
	}
	public void setBprice(String bprice) {
		this.bprice = bprice;
	}
	public String getBpage() {
		return bpage;
	}
	public void setBpage(String bpage) {
		this.bpage = bpage;
	}
	public String getBedi() {
		return bedi;
	}
	public void setBedi(String bedi) {
		this.bedi = bedi;
	}
	public String getImage() {
		return image;
	}
	public void setImage(String image) {
		this.image = image;
	}
	
	@Override
	public String toString() {
		return "Product [id=" + id + ", bname=" + bname + ", bauth=" + bauth + ", bprice=" + bprice + ", bpage=" + bpage
				+ ", bedi=" + bedi + ", image=" + image + "]";
	}
	
}









