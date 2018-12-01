package com.innodient.image.data;

import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.data.repository.CrudRepository;

public interface UsersRepository extends CrudRepository<Users, Integer>  {

}
