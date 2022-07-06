package com.webtoeic.dto;

import com.fasterxml.jackson.annotation.JsonFormat;
import com.fasterxml.jackson.annotation.JsonIgnore;
import com.webtoeic.entities.BaiThiThu;
import com.webtoeic.entities.NguoiDung;
import org.hibernate.annotations.OnDelete;
import org.hibernate.annotations.OnDeleteAction;
import org.springframework.format.annotation.DateTimeFormat;

import javax.persistence.Column;
import javax.persistence.JoinColumn;
import javax.persistence.ManyToOne;
import java.util.Date;

public class KetQuaTestDTO {
    private Integer ketquaid;

    private int socaudung;

    private int socausai;

    private Date ngaythi;


    private int correctreading;

    private int correctlisten;

    private String tennguoithi;

    private String tenbaithithu;


    public Integer getKetquaid() {
        return ketquaid;
    }

    public void setKetquaid(Integer ketquaid) {
        this.ketquaid = ketquaid;
    }

    public int getSocaudung() {
        return socaudung;
    }

    public void setSocaudung(int socaudung) {
        this.socaudung = socaudung;
    }

    public int getSocausai() {
        return socausai;
    }

    public void setSocausai(int socausai) {
        this.socausai = socausai;
    }

    public Date getNgaythi() {
        return ngaythi;
    }

    public void setNgaythi(Date ngaythi) {
        this.ngaythi = ngaythi;
    }

    public int getCorrectreading() {
        return correctreading;
    }

    public void setCorrectreading(int correctreading) {
        this.correctreading = correctreading;
    }

    public int getCorrectlisten() {
        return correctlisten;
    }

    public void setCorrectlisten(int correctlisten) {
        this.correctlisten = correctlisten;
    }

    public String getTennguoithi() {
        return tennguoithi;
    }

    public void setTennguoithi(String tennguoithi) {
        this.tennguoithi = tennguoithi;
    }

    public String getTenbaithithu() {
        return tenbaithithu;
    }

    public void setTenbaithithu(String tenbaithithu) {
        this.tenbaithithu = tenbaithithu;
    }
}
