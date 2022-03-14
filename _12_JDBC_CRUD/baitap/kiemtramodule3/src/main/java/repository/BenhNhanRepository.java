package repository;

import bean.BenhNhan;

import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.List;

public class BenhNhanRepository implements IBenhNhanRepository {
    List<BenhNhan> benhNhanList;

    @Override
    public List<BenhNhan> showListBenhNhan() {
        benhNhanList = new ArrayList<>();
        try {
            PreparedStatement statement = BaseRepository.connection.prepareStatement("select *\n" +
                    "from benh_nhan");
            ResultSet resultSet = statement.executeQuery();
            BenhNhan benhNhan = null;
            while (resultSet.next()) {
                benhNhan=new BenhNhan();
                benhNhan.setMaBenhNhan(resultSet.getString("ma_benh_nhan"));
                benhNhan.setMaBenhAn(resultSet.getString("ma_benh_an"));
                benhNhan.setTenBenhNhan(resultSet.getString("ten_benh_nhan"));
                benhNhan.setNgayNhapVien(resultSet.getString("ngay_nhap_vien"));
                benhNhan.setNgayRaVien(resultSet.getString("ngay_ra_vien"));
                benhNhan.setLyDoNhapVien(resultSet.getString("ly_do_nhap_vien"));
                benhNhanList.add(benhNhan);
            }
        } catch (SQLException throwables) {
            throwables.printStackTrace();
        }
        return benhNhanList;
    }

    @Override
    public void deleteBenhNhan(BenhNhan benhNhan) {
            try {
                PreparedStatement preparedStatement = BaseRepository.connection.prepareStatement(
                        " delete from benh_nhan\n" +
                                "where ma_benh_nhan=?");
                preparedStatement.setString(1, benhNhan.getMaBenhNhan());
                preparedStatement.executeUpdate();
            } catch (SQLException throwables) {
                throwables.printStackTrace();
            }
        }

    @Override
    public void updateBenhNhan(BenhNhan benhNhan) {
        try {
            PreparedStatement preparedStatement = BaseRepository.connection.prepareStatement(
                    "update benh_nhan\n" +
                            "set ten_benh_nhan=?, ngay_nhap_vien=?,ngay_ra_vien=?,ly_do_nhap_vien=?\n" +
                            "where ma_benh_nhan=?");
            preparedStatement.setString(1, benhNhan.getTenBenhNhan());
            preparedStatement.setString(2, benhNhan.getNgayNhapVien());
            preparedStatement.setString(3, benhNhan.getNgayRaVien());
            preparedStatement.setString(4, benhNhan.getLyDoNhapVien());
            preparedStatement.setString(5, benhNhan.getMaBenhNhan());
            preparedStatement.executeUpdate();
        } catch (SQLException throwables) {
            throwables.printStackTrace();
        }
    }

}
