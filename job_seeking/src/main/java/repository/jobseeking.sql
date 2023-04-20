drop database if exists job_seeking;
create database job_seeking;

use job_seeking;

create table category(
    id_category int primary key not null,
    post_category varchar(255) not null
);
insert into category
values(1,'IT'),
      (2,'Serve'),
      (3,'The main kitchen'),
      (4,'Protect'),
      (5,'Manage');
      
select * from category;

create table post(
                     id int primary key auto_increment,
                     post_title varchar(255) ,
                     `describe` varchar(255),
                     date_submitted varchar(255),
                     img varchar(255),
                     id_category int not null,
                     id_use int not null,
                     foreign key (id_category) references category(id_category),
                     foreign key (id_use) references `use`(id_use)
);

insert into post
values(1,'Tuyển nhân viên IT', 'Lương tháng nghìn đô','2001/03/29','https://huetronics.vn/wp-content/uploads/2021/07/z2600494096698_6222a9ae7d82ce4a3a9c493e11e66123.jpg',1,3),
      (2,'Tuyển quản lý nhà hàng','Lương tháng vài trăm đô','2001/08/18','https://ommani.com.vn/img/2021/0124/Nha-Hang-Chay-OM-MANI-quan-7-Tuyen-Dung.jpg',5,2),
      (3,'Tuyển bếp chính cho nhà hàng','Lương tháng triệu đô','2019/07/26','https://nhahanghoacat.com/uploads/news/2021/03/z2461111448773_6875f3f967a7f4b29c4f9162913353d9.jpg',3,5),
      (4,'Tuyển phục vụ cho khách sạn','Boa ăn ở, lương cao','2022/10/01','https://www.hotrosinhvien.vn/media/cache/resolve/lac_birds_full/45/dc/a9eacf4d194bc231558c750e18a3.jpeg',2,4),
      (5,'Tuyển bảo vệ cho khách sạn','Bổng lộc cao','2001/11/19','https://dragonstyle.vn/wp-content/uploads/2021/03/Khach-san-Dragon-Sea-Sam-Son-tuyen-dung-693x1024.jpg',4,1);
      
select * from post;
create table `use`(
                      id_use int primary key auto_increment,
                      use_name varchar(255) not null,
                      email varchar(255) not null,
                      `password` varchar(255) not null,
                      phone_number varchar(255) not null

);

insert into `use` (use_name, email, password, phone_number)
values('Anh Đào','phantaanhdao@gmail.com','12345678','0931997293'),
      ('Hữu Huy','nguyenhuuhuy1998@gmail.com,','12345678','0931997293'),
      ('Hưng','ngotienhung2000@gmail.com','12345678','0931997293'),
      ('Danh','danhnguyen.15112003@gmail.com','12345678','0931997293'),
      ('HaiTT','haitan28102408@gmail.com','12345678','0931997293'),
      ('Admin','admin@gmail.com','123123123','0931997293');

select * from `use`;

alter table category
add is_delete tinyint(1) default '0';
update category set is_delete =1 where id_category = 5;
select * from category where is_delete = 0;

drop table post;
