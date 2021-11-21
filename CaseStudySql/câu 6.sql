use resort_manager;

select dich_vu.ma_dich_vu,dich_vu.ten_dich_vu,dich_vu.dien_tich,dich_vu.chi_phi_thue,loai_dich_vu.ten_loai_dịch_vu,hop_dong.ngay_lam_hop_dong
from dich_vu
left join loai_dich_vu on dich_vu.ma_loai_dich_vu=loai_dich_vu.ma_loai_dich_vu
left join hop_dong on dich_vu.ma_dich_vu=hop_dong.ma_dich_vu
where not exists (select * 
from hop_dong 
where year(hop_dong.ngay_lam_hop_dong) between 2019 and year(curdate()));
