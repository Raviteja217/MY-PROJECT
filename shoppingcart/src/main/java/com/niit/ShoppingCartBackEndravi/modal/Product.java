package com.niit.ShoppingCartBackEndravi.modal;
import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.Table;
import javax.validation.constraints.NotNull;
import javax.validation.constraints.Size;

import org.springframework.stereotype.Component;
import org.springframework.web.multipart.MultipartFile;

import com.fasterxml.jackson.annotation.JsonIgnore;

@Entity
@Table(name = "Product")
@Component

public class Product {
	
	 @Id 
	 @GeneratedValue(strategy=GenerationType.AUTO)
	 @Column(name="id")
	private int id;
	private String name;
	private String description;
	@NotNull
    @Size(min=2,max=30,message="price should not be null")
	 @Column(name="price")
	private String price;
	private String quantity;
	private String warranty;
	private String capacity;
	private String primarymaterial;
	private String style;
	@Column(name="image",columnDefinition="varchar(255)")
	@Size(min=3,message="Please Select the Image")
	private	String image;
	@JsonIgnore
	transient private MultipartFile img;
	public int getId() {
		return id;
	}
	public void setId(int id) {
		this.id = id;
	}
	public String getName() {
		return name;
	}
	public void setName(String name) {
		this.name = name;
	}
	public String getDescription() {
		return description;
	}
	public void setDescription(String description) {
		this.description = description;
	}
	public String getPrice() {
		return price;
	}
	public void setPrice(String price) {
		this.price = price;
	}
	public String getImage() {
		return image;
	}
	public void setImage(String image) {
		this.image = image;
	}
	public MultipartFile getImg() {
		return img;
	}
	public void setImg(MultipartFile img) {
		this.img = img;
	}
	public String getWarranty() {
		return warranty;
	}
	public void setWarranty(String warranty) {
		this.warranty = warranty;
	}
	public String getCapacity() {
		return capacity;
	}
	public void setCapacity(String capacity) {
		this.capacity = capacity;
	}
	public String getPrimarymaterial() {
		return primarymaterial;
	}
	public void setPrimarymaterial(String primarymaterial) {
		this.primarymaterial = primarymaterial;
	}
	public String getStyle() {
		return style;
	}
	public void setStyle(String style) {
		this.style = style;
	}
	
	
	
	
	

	
}


	