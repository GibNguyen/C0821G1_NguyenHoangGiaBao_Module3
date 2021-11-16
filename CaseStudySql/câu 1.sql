use resort_manager;

insert into vi_tri value (1,"lễ tân");

insert into trinh_do value (1,'Cao Đẳng');

insert into bo_phan value (1,'Housekeeping');

insert into vi_tri value (2,"thư kí");

insert into trinh_do value (2,'Đại học');

insert into bo_phan value (2,'Văn phòng');

insert into vi_tri value (3,"Manager");

insert into trinh_do value (3,'Đại học');

insert into bo_phan value (3,'Front Office');

insert into nhan_vien value(1,"Nguyễn Hoàng Gia Bảo","1993/04/03","201649043",7.00,"0903157020","giabao04031993@gmail.com","19 nguyễn đức cảnh",1,1,1);

insert into nhan_vien value(2,"Nguyễn Trung Kiên","1993/04/03","201649043",7.00,"0903157020","giabao04031993@gmail.com","19 nguyễn đức cảnh",2,2,2);

insert into nhan_vien value(3,"Đặng Hữu Dự","1993/04/03","201649043",7.00,"0903157020","giabao04031993@gmail.com","19 nguyễn đức cảnh",3,3,3);

insert into nhan_vien value(4,"Nguyen Hoang Gia Bao","1993/04/03","201649043",7.00,"0903157020","giabao04031993@gmail.com","19 nguyễn đức cảnh",3,3,3);

--  delete from nhan_vien where ma_nhan_vien;
-- delete from vi_tri where ma_vi_tri;
--  delete from trinh_do where ma_trinh_do;
-- delete from bo_phan where ma_bo_phan; 

 select * from nhan_vien;