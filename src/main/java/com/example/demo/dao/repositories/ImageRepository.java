package com.example.demo.dao.repositories;

import com.example.demo.dao.models.Image;
import org.springframework.data.jpa.repository.JpaRepository;

public interface ImageRepository extends JpaRepository<Image,Long> {
}
