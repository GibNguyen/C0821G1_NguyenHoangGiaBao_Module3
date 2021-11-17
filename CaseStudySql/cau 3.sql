use resort_manager;

select *
from khach_hang
where(year(curdate())-year(ngay_sinh)) between 18 and 50 and (dia_chi="Đà Nẵng" or dia_chi="Quảng Trị");