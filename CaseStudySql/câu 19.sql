use resort_manager;

SET SQL_SAFE_UPDATES = 0;
update dich_vu_di_kem
set gia = gia*2
where ma_dich_vu_di_kem in (
	select ma_dich_vu_di_kem
    from hop_dong_chi_tiet
	join hop_dong on hop_dong.ma_hop_dong=hop_dong_chi_tiet.ma_hop_dong
    where year(hop_dong.ngay_lam_hop_dong) = 2019
    group by ma_dich_vu_di_kem
    having count(ma_dich_vu_di_kem)>10
);
SET SQL_SAFE_UPDATES = 1;