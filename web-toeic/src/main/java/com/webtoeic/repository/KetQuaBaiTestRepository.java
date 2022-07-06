package com.webtoeic.repository;

import com.webtoeic.entities.NguoiDung;
import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.stereotype.Repository;

import com.webtoeic.entities.KetQuaBaiTest;

import java.util.List;

@Repository
public interface KetQuaBaiTestRepository extends JpaRepository<KetQuaBaiTest,Integer> {

    List<KetQuaBaiTest> findByNguoidung(NguoiDung nguoiDung);
}
