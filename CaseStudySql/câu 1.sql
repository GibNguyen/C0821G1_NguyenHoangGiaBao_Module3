use resort_manager;

SET SQL_SAFE_UPDATES=0;
delete from trinh_do;
SET SQL_SAFE_UPDATES=1;

-- Nhập dữ liệu vào bảng vị trí:
insert into vi_tri  value (1,'Giám đốc');
insert into vi_tri  value (2,'Quản lý');
insert into vi_tri  value (3,'Giám sát');
insert into vi_tri  value (4,'Chuyên viên');
insert into vi_tri  value (5,'Phục vụ');
insert into vi_tri  value (6,'Lễ tân');

-- Nhập dữ liệu vào bảng trình độ:
insert into trinh_do value (1,'Đại học');
insert into trinh_do value (2,'Cao đẳng');
insert into trinh_do value (3,'Sau Đại học');
insert into trinh_do value (4,'Trung cấp');

-- Nhập dữ liệu vào bảng bộ phận:
insert into bo_phan value (1,'Hành Chính');
insert into bo_phan value (2,'Sale – Marketing');
insert into bo_phan value (3,'Phục vụ');
insert into bo_phan value (4,'Quản lý');

-- Nhập dữ liệu vào bảng nhân viên:
insert into nhan_vien value (1,'Trần Văn Kiên','1990/09/19', '205301590',5000000.00,'0905000111','kien@gmail.com', 'Quảng Nam',1,3,1);
insert into nhan_vien value (2,'Hoàng Thị Lan','1993/10/20', '205333555',8000000.00,'0905000222','lan@gmail.com', 'Quảng Nam',2,1,1);
insert into nhan_vien value (3,'Nguyễn Đức Bảo','1995/11/20', '205333666',10000000.00,'0905000333','bao@gmail.com', 'Quảng Nam',3,1,2);
insert into nhan_vien value (4,'Nguyễn Trần Văn Minh Lan','1994/11/20', '205333777',11000000.00,'0905000444','lan@gmail.com', 'Quảng Nam',3,2,2);
insert into nhan_vien value (5,'Khánh Trần','1998/12/22', '205333888',10000000.00,'0905000555','tran@gmail.com', 'Quảng Nam',3,2,2);

-- Nhập dữ liệu vào bảng loại khách:
insert into loai_khach value (1,'Diamond');
insert into loai_khach value (2,'Platinium,');
insert into loai_khach value (3,'Gold,');
insert into loai_khach value (4,'Silver,');
insert into loai_khach value (5,'Member,');

-- Nhập dữ liệu vào bảng khách hàng:
insert into khach_hang value (1,1,'Nguyễn Hoàng Anh','1989/09/19',1, '205301590','0905000111','anh@gmail.com', 'Quảng Nam');
insert into khach_hang value (2,1,'Trần Trung Trực','1989/09/19',0, '205111222','0905111222','truc@gmail.com', 'Đà Nẵng');
insert into khach_hang value (3,2,'Hoàng Lan Anh','1988/01/15',1, '205333111','0905333111','lananh@gmail.com', 'Đà Nẵng');
insert into khach_hang value (4,2,'Đặng Hữu Dự','1981/03/17',0, '205222333','0905222333','du@gmail.com', 'Hà Nội');
insert into khach_hang value (5,1,'Mary','1981/03/17',0, '205222333','0905222333','mary@gmail.com', 'Hà Nội');

-- Nhập dữ liệu vào bảng kiểu thuê:
insert into kieu_thue value (1,'theo giờ',100);
insert into kieu_thue value (2,'theo ngày',90);
insert into kieu_thue value (3,'theo tháng',80);
insert into kieu_thue value (4,'theo năm',50);

-- Nhập dữ liệu vào bảng loại dịch vụ:
insert into loai_dich_vu value (1,'Villa');
insert into loai_dich_vu value (2,'House');
insert into loai_dich_vu value (3,'Room');