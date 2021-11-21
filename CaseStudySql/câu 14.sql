use resort_manager;

 select hop_dong.ma_hop_dong,loai_dich_vu.ten_loai_dịch_vu,dich_vu_di_kem.ten_dich_vu_di_kem,count(dich_vu_di_kem.ma_dich_vu_di_kem) as so_lan_su_dung
  from dich_vu
  join hop_dong on  dich_vu.ma_dich_vu = hop_dong.ma_hop_dong
  join loai_dich_vu on dich_vu.ma_loai_dich_vu = loai_dich_vu.ma_loai_dich_vu
  join hop_dong_chi_tiet on hop_dong.ma_hop_dong = hop_dong_chi_tiet.ma_hop_dong
  join dich_vu_di_kem on hop_dong_chi_tiet.ma_dich_vu_di_kem = dich_vu_di_kem.ma_dich_vu_di_kem
  group by dich_vu_di_kem.ma_dich_vu_di_kem
  having so_lan_su_dung = 1;