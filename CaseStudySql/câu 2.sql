use resort_manager;

select *
from nhan_vien
where (ho_va_ten like "H%" 
or ho_va_ten like "T%" 
or ho_va_ten like "K%"
) and char_length(ho_va_ten)<=20; 


