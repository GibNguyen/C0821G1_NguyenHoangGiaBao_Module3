use resort_manager;

SET SQL_SAFE_UPDATES = 0;
UPDATE khach_hang
SET ma_loai_khach = 2
WHERE ma_loai_khach = 1 and ma_loai_khach in (
select loai_khach.ma_loai_khach
from loai_khach
join hop_dong on khach_hang.ma_khach_hang = hop_dong.ma_khach_hang
join hop_dong_chi_tiet on hop_dong.ma_hop_dong = hop_dong_chi_tiet.ma_hop_dong
join dich_vu on hop_dong.ma_dich_vu = dich_vu.ma_dich_vu
join kieu_thue on dich_vu.ma_kieu_thue = kieu_thue.ma_kieu_thue
where year(hop_dong.ngay_lam_hop_dong) = 2019
group by hop_dong.ma_hop_dong
having  sum(hop_dong_chi_tiet.so_luong*kieu_thue.gia_thue) >= 50);
SET SQL_SAFE_UPDATES = 1;
