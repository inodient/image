package com.innodient.image.data.user;

import java.io.Serializable;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.Id;
import javax.persistence.Table;





@Entity
public class User implements Serializable {

	private static final long serialVersionUID = 1L;
	@Id
    @GeneratedValue
    private Long id;
	@Column(nullable = false)
	private String userid;
	@Column(nullable = false)
	private String name;
	@Column(nullable = false)
	private String password;
	@Column(nullable = true)
	private String usergroup;
	
	
	protected User() {
		
	}
	
	public User( String userid, String name, String password ) {
		this.userid = userid;
		this.name = name;
		this.password = password;
	}
	
	public String getUserId() {
		return this.userid;
	}
	
	public String getName() {
		return this.name;
	}
	
	public String getUserGroup() {
		return this.usergroup;
	}
}
