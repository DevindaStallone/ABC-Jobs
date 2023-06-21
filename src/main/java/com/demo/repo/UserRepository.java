package com.demo.repo;

import java.util.List;

import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.data.jpa.repository.Query;
import org.springframework.data.repository.query.Param;
import org.springframework.stereotype.Repository;

import com.demo.model.*;


@Repository
public interface UserRepository extends JpaRepository<User, Long> {

	@Query(value = "Select * from users where :input IN(firstName, lastName, about)",
			nativeQuery = true)
	List<User> SearchUserByInput(@Param("input") String inp);

	Integer deleteByUserID(Integer id);

	User findByEmailAndPass(String email, String pass);

	String findByEmail(String email);

	User findByUserID(Integer id);
	
	
	 @Query("SELECT p FROM User p WHERE p.firstName LIKE %?1%"
	            + " OR p.lastName LIKE %?1%"
	            + " OR p.email LIKE %?1%"
	            + " OR CONCAT(p.firstName, '') LIKE %?1%")
	    public List<User> search(String keyword);

}
