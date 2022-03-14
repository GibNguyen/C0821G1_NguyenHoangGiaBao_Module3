package service;

import bean.BenhNhan;

import java.util.List;

public interface IBenhNhanService {
    List<BenhNhan> showListBenhNhan();
    public void deleteBenhNhan(BenhNhan benhNhan);
    public void updateBenhNhan(BenhNhan benhNhan);
}
