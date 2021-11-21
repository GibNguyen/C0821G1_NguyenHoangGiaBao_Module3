use resort_manager;

select dich_vu_di_kem.ma_dich_vu_di_kem,dich_vu_di_kem.ten_dich_vu_di_kem,dich_vu_di_kem.gia,khach_hang.ho_ten,khach_hang.dia_chi,loai_khach.ten_loai_khach
from khach_hang 
inner join loai_khach on khach_hang.ma_loai_khach = loai_khach.ma_loai_khach
inner join hop_dong  on khach_hang.ma_khach_hang = hop_dong.ma_khach_hang
inner join hop_dong_chi_tiet  on hop_dong_chi_tiet.ma_hop_dong = hop_dong_chi_tiet.ma_hop_dong
inner join dich_vu_di_kem  on hop_dong_chi_tiet.ma_dich_vu_di_kem = dich_vu_di_kem.ma_dich_vu_di_kem
where loai_khach.ten_loai_khach = 'Diamond' and (khach_hang.dia_chi='Đà Nẵng' or khach_hang.dia_chi='Quảng Nam');
