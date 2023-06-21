package com.demo.repo;

import org.springframework.data.jpa.repository.JpaRepository;

import com.demo.model.BulkEmail;

public interface BulkEmailRepository extends JpaRepository<BulkEmail, Integer> {

}
