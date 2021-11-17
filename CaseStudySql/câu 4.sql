use resort_manager;

select khach_hang.ma_khach_hang,khach_hang.ho_ten,loai_khach.ten_loai_khach ,count(khach_hang.ma_khach_hang) as so_lan_dat_phong
from khach_hang
join loai_khach on khach_hang.ma_loai_khach=loai_khach.ma_loai_khach
join hop_dong on khach_hang.ma_khach_hang= hop_dong.ma_khach_hang
where loai_khach.ten_loai_khach="Diamond"
group by khach_hang.ma_khach_hang;