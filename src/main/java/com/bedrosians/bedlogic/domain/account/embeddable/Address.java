package com.bedrosians.bedlogic.domain.account.embeddable;


import javax.persistence.Column;
import javax.persistence.Embeddable;

import com.bedrosians.bedlogic.util.FormatUtil;


@Embeddable
public class Address{
	
	protected String streeLine1;	
	protected String streeLine2;	
	protected String city;	
	protected String state;
	protected String zip;			
	protected String country;
	 
	@Column(name = "CoAddr1")
	public String getStreeLine1() {
		return FormatUtil.process(streeLine1);
	}

	public void setStreeLine1(String streeLine1) {
		this.streeLine1 = streeLine1;
	}

	@Column(name = "CoAddr2")
	public String getStreeLine2() {
		return FormatUtil.process(streeLine2);
	}

	public void setStreeLine2(String streeLine2) {
		this.streeLine2 = streeLine2;
	}

	@Column(name = "CoCity")
	public String getCity() {
		return FormatUtil.process(city);
	}

	public void setCity(String city) {
		this.city = city;
	}

	@Column(name = "CoStateCd")
	public String getState() {
		return FormatUtil.process(state);
	}

	public void setState(String state) {
		this.state = state;
	}

	@Column(name = "CoZip")
	public String getZip() {
		return FormatUtil.process(zip);
	}

	public void setZip(String zip) {
		this.zip = zip;
	}

	@Column(name = "CoCountryCd")
	public String getCountry() {
		return FormatUtil.process(country);
	}


	public void setCountry(String country) {
		this.country = country;
	}
	
	public Address() {
	}
	
	public Address(String streeLine1, String streeLine2,
			       String addressCity, String addressState, 
			       String addressZip) {
		this.streeLine1 = streeLine1;
		this.streeLine2 = streeLine2;
		this.city = addressCity;
		this.state = addressState;
		this.zip = addressZip;
	}
	

	@Override
	public String toString() {
		return "Address ["
				+ "streeLine1=" + streeLine1 
				+ ", streeLine2=" + streeLine2 
				+ ", city=" + city 
				+ ", state=" + state 
				+ ", zip="
				+ zip + "]";
	}
	
}