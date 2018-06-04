package model;

import java.io.Serializable;
import java.util.List;

import javax.persistence.*;


/**
 * The persistent class for the product database table.
 * 
 */
@Entity
@NamedQuery(name="Product.findAll", query="SELECT p FROM Product p")
public class Product implements Serializable {
	private static final long serialVersionUID = 1L;

	@Id
	@Column(name="product_id")
	private Integer productId;

	private String available;

	private String description;

	@Column(name="manufacture_id")
	private Integer manufactureId;

	private String markup;

	@Column(name="product_code")
	private String productCode;

	@Column(name="purchase_cost")
	private String purchaseCost;

	@Column(name="quantity_on_hand")
	private String quantityOnHand;

	public Product() {
	}

	public Integer getProductId() {
		return this.productId;
	}

	public void setProductId(Integer productId) {
		this.productId = productId;
	}

	public String getAvailable() {
		return this.available;
	}

	public void setAvailable(String available) {
		this.available = available;
	}

	public String getDescription() {
		return this.description;
	}

	public void setDescription(String description) {
		this.description = description;
	}

	public Integer getManufactureId() {
		return this.manufactureId;
	}

	public void setManufactureId(Integer manufactureId) {
		this.manufactureId = manufactureId;
	}

	public String getMarkup() {
		return this.markup;
	}

	public void setMarkup(String markup) {
		this.markup = markup;
	}

	public String getProductCode() {
		return this.productCode;
	}

	public void setProductCode(String productCode) {
		this.productCode = productCode;
	}

	public String getPurchaseCost() {
		return this.purchaseCost;
	}

	public void setPurchaseCost(String purchaseCost) {
		this.purchaseCost = purchaseCost;
	}

	public String getQuantityOnHand() {
		return this.quantityOnHand;
	}

	public void setQuantityOnHand(String quantityOnHand) {
		this.quantityOnHand = quantityOnHand;
	}
	
	
	

}