use resort_manager;

select dich_vu_di_kem.ten_dich_vu_di_kem,  max(hop_dong_chi_tiet.so_luong) as 'so_lan_su_dung'
  from hop_dong_chi_tiet 
  join hop_dong  on hop_dong_chi_tiet.ma_hop_dong = hop_dong.ma_hop_dong
  join dich_vu_di_kem  on hop_dong_chi_tiet.ma_dich_vu_di_kem = dich_vu_di_kem.ma_dich_vu_di_kem
  group by hop_dong_chi_tiet.ma_dich_vu_di_kem;