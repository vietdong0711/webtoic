package com.webtoeic.api.client;

import com.webtoeic.dto.KetQuaTestDTO;
import com.webtoeic.entities.BaiThiThu;
import com.webtoeic.entities.CauHoiBaiTapDoc;
import com.webtoeic.entities.KetQuaBaiTest;
import com.webtoeic.entities.NguoiDung;
import com.webtoeic.service.BaiTapDocService;
import com.webtoeic.service.BaiThiThuService;
import com.webtoeic.service.KetQuaBaiTestService;
import com.webtoeic.service.NguoiDungService;
import org.modelmapper.ModelMapper;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.data.domain.Page;
import org.springframework.http.HttpStatus;
import org.springframework.http.ResponseEntity;
import org.springframework.web.bind.annotation.*;

import java.util.ArrayList;
import java.util.List;

@RestController
@RequestMapping("api/client/profile/ketQua")
public class ClientApi {
    @Autowired
    private KetQuaBaiTestService ketQuaBaiTestService;

    @Autowired
    private ModelMapper mapper;

    @Autowired
    private NguoiDungService nguoiDungService;

    @Autowired
    private BaiThiThuService baiThiThuService;


    @GetMapping("/{id}")
    public ResponseEntity<?> getListKetQua(
            @PathVariable long id) {
        List<KetQuaBaiTest> ketQuaBaiTestList = ketQuaBaiTestService.getByIDNguoiDung(id);
        List<KetQuaTestDTO> ketQuaTestDTOS = new ArrayList<>();
        for (KetQuaBaiTest e:ketQuaBaiTestList) {
            KetQuaTestDTO ketQuaTestDTO = mapper.map(e,KetQuaTestDTO.class);
            ketQuaTestDTO.setTenbaithithu(e.getBaithithu().getTenbaithithu());
            ketQuaTestDTO.setTennguoithi(e.getNguoidung().getHoTen());
            ketQuaTestDTOS.add(ketQuaTestDTO);
        }
        return new ResponseEntity<>(ketQuaTestDTOS, HttpStatus.OK);
    }
//    @GetMapping()
//    public ResponseEntity<List<KetQuaBaiTest>> getListKetQuaALL(
//            @PathVariable long id) {
//        return new ResponseEntity<>(ketQuaBaiTestService.getByIDNguoiDung(id), HttpStatus.OK);
//    }

}
