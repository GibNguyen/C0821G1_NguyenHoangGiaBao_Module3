use resort_manager;

select *
from khach_hang
left join  loai_khach on khach_hang.ma_loai_khach=loai_khach.ma_loai_khach
left join hop_dong on khach_hang.ma_khach_hang= hop_dong.ma_khach_hang
left join dich_vu on hop_dong.ma_dich_vu=dich_vu.ma_dich_vu
