package service;

import bean.BenhNhan;
import repository.BenhNhanRepository;
import repository.IBenhNhanRepository;

import java.util.List;

public class BenhNhanService implements IBenhNhanService {
    IBenhNhanRepository benhNhanRepository=new BenhNhanRepository();
    @Override
    public List<BenhNhan> showListBenhNhan() {
        return benhNhanRepository.showListBenhNhan();
    }

    @Override
    public void deleteBenhNhan(BenhNhan benhNhan) {
        benhNhanRepository.deleteBenhNhan(benhNhan);
    }

    @Override
    public void updateBenhNhan(BenhNhan benhNhan) {
        benhNhanRepository.updateBenhNhan(benhNhan);
    }

}
