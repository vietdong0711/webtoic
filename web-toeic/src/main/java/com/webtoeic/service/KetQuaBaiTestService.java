package com.webtoeic.service;

import com.webtoeic.entities.KetQuaBaiTest;
import com.webtoeic.entities.NguoiDung;

import java.util.List;

public interface KetQuaBaiTestService {
	void save(KetQuaBaiTest ketquabaitest);
	List<KetQuaBaiTest> getAll();
	List<KetQuaBaiTest> getByIDNguoiDung(long idNguoiDung);
}
