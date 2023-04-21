drop database if exists job_seeking;
create database job_seeking;

use job_seeking;

create table category
(
    id_category   int primary key not null,
    post_category varchar(255)    not null
);
insert into category
values (1, 'IT'),
       (2, 'Serve'),
       (3, 'The main kitchen'),
       (4, 'Protect'),
       (5, 'Manage');

select *
from category;

create table post
(
    id             int primary key auto_increment,
    post_title     varchar(255),
    `describe`     varchar(255),
    date_submitted varchar(255),
    img            varchar(255),
    id_category    int not null,
    id_use         int not null,
    foreign key (id_category) references category (id_category),
    foreign key (id_use) references `use` (id_use)
);

insert into post
values (1, 'Tuyển nhân viên IT', 'Lương tháng nghìn đô', '2001/03/29', 'img-1', 1, 3),
       (2, 'Tuyển quản lý nhà hàng', 'Lương tháng vài trăm đô', '2001/08/18', 'img-2', 5, 2),
       (3, 'Tuyển bếp chính cho nhà hàng', 'Lương tháng triệu đô', '2019/07/26', 'img-3', 3, 5),
       (4, 'Tuyển phục vụ cho khách sạn', 'Boa ăn ở, lương cao', '2022/10/01', 'img-4', 2, 4),
       (5, 'Tuyển bảo vệ cho khách sạn', 'Bổng lộc cao', '2001/11/19', 'img-5', 4, 1);

select *
from post;
create table `use`
(
    id_use       int primary key auto_increment,
    use_name     varchar(255) not null,
    email        varchar(255) not null,
    `password`   varchar(255) not null,
    phone_number varchar(255) not null

);

insert into `use` (use_name, email, password, phone_number)
values ('Anh Đào', 'phantaanhdao@gmail.com', '12345678', '0931997293'),
       ('Hữu Huy', 'nguyenhuuhuy1998@gmail.com,', '12345678', '0931997293'),
       ('Hưng', 'ngotienhung2000@gmail.com', '12345678', '0931997293'),
       ('Danh', 'danhnguyen.15112003@gmail.com', '12345678', '0931997293'),
       ('HaiTT', 'haitan28102408@gmail.com', '12345678', '0931997293'),
       ('Admin', 'admin@gmail.com', '123123123', '0931997293');

insert into `use` (use_name, email, password, phone_number)
values ('Nguyễn Văn A', 'van.a.nguyen@gmail.com', '12345678', '0987654321'),
       ('Trần Thị B', 'b.tran.thi@gmail.com', '87654321', '0123456789'),
       ('Lê Đức C', 'duc.le@gmail.com', '11111111', '0909090909'),
       ('Phạm Anh D', 'anh.d.pham@gmail.com', '22222222', '0912345678'),
       ('Đỗ Thị E', 'e.thi.do@gmail.com', '33333333', '0987654321'),
       ('Bùi Văn F', 'van.f.bui@gmail.com', '44444444', '0909090909'),
       ('Nguyễn Thị G', 'g.thi.nguyen@gmail.com', '55555555', '0123456789');
insert into `use` (use_name, email, password, phone_number)
values ('Anh Đào', 'phantaanhdao@gmail.com', '12345678', '0931997293'),
       ('Bảo Ngọc', 'baongoc@gmail.com', '87654321', '0912345678'),
       ('Cẩm Ly', 'camly@gmail.com', '13579024', '0987654321'),
       ('Đăng Khoa', 'dangkhoa@gmail.com', '24680135', '0918765432'),
       ('Em Gái Mưa', 'emgaimua@gmail.com', '98765432', '0965432198'),
       ('Fiona', 'fiona@gmail.com', '65432198', '0943216789'),
       ('Giang Hồng Ngọc', 'gianghongngoc@gmail.com', '24681012', '0987654321'),
       ('Hoàng Oanh', 'hoangoanh@gmail.com', '36985214', '0912345678'),
       ('Ivy', 'ivy@gmail.com', '98765432', '0965432198'),
       ('Jack', 'jack@gmail.com', '13579024', '0943216789'),
       ('Khoa Pug', 'khoapug@gmail.com', '36985214', '098765');


select *
from `use`;
alter table category
    add is_delete tinyint(1) default '0';
update category
set is_delete =1
where id_category = 5;
select *
from category
where is_delete = 0;

delete
from `use`;

alter table `use`
    add id_delete tinyint(1) default '0';

alter table category
    add is_delete tinyint(1) default '0';
