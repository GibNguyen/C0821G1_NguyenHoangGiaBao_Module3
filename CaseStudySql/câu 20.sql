use resort_manager;

select ma_nhan_vien as 'id(ma_nhan_vien,ma_khach_hang)',ho_va_ten,ngay_sinh,so_dien_thoai,email,dia_chi
from nhan_vien
union all
select ma_khach_hang ,ho_ten,ngay_sinh,so_dien_thoai,email,dia_chi
from khach_hang;