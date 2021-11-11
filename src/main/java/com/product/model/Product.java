package com.product.model;

import java.io.Serializable;

import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.Table;
import javax.validation.constraints.NotBlank;


@Entity
@Table(name="product")
public class Product implements Serializable {
	@Id
	@GeneratedValue(strategy = GenerationType.AUTO)
	private int id;
	
	@NotBlank(message="product name cannot empty")
	private String productname;
	private String description;
	private long price;
	private int model;
	private int payment;
	private String mobile;
	private String addresses;
	public int getId() {
		return id;
	}
	public void setId(int id) {
		this.id = id;
	}
	public String getProductname() {
		return productname;
	}
	public void setProductname(String productname) {
		this.productname = productname;
	}
	public String getDescription() {
		return description;
	}
	public void setDescription(String description) {
		this.description = description;
	}
	public long getPrice() {
		return price;
	}
	public void setPrice(long price) {
		this.price = price;
	}
	public int getModel() {
		return model;
	}
	public void setModel(int model) {
		this.model = model;
	}
	public int getPayment() {
		return payment;
	}
	public void setPayment(int payment) {
		this.payment = payment;
	}
	public String getMobile() {
		return mobile;
	}
	public void setMobile(String mobile) {
		this.mobile = mobile;
	}
	public String getAddresses() {
		return addresses;
	}
	public void setAddresses(String addresses) {
		this.addresses = addresses;
	}
	@Override
	public String toString() {
		return "Product [id=" + id + ", productname=" + productname + ", description=" + description + ", price="
				+ price + ", model=" + model + ", payment=" + payment + ", mobile=" + mobile + ", addresses="
				+ addresses + "]";
	}
	public Product(int id, String productname, String description, long price, int model, int payment, String mobile,
			String addresses) {
		super();
		this.id = id;
		this.productname = productname;
		this.description = description;
		this.price = price;
		this.model = model;
		this.payment = payment;
		this.mobile = mobile;
		this.addresses = addresses;
	}
	public Product() {
		super();
		// TODO Auto-generated constructor stub
	}
	
	
	

}
