package com.bedrosians.bedlogic.domain.ims.enums;

public enum PackageUnit implements java.io.Serializable {

	    PCS("PCS"),
		PKG("PKG"),
		CTN("CTN"),
		PLT("PLT"),
		SHT("SHT"),
		BOX("BOX"),
		SET("SET"), 
		BAG("BAG"),
		YD("YD"),
		ROLL("ROLL"),
		LBS("LBS"),
		SF("S/F"), 
		SM("S/M");
		//LF("L/F"),
		//RS("R/S"),
		//SQ2("SQ/2"),
		//SQ3("SQ/3"),
		//$("$"),
		//DAY("DAY");
		 
	private String description;
		 
	private PackageUnit(String description){
		 this.description = description;
	}
	
	public String getDescription(){
		 return description;
	}

	public void setDescription(String description){
		this.description = description;
	}
		
	public static PackageUnit instanceOf(String key){
		for(PackageUnit body : values()){ 
		    if(body.getDescription().equalsIgnoreCase(key))
	            return body;				        
		}
	    return null;
	}

}
