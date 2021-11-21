use resort_manager;

select nhan_vien.ma_nhan_vien,nhan_vien.ho_va_ten,trinh_do.ten_trinh_do,bo_phan.ten_bo_phan,nhan_vien.so_dien_thoai,nhan_vien.dia_chi,count(hop_dong.ma_hop_dong) as 'So_luong_hop_dong'
from nhan_vien 
inner join trinh_do  on nhan_vien.ma_trinh_do = trinh_do.ma_trinh_do
inner join bo_phan  on nhan_vien.ma_bo_phan = bo_phan.ma_bo_phan
inner join hop_dong  on nhan_vien.ma_nhan_vien = hop_dong.ma_nhan_vien
where year(hop_dong.ngay_lam_hop_dong) between 2018 and 2019
group by nhan_vien.ma_nhan_vien
having So_luong_hop_dong<=3;