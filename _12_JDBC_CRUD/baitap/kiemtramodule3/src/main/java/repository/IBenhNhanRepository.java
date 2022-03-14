package repository;

import bean.BenhNhan;

import java.sql.PreparedStatement;
import java.sql.SQLException;
import java.util.List;

public interface IBenhNhanRepository {
    List<BenhNhan> showListBenhNhan();
    public void deleteBenhNhan(BenhNhan benhNhan);
    public void updateBenhNhan(BenhNhan benhNhan);
}
