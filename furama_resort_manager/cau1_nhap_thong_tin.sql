use furama_resort_manager;
-- Nhập dữ liệu vào bảng vị trí: 
insert into vi_tri (ma_vi_tri,ten_vi_tri) value (1,'Giám đốc');
insert into vi_tri (ma_vi_tri,ten_vi_tri) value (2,'Quản lý');
insert into vi_tri (ma_vi_tri,ten_vi_tri) value (3,'Giám sát');
insert into vi_tri (ma_vi_tri,ten_vi_tri) value (4,'Chuyên viên');
insert into vi_tri (ma_vi_tri,ten_vi_tri) value (5,'Phục vụ');
insert into vi_tri (ma_vi_tri,ten_vi_tri) value (6,'Lễ tân');

-- Nhập dữ liệu vào bảng trình độ: 
insert into trinh_do value (1,'Đại học');
insert into trinh_do value (2,'Cao đẳng');
insert into trinh_do value (3,'Sau Đại học');
insert into trinh_do value (4,'Trung cấp');

-- select*
-- from trinh_do

-- Nhập dữ liệu vào bảng bộ phận: 
insert into bo_phan value (1,'Hành Chính');
insert into bo_phan value (2,'Sale – Marketing');
insert into bo_phan value (3,'Phục vụ');
insert into bo_phan value (4,'Quản lý');

-- update bo_phan set ten_bo_phan = 'Sale – Marketing' where ma_bo_phan = 2;

-- Nhập dữ liệu vào bảng nhân viên:
insert into nhan_vien value (1,'Tôn Tằng Tôn Nữ Tạ Thị Mộng H','1990/09/19', '205301590',5000000.00,'0905000111','H@gmail.com', 'Quảng Nam',1,3,1);
insert into nhan_vien value (2,'Tống Mộng Mơ K','1993/10/20', '205333555',8000000.00,'0905000222','k@gmail.com', 'Quảng Nam',2,1,1);
insert into nhan_vien value (3,'Tao Là Tao','1995/11/20', '205333666',10000000.00,'0905000333','tao@gmail.com', 'Quảng Nam',3,1,2);
insert into nhan_vien value (4,'Hao Là Hao','1994/11/20', '205333777',11000000.00,'0905000444','hao@gmail.com', 'Quảng Nam',3,2,2);
insert into nhan_vien value (5,'Kiên Là Tao','1998/12/22', '205333888',10000000.00,'0905000555','kien@gmail.com', 'Quảng Nam',3,2,2);

-- Nhập dữ liệu vào bảng loại khách:
insert into loai_khach value (1,'Diamond');
insert into loai_khach value (2,'Platinium,');
insert into loai_khach value (3,'Gold,');
insert into loai_khach value (4,'Silver,');
insert into loai_khach value (5,'Member,');

 -- update loai_khach set ten_loai_khach = 'Platinium,' where ma_loai_khach = 2;
 
-- Nhập dữ liệu vào bảng khách hàng:
insert into khach_hang value (1,1,'Nguyễn Văn A','1989/09/19',1, '205301590','0905000111','a@gmail.com', 'Quảng Nam');
insert into khach_hang value (2,1,'Nguyễn Thị B','1989/09/19',0, '205111222','0905111222','b@gmail.com', 'Đà Nẵng');
insert into khach_hang value (3,2,'David','1988/01/15',1, '205333111','0905333111','david@gmail.com', 'USA');
insert into khach_hang value (4,2,'Mary','1981/03/17',0, '205222333','0905222333','mary@gmail.com', 'CAN');
insert into khach_hang value (5,2,'Mary','1985/02/19',0, '205222444','0905222333','mary1@gmail.com', 'ENG');
insert into khach_hang value (6,2,'David','1988/01/15',1, '205333111','0905333111','david@gmail.com', 'USA');
update khach_hang set ho_ten = 'John', so_cmnd = '205321123', so_dien_thoai = '0905321123', email = 'john@gmail.com', dia_chi = 'FRA' where ma_khach_hang=6;

-- Nhập dữ liệu vào bảng kiểu thuê:
insert into kieu_thue value (1,'theo giờ',100);
insert into kieu_thue value (2,'theo ngày',90);
insert into kieu_thue value (3,'theo tháng',80);
insert into kieu_thue value (4,'theo năm',50);

-- Nhập dữ liệu vào bảng loại dịch vụ:
insert into loai_dich_vu value (1,'Villa');
insert into loai_dich_vu value (2,'House');
insert into loai_dich_vu value (3,'Room');

-- Nhập dữ liệu vào bảng dịch vụ:
-- dich_vu(ma_dich_vu, ten_dich_vu, dien_tich, chi_phi_thue, so_nguoi_toi_da, ma_kieu_thue, ma_loai_dich_vu, tieu_chuan_phong, 
--          mo_ta_tien_nghi_khac, dien_tich_ho_boi, so_tang)
insert into dich_vu value (1,'Villa 2 tầng', 150, 500, 10, 3, 1, '5 sao','Có hồ bơi', 30,2);
insert into dich_vu value(2,"villa 1 tầng",100,300,7,2,1,"4 sao","không",10,1);
insert into dich_vu value (3,'House 1 tầng', 80, 200, 5, 2, 2, '3 sao','Có bếp',null,1);
insert into dich_vu value(4,"house1",40,15.00,4,1,2,"3 sao","không",null,3);
insert into dich_vu value(5,"room1",20,15.00,2,3,3,null,null,null,null);
insert into dich_vu value (6,'Room 2 giường', 50, 100, 3, 1, 3, null,null,null,null);

-- Nhập dữ liệu vào bảng hợp đồng:
insert into hop_dong value (1,'2020/01/15 14:00:00','2020/02/15 12:00:00', 250, 500, 3, 1, 1);
insert into hop_dong value (2,'2019/05/20 14:00:00','2020/05/21 12:00:00', 150, 300, 2, 3, 2);
insert into hop_dong value (3,'2018/07/17 14:00:00','2018/07/18 12:00:00', 100, 200, 3, 2, 3);
insert into hop_dong value (4,"2020/04/03 14:00:00","2020/04/04 12:00:00",20,15.00,4,2,4);
insert into hop_dong value (5,"2020/07/20 14:00:00","2020/07/20 22:00:00",15,15.00,4,1,5);
insert into hop_dong value (6,"2020/05/20 14:00:00","2020/06/20 12:00:00",20,100,5,4,6);
insert into hop_dong value (7,"2019/10/20 14:00:00","2020/11/20 12:00:00",50,100,5,2,6);
insert into hop_dong value (8,"2015/10/20 14:00:00","2015/11/20 12:00:00",50,100,5,6,3);
insert into hop_dong value (9,"2015/10/20 14:00:00","2015/11/20 12:00:00",50,100,3,2,3);

-- Nhập dữ liệu vào bảng dịch vụ đi kèm:
insert into dich_vu_di_kem value (1,'massage', 10, 1, 'sẵn sàng');
insert into dich_vu_di_kem value (2,'karaoke', 20, 1, 'sẵn sàng');
insert into dich_vu_di_kem value (3,'thức ăn', 10, 1, 'sẵn sàng');
insert into dich_vu_di_kem value (4,'nước uống', 5, 1, 'sẵn sàng');
insert into dich_vu_di_kem value (5,'thuê xe di chuyển tham quan resort', 10, 1, 'sẵn sàng');

-- Nhập dữ liệu vào bảng hợp đồng chi tiết:
insert into hop_dong_chi_tiet value (1,5,1, 3);
insert into hop_dong_chi_tiet value (2,5,3, 2);
insert into hop_dong_chi_tiet value (3,5,4, 3);
insert into hop_dong_chi_tiet value (4,6,2, 1);
insert into hop_dong_chi_tiet value (5,6,5, 2);
insert into hop_dong_chi_tiet value (6,6,4, 4);
insert into hop_dong_chi_tiet value (7,7,4, 6);




-- Task 2:
SELECT *
FROM nhan_vien 
WHERE (ho_va_ten LIKE 't%' or ho_va_ten LIKE 'h%' or ho_va_ten LIKE 'k%') and length(ho_va_ten)<15;

-- Task 3:
select *
from khach_hang
where (year(curdate())-year(ngay_sinh)) between 18 and 50 and (dia_chi='Đà Nẵng' or dia_chi='Quảng Trị');

-- Task 4:
select kh.ma_khach_hang,kh.ho_ten,lk.ten_loai_khach, count(hd.ma_hop_dong) as 'Số lần đặt phòng'
from khach_hang kh
inner join loai_khach lk on kh.ma_loai_khach = lk.ma_loai_khach
inner join hop_dong hd on hd.ma_khach_hang = kh.ma_khach_hang
where lk.ten_loai_khach = 'Diamond'
group by kh.ma_khach_hang
order by 'Số lần đặt phòng';

-- Task 5:
select kh.ma_khach_hang,kh.ho_ten,lk.ten_loai_khach, hd.ma_hop_dong,dv.ten_dich_vu,hd.ngay_lam_hop_dong,hd.ngay_ket_thuc,hd.tong_tien
from khach_hang kh
left join loai_khach lk on kh.ma_loai_khach = lk.ma_loai_khach
left join hop_dong hd on hd.ma_khach_hang = kh.ma_khach_hang
left join dich_vu dv on hd.ma_dich_vu = dv.ma_dich_vu;

-- Task 6:
select dv.ma_dich_vu,dv.ten_dich_vu,dv.dien_tich,dv.chi_phi_thue,ldv.ten_loai_dịch_vu,hd.ngay_lam_hop_dong
from hop_dong hd
left join dich_vu dv on hd.ma_dich_vu = dv.ma_dich_vu
left join loai_dich_vu ldv on dv.ma_loai_dich_vu = ldv.ma_loai_dich_vu
where not exists (select * 
from hop_dong 
where year(hd.ngay_lam_hop_dong) between 2019 and year(curdate()));


-- Task 7:
select dv.ma_dich_vu,dv.ten_dich_vu,dv.dien_tich,dv.chi_phi_thue,ldv.ten_loai_dịch_vu,hd.ngay_lam_hop_dong
from hop_dong hd
left join dich_vu dv on hd.ma_dich_vu = dv.ma_dich_vu
left join loai_dich_vu ldv on dv.ma_loai_dich_vu = ldv.ma_loai_dich_vu
where not exists (select * 
from hop_dong 
where year(hd.ngay_lam_hop_dong) between 2019 and year(curdate()));

-- Task 8:
-- Cách 1: 
select distinct ho_ten
from khach_hang;

-- Cách 2: 
select  ho_ten
from khach_hang
group by ho_ten;

-- Cách 3:
select  ho_ten
from khach_hang
union
 select  ho_ten
from khach_hang;

-- Task 9:
select ldv.ten_loai_dịch_vu,dv.ten_dich_vu,hd.ngay_lam_hop_dong,hd.tong_tien,month(hd.ngay_lam_hop_dong) as 'Tháng',(hd.tong_tien) as 'Tổng doanh thu'
from hop_dong hd
inner join dich_vu dv on hd.ma_dich_vu = dv.ma_dich_vu
inner join loai_dich_vu ldv on dv.ma_loai_dich_vu = ldv.ma_loai_dich_vu 
where year(hd.ngay_lam_hop_dong)=2019
group by month(hd.ngay_lam_hop_dong);

-- Task 10:
select hd.ma_hop_dong,hd.ngay_lam_hop_dong,hd.ngay_ket_thuc,hd.tien_dat_coc,sum(hdct.so_luong) as 'so_luong_dich_vu_di_kem'
from hop_dong hd
inner join hop_dong_chi_tiet hdct on hd.ma_hop_dong = hdct.ma_hop_dong
inner join dich_vu_di_kem dvdk on hdct.ma_dich_vu_di_kem = dvdk.ma_dich_vu_di_kem
group by hd.ma_hop_dong;

-- Task 11:
select dvdk.ma_dich_vu_di_kem,dvdk.ten_dich_vu_di_kem,dvdk.gia,kh.ho_ten,kh.dia_chi,lk.ten_loai_khach
from khach_hang kh
inner join loai_khach lk on kh.ma_loai_khach = lk.ma_loai_khach
inner join hop_dong hd on kh.ma_khach_hang = hd.ma_khach_hang
inner join hop_dong_chi_tiet hdct on hd.ma_hop_dong = hdct.ma_hop_dong
inner join dich_vu_di_kem dvdk on hdct.ma_dich_vu_di_kem = dvdk.ma_dich_vu_di_kem
where lk.ten_loai_khach = 'Diamond' and (kh.dia_chi='Đà Nẵng' or kh.dia_chi='Quảng Nam');

-- Task 12:
select hd.ma_hop_dong,nv.ho_va_ten,kh.ho_ten,kh.so_dien_thoai,kh.dia_chi,lk.ten_loai_khach,dvdk.ten_dich_vu_di_kem,dvdk.gia,sum(hdct.so_luong) as 'so_luong_dich_vu_di_kem',sum(hd.tien_dat_coc) as tien_dat_coc
from khach_hang kh
inner join loai_khach lk on kh.ma_loai_khach = lk.ma_loai_khach
inner join hop_dong hd on kh.ma_khach_hang = hd.ma_khach_hang
inner join nhan_vien nv on hd.ma_nhan_vien = nv.ma_nhan_vien
inner join hop_dong_chi_tiet hdct on hd.ma_hop_dong = hdct.ma_hop_dong
inner join dich_vu_di_kem dvdk on hdct.ma_dich_vu_di_kem = dvdk.ma_dich_vu_di_kem
where year(hd.ngay_lam_hop_dong)=2019 and month(hd.ngay_lam_hop_dong) not in (1,2,3,4,5,6)
group by hd.ma_hop_dong;

-- Task 13:
create view Sum_so_luong_dich_vu_di_kem
as
select hd.ma_hop_dong,kh.ho_ten,kh.so_dien_thoai,kh.dia_chi,lk.ten_loai_khach,sum(hdct.so_luong) as so_luong_dich_vu_di_kem
from hop_dong hd
inner join khach_hang kh on kh.ma_khach_hang = hd.ma_khach_hang
inner join loai_khach lk on kh.ma_loai_khach = lk.ma_loai_khach
inner join hop_dong_chi_tiet hdct on hd.ma_hop_dong = hdct.ma_hop_dong
inner join dich_vu_di_kem dvdk on hdct.ma_dich_vu_di_kem = dvdk.ma_dich_vu_di_kem
group by kh.ho_ten;

select *
from Sum_so_luong_dich_vu_di_kem
where so_luong_dich_vu_di_kem=(select max(so_luong_dich_vu_di_kem) from Sum_so_luong_dich_vu_di_kem);

-- Task 14: 
select hd.ma_hop_dong,ldv.ten_loai_dịch_vu,dvdk.ten_dich_vu_di_kem,count(hdct.so_luong) as so_lan_su_dung
from hop_dong hd
inner join dich_vu dv on hd.ma_dich_vu = dv.ma_dich_vu
inner join loai_dich_vu ldv on ldv.ma_loai_dich_vu = dv.ma_loai_dich_vu
inner join hop_dong_chi_tiet hdct on hd.ma_hop_dong = hdct.ma_hop_dong
inner join dich_vu_di_kem dvdk on hdct.ma_dich_vu_di_kem = dvdk.ma_dich_vu_di_kem
group by dvdk.ma_dich_vu_di_kem;

-- Task 15:
select nv.ma_nhan_vien,nv.ho_va_ten,td.ten_trinh_do,bp.ten_bo_phan,nv.so_dien_thoai,nv.dia_chi,count(hd.ma_hop_dong) as So_luong_hop_dong
from nhan_vien nv
inner join trinh_do td on nv.ma_trinh_do = td.ma_trinh_do
inner join bo_phan bp on nv.ma_bo_phan = bp.ma_bo_phan
inner join hop_dong hd on nv.ma_nhan_vien = hd.ma_nhan_vien
group by nv.ma_nhan_vien
having So_luong_hop_dong<=3;

-- Task 16:
create view Danh_sach_nhan_vien_va_hop_dong
as
select nv.ma_nhan_vien,nv.ho_va_ten,nv.so_dien_thoai,nv.dia_chi,count(hd.ma_hop_dong) as So_luong_hop_dong
from nhan_vien nv
left join trinh_do td on nv.ma_trinh_do = td.ma_trinh_do
left join bo_phan bp on nv.ma_bo_phan = bp.ma_bo_phan
left join hop_dong hd on nv.ma_nhan_vien = hd.ma_nhan_vien
group by nv.ma_nhan_vien;

delete from nhan_vien where ma_nhan_vien not in (select ma_nhan_vien from Danh_sach_nhan_vien_va_hop_dong where So_luong_hop_dong<>0);

-- Task 17:
create view Tong_tien_thanh_toan_nam_2019
as
select kh.ma_khach_hang,kh.ho_ten,kh.so_dien_thoai,kh.dia_chi,lk.ten_loai_khach,sum(hd.tong_tien) as Tong_tien_thanh_toan
from hop_dong hd
inner join khach_hang kh on kh.ma_khach_hang = hd.ma_khach_hang
inner join loai_khach lk on kh.ma_loai_khach = lk.ma_loai_khach
where year(hd.ngay_lam_hop_dong)=2019 and kh.ma_loai_khach =2
group by kh.ma_khach_hang;

SET SQL_SAFE_UPDATES=0;
update khach_hang set ma_loai_khach = 1 where ma_khach_hang in (select ma_khach_hang from Tong_tien_thanh_toan_nam_2019 where Tong_tien_thanh_toan>200);
SET SQL_SAFE_UPDATES=1;

-- Task 18:
create view danh_sach_hop_dong_theo_khach_hang
as
select kh.ma_khach_hang,kh.ho_ten,kh.so_dien_thoai,kh.dia_chi,sum(year(hd.ngay_lam_hop_dong)) as nam_hop_dong
from hop_dong hd
inner join khach_hang kh on kh.ma_khach_hang = hd.ma_khach_hang
group by kh.ma_khach_hang;

SET SQL_SAFE_UPDATES=0;
delete from hop_dong where ma_khach_hang in (select ma_khach_hang from danh_sach_hop_dong_theo_khach_hang where nam_hop_dong <2016);
delete from khach_hang where ma_khach_hang in (select ma_khach_hang from danh_sach_hop_dong_theo_khach_hang where nam_hop_dong <2016);
SET SQL_SAFE_UPDATES=1;

-- Task 19:
create view so_lan_su_dung_dvdk
as
select dvdk.ma_dich_vu_di_kem,dvdk.ten_dich_vu_di_kem,dvdk.gia,sum(hdct.so_luong) as so_lan_su_dung
from dich_vu_di_kem dvdk
inner join hop_dong_chi_tiet hdct on hdct.ma_dich_vu_di_kem = dvdk.ma_dich_vu_di_kem
group by dvdk.ma_dich_vu_di_kem;

SET SQL_SAFE_UPDATES=0;
update dich_vu_di_kem set gia = gia*2 where ma_dich_vu_di_kem in (select ma_dich_vu_di_kem from so_lan_su_dung_dvdk where so_lan_su_dung >10);
SET SQL_SAFE_UPDATES=1;

-- Task 20:
select ma_nhan_vien as id,ho_va_ten,ngay_sinh,so_dien_thoai,email,dia_chi
from nhan_vien
union
select ma_khach_hang,ho_ten,ngay_sinh,so_dien_thoai,email,dia_chi
from khach_hang;

-- Task 21:
create view v_nhan_vien
as
select nv.ma_nhan_vien,nv.ho_va_ten,nv.ngay_sinh,nv.so_dien_thoai,nv.email,nv.dia_chi
from nhan_vien nv
inner join hop_dong hd on nv.ma_nhan_vien = hd.ma_nhan_vien
where nv.dia_chi like '%Quảng Nam%' -- and hd.ngay_lam_hop_dong = '2019/12/12'
group by nv.ma_nhan_vien;

-- Task 22:
SET SQL_SAFE_UPDATES=0;
update nhan_vien set dia_chi = 'Đà Nẵng' where ma_nhan_vien in (select ma_nhan_vien from v_nhan_vien);
SET SQL_SAFE_UPDATES=1;

-- Task 23:
delimiter //
create procedure sp_xoa_khach_hang (ma_kh_xoa int)
begin
delete from khach_hang where ma_khach_hang = ma_kh_xoa;
end;
// delimiter ;

-- Task 24: chưua kiểm tra được đầu vào
delimiter //
create procedure sp_them_moi_hop_dong (ma_hop_dong int,ngay_lam_hop_dong datetime,ngay_ket_thuc datetime,tien_dat_coc double,tong_tien double,ma_nhan_vien int,ma_khach_hang int,ma_dich_vu int)
begin
insert into hop_dong value (ma_hop_dong,ngay_lam_hop_dong,ngay_ket_thuc,tien_dat_coc,tong_tien,ma_nhan_vien,ma_khach_hang,ma_dich_vu); 
end;
// delimiter ;


-- Task 25:
delimiter //
create trigger tr_xoa_hop_dong
after delete
on hop_dong for each row
begin
select count(ma_hop_dong) as so_hop_dong_con_lai
from hop_dong;
end;
// delimiter ;

-- Task 26:






-- SELECT *
-- FROM nhan_vien 
-- WHERE (ho_va_ten LIKE 't%' or ho_va_ten LIKE 'h%' or ho_va_ten LIKE 'k%') and length(ho_va_ten)<15;

-- update nhan_vien set ho_va_ten = 'tao là ai' where ma_nhan_vien = 4;

-- select * from bo_phan;

-- delete from nhan_vien where ma_nhan_vien=5;
