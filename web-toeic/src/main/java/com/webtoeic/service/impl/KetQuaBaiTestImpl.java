package com.webtoeic.service.impl;

import com.webtoeic.repository.NguoiDungRepository;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.webtoeic.entities.KetQuaBaiTest;
import com.webtoeic.entities.NguoiDung;
import com.webtoeic.repository.KetQuaBaiTestRepository;
import com.webtoeic.service.KetQuaBaiTestService;

import java.util.List;
import java.util.Optional;

@Service
public class KetQuaBaiTestImpl implements KetQuaBaiTestService{
	@Autowired
	KetQuaBaiTestRepository ketquabaitestRepo;
	@Autowired
	NguoiDungRepository nguoiDungRepo;
	
	@Override
	public void save(KetQuaBaiTest ketquabaitest) {
		ketquabaitestRepo.save(ketquabaitest);
	}

	@Override
	public List<KetQuaBaiTest> getAll() {
		return ketquabaitestRepo.findAll();
	}

	@Override
	public List<KetQuaBaiTest> getByIDNguoiDung(long idNguoiDung) {
		NguoiDung nguoiDung = nguoiDungRepo.findById(idNguoiDung).get();
		return ketquabaitestRepo.findByNguoidung(nguoiDung);
	}
}
