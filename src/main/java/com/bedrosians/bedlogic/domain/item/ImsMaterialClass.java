package com.bedrosians.bedlogic.domain.item;
// Generated Mar 10, 2014 11:44:09 AM by Hibernate Tools 3.4.0.CR1

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.Id;
import javax.persistence.Table;

/**
 * ImsMaterialClass generated by hbm2java
 */
@Entity
@Table(name = "ims_material_class", schema = "public")
public class ImsMaterialClass implements java.io.Serializable {

	private String description;

	public ImsMaterialClass() {
	}

	public ImsMaterialClass(String description) {
		this.description = description;
	}

	@Id
	@Column(name = "description", unique = true, nullable = false, length = 50)
	public String getDescription() {
		return this.description;
	}

	public void setDescription(String description) {
		this.description = description;
	}

}
