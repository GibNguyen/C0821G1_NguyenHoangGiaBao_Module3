use resort_manager;

select loai_dich_vu.ten_loai_dịch_vu,dich_vu.ten_dich_vu,hop_dong.ngay_lam_hop_dong,hop_dong.tong_tien,month(hop_dong.ngay_lam_hop_dong) as 'Tháng',(hop_dong.tong_tien) as 'Tổng doanh thu'
from hop_dong 
inner join dich_vu  on hop_dong.ma_dich_vu = dich_vu.ma_dich_vu
inner join loai_dich_vu  on dich_vu.ma_loai_dich_vu = loai_dich_vu.ma_loai_dich_vu 
where year(hop_dong.ngay_lam_hop_dong)=2019
group by month(hop_dong.ngay_lam_hop_dong);