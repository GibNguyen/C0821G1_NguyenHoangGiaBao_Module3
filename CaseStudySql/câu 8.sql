use resort_manager;

select distinct khach_hang.ho_ten
from khach_hang;

select  ho_ten
from khach_hang
group by ho_ten;

select  ho_ten
from khach_hang
union
select  ho_ten
from khach_hang;

