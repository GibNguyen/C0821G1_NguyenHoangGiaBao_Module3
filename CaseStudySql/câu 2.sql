use resort_manager;

select *
from nhan_vien
where (ho_va_ten like "N%" 
or ho_va_ten like "Đ%" 
) and length(ho_va_ten)<=20; 


