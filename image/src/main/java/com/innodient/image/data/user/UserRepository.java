package com.innodient.image.data.user;

import java.util.List;

import org.springframework.data.jpa.repository.Query;
import org.springframework.data.repository.CrudRepository;
import org.springframework.data.repository.query.Param;

public interface UserRepository extends CrudRepository<User, Integer>{

	@Query(value="SELECT * FROM user WHERE userid = :userid", nativeQuery=true )
	List<User> findUser(@Param("userid") String userid );
	
	
}
