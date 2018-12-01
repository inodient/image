package com.innodient.image.data;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.Id;
import java.io.Serializable;





@Entity
public class Users implements Serializable {
    /**
	 * 
	 */
	private static final long serialVersionUID = 1L;
	@Id
    @GeneratedValue
    private Long id;
    @Column(nullable = false)
    private String name;
    @Column(nullable = false)
    private String country;
    @Column(nullable = false)
    private String temporary;
    @Column(nullable = true)
    private String columnsssss;
    @Column(nullable = true)
    private String columnkkkkk;
    
    protected Users() {
        // no-args constructor required by JPA spec
        // this one is protected since it shouldn't be used directly
    }
    
    public Users(String name, String country) {
        this.name = name;
        this.country = country;
    }
    
    public String getName() {
        return this.name;
    }
    
    public String getCountry() {
        return this.country;
    }
    // ... etc
}