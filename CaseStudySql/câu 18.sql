use resort_manager;

SET FOREIGN_KEY_CHECKS = 0;
 delete from khach_hang
where ma_khach_hang  in (
select ma_khach_hang
from hop_dong
where year(ngay_lam_hop_dong) <= 2016);
SET FOREIGN_KEY_CHECKS = 1; 
select *
from khach_hang;