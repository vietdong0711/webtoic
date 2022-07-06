package com.webtoeic.api.admin;

import com.webtoeic.dto.KetQuaTestDTO;
import com.webtoeic.entities.KetQuaBaiTest;
import com.webtoeic.service.BaiThiThuService;
import com.webtoeic.service.KetQuaBaiTestService;
import com.webtoeic.service.NguoiDungService;
import org.modelmapper.ModelMapper;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.http.HttpStatus;
import org.springframework.http.ResponseEntity;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RestController;

import java.util.ArrayList;
import java.util.List;

@RestController
@RequestMapping("api/admin/lichSu")
public class LichSuThiApi {
    @Autowired
    private KetQuaBaiTestService ketQuaBaiTestService;

    @Autowired
    private ModelMapper mapper;

    @Autowired
    private NguoiDungService nguoiDungService;

    @Autowired
    private BaiThiThuService baiThiThuService;


    @GetMapping()
    public ResponseEntity<?> getListKetQua() {
        List<KetQuaBaiTest> ketQuaBaiTestList = ketQuaBaiTestService.getAll();
        List<KetQuaTestDTO> ketQuaTestDTOS = new ArrayList<>();
        for (KetQuaBaiTest e:ketQuaBaiTestList) {
            KetQuaTestDTO ketQuaTestDTO = mapper.map(e,KetQuaTestDTO.class);
            ketQuaTestDTO.setTenbaithithu(e.getBaithithu().getTenbaithithu());
            ketQuaTestDTO.setTennguoithi(e.getNguoidung().getHoTen());
            ketQuaTestDTOS.add(ketQuaTestDTO);
        }
        return new ResponseEntity<>(ketQuaTestDTOS, HttpStatus.OK);
    }

}
