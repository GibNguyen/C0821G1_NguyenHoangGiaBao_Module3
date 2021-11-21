use resort_manager;

SET SQL_SAFE_UPDATES = 0;
delete from nhan_vien
where ma_nhan_vien not in (
select ma_nhan_vien
from hop_dong
where year(ngay_lam_hop_dong) between 2017 and 2019);
SET SQL_SAFE_UPDATES = 1;
