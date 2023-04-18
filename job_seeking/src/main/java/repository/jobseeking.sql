drop database if exists job_seeking;
create database job_seeking;
use job_seeking;


use job_Seeking;

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
values(1,'Tuyển nhân viên IT', 'Lương tháng nghìn đô','2001/03/29','img-1',1,3),
      (2,'Tuyển quản lý nhà hàng','Lương tháng vài trăm đô','2001/08/18','img-2',5,2),
      (3,'Tuyển bếp chính cho nhà hàng','Lương tháng triệu đô','2019/07/26','img-3',3,5),
      (4,'Tuyển phục vụ cho khách sạn','Boa ăn ở, lương cao','2022/10/01','img-4',2,4),
      (5,'Tuyển bảo vệ cho khách sạn','Bổng lộc cao','2001/11/19','img-5',4,1);
select * from post;
create table `use`(


    id_use int primary key auto_increment,
    use_name varchar(255) not null,
    email varchar(255) not null,
    `password` varchar(255) not null,
    phone_number varchar(255) not null

);
insert into `use`
values(1,'Anh Đào','phantaanhdao@gmail.com','12345678','0931997293'),
      (2,'Hữu Huy','phantaanhdao@gmail.com','12345678','0931997293'),
      (3,'Hưng','phantaanhdao@gmail.com','12345678','0931997293'),
      (4,'Danh','phantaanhdao@gmail.com','12345678','0931997293'),
      (5,'HaiTT','phantaanhdao@gmail.com','12345678','0931997293'),
      (6,'Admin','admin@gmail.com','123123123',0931997293);
select * from `use`;


