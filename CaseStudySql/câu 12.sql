use resort_manager;

select hop_dong.ma_hop_dong,nhan_vien.ho_va_ten,khach_hang.ho_ten,khach_hang.so_dien_thoai,khach_hang.dia_chi,loai_khach.ten_loai_khach,dich_vu_di_kem.ten_dich_vu_di_kem,dich_vu_di_kem.gia,sum(hop_dong_chi_tiet.so_luong) as 'so_luong_dich_vu_di_kem',sum(hop_dong.tien_dat_coc) as 'tong_tien_dat_coc'
from khach_hang 
inner join loai_khach  on khach_hang.ma_loai_khach = loai_khach.ma_loai_khach
inner join hop_dong  on khach_hang.ma_khach_hang = hop_dong.ma_khach_hang
inner join nhan_vien  on hop_dong.ma_nhan_vien = nhan_vien.ma_nhan_vien
inner join hop_dong_chi_tiet  on hop_dong.ma_hop_dong = hop_dong_chi_tiet.ma_hop_dong
inner join dich_vu_di_kem  on hop_dong_chi_tiet.ma_dich_vu_di_kem = dich_vu_di_kem.ma_dich_vu_di_kem
where year(hop_dong.ngay_lam_hop_dong)=2019 and month(hop_dong.ngay_lam_hop_dong) in(10,11,12) and month(hop_dong.ngay_lam_hop_dong) not in (1,2,3,4,5,6)
group by hop_dong.ma_hop_dong;