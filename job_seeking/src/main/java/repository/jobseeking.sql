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
    phone_number varchar(255) not null);
insert into category
values(1,'Công nghệ thông tin',0),
      (2,'Dịch vụ',0),
      (3,'Đầu bếp',0),
      (4,'Bảo vệ',0),
      (5,'Quản lí',0);
      
select * from category;

create table post(
                     id int primary key auto_increment,
                     post_title varchar(255) ,
                     `describe` varchar(10000),
                     date_submitted varchar(255),
                     img varchar(2550),
                     id_category int not null,
                     id_use int not null,
                     foreign key (id_category) references category(id_category),
                     foreign key (id_use) references `use`(id_use)
);

insert into post
values(1,'Kỹ Sư IT Hệ Thống', 'Mô tả công việc
• Điều khiển và thiết lập thiết bị sản suất( chương trình hoạt động LCD/ OLED)
• Setting and maintaining chương trình cho các thiết bị sản xuất
• Phát hiện, báo cáo và xử lý lỗi hệ thống phát sinh
• Hợp đồng ban đầu kéo dài 8 tháng, sau đó đánh giá và có thể ký hợp đồng dài hạn.
Yêu cầu ứng viên
Tốt nghiệp Đại Học Chuyên ngành Máy tính/CNTT
Có kiến thức cơ bản về hệ thống
Có thể giao tiếp được bằng Tiếng Hàn / tiếng Anh. Ưu tiên tiếng Hàn
Yêu cầu gửi CV bằng tiếng Anh hoặc tiếng Hàn
Quyền lợi
• Lương sẽ được thảo luận sau khi thông qua CV & Phỏng vấn
• Chăm sóc sức khỏe: Khám sức khỏe định kỳ hàng năm
• Được đào tạo và làm việc cùng các chuyên gia Hàn Quốc
• Trợ cấp: Ăn trưa, đi lại, điện thoại, sinh nhật
• Cơ hội phát triển nghề nghiệp tốt với các dự án thú vị và đầy thử thách;
• Các hoạt động ngoài trời với sự hỗ trợ của công ty: câu lạc bộ thể thao, team building, tiệc happy hour, sinh nhật, du lịch, sự kiện nhân viên và gia đình, v.v.
• Thời gian làm việc: T2 - T6 (9:00 - 12:00 - 1:00 - 6:00)
(Nếu ký hợp đồng dài hạn)
- Lương tháng 13 và thưởng theo hiệu quả kinh doanh;
- Review đánh giá năng lực hàng năm và điều chỉnh tăng lương theo hiệu quả công việc','03/04/2023','https://haiphong.work/wp-content/uploads/2022/07/image_lg-cns-viet-nam-tuyen-dung-server-admin-2_010722-022114.jpg',1,3),
      (2,'Tuyển quản lý nhà hàng','🌈TUYỂN DỤNG - CÁC VỊ TRÍ QUẢN LÝ GIÁM SÁT 🌈
Mức lương: Tùy vị trí
Địa điểm: Tp.Hồ Chí Minh, Bình Dương, Đồng Nai, Hà Nội
💯 ĐĂNG KÝ NHANH NHẤT BẰNG CÁCH VÀO LINK ĐÍNH KÈM, TẠO TÀI KHOẢN VÀ BẤM "ỨNG TUYỂN NGAY" TRÊN LINK VIỆC LÀM 💯
-------------------
🤵NHÀ HÀNG TÂN HẢI VÂN - Marketing Manager:https://bit.ly/3qkvNPb
🤵Giám sát nhà hàng:https://bit.ly/3KUL4Oy
🤵Quản lý cửa hàng bánh:https://bit.ly/34WNTiS
🤵Giám Sát Nhà Hàng:https://bit.ly/3JrUP6r
🤵Quản Lý Nhà Hàng Nhật Bản:https://bit.ly/34SQU3A
🤵Quản Lý Nhà Hàng:https://bit.ly/3JBBSy8
🌐 Website: http://chefjob.vn/
☎️ Hotline: 1900 2175
--------------------
Hệ thống văn phòng hỗ trợ của chefjob trên toàn quốc:
🎪TRỤ SỞ CHÍNH
▪️ TP.HCM: 259B Hai Bà Trưng, Phường 6, Quận 3','29/01/2023','https://scontent.fsgn2-3.fna.fbcdn.net/v/t39.30808-6/276994344_5248547391846469_7975755180825479461_n.jpg?_nc_cat=107&ccb=1-7&_nc_sid=730e14&_nc_ohc=5bN7WsGlwEQAX-8ia1c&_nc_ht=scontent.fsgn2-3.fna&oh=00_AfDxpg6ulhOeIJbRK_HkA2Ekta4GJAtjjt-G2SrjhZRF_w&oe=6446BBC5',5,2),
      (3,'Tuyển bếp chính cho nhà hàng','🏵✨TUYỂN CẤP QUẢN LÝ NHÀ HÀNG TOÀN MIỀN BẮC✨🏵
Dịch giã nhưng job "hịn" vẫn thả đều đều nha cả nhà ❤
Cụ thể:
✅Hà Nội:
2 Giám sát nhà hàng (Kichi Kichi)
✅Hải Phòng:
4 Quản lý nhà hàng (Kichi - Gogi - Kpub)
4 Giám sát nhà hàng (Ktop - Isushi - Yutang - Hutong)
4 Tổ trưởng bếp (Ktop - Isushi - Yutang)
***Quyền lợi chung:
- Cơ hội làm việc tại chuỗi nhà hàng Top 1 Việt Nam, lộ trình thăng tiến rõ ràng
- Tham gia đầy đủ chế độ BHXH, BHYT, BH thất nghiệp theo quy định của Nhà nước.
- Lương tháng 13. thưởng thâm niên, quà sinh nhật, teambuilding, Party định kỳ,...
***Trách nhiệm chung:
1. Đảm bảo sự hài lòng của khách hàng
2. Đảm bảo chất lượng của nhà hàng theo tiêu chuẩn chung của Golden Gate
3. Quản trị nhân lực hiệu quả.
4. Điều hành hoạt động chung của nhà hàng','22/02/2023','https://scontent.fsgn2-5.fna.fbcdn.net/v/t1.6435-9/116103009_187297369486715_7994447339325728907_n.png?_nc_cat=104&ccb=1-7&_nc_sid=730e14&_nc_ohc=Fycuu46wxzIAX9-szJo&_nc_ht=scontent.fsgn2-5.fna&oh=00_AfCj-pdO4TX0zKL6JObQtKHlR1vgUf9Wtmot_1iKPu-SqQ&oe=646963A8',3,5),
      (4,'Tuyển phục vụ cho khách sạn','Thời gian làm việc:
Ca đêm Từ 23h-7h về ca chiều từ 15h-23h
Yêu cầu:
Giới tính: không yêu cầu
Độ tuổi: Không yêu cầu
Kinh nghiệm: Không yêu cầu
Học vấn:
Yêu cầu chung:
- Tiếng anh cơ bản
- Thái độ,tinh thần làm việc tốt.
- Nếu chưa có kinh nghiệm sẽ được đào tạo.
Mô tả công việc:
Prague airport hotel
Tuyển dụng Nhân viên
Nam lễ tân ca đêm. và. Bellman ca chiều.
Quyền lợi
-Tham gia đầy đủ BHXH theo quy đinh của nhà Nước
- lương cứng, Trợ cấp, service charge,tip
Liên hệ
157, Bạch Đằng, phường 2, Tân Bình','11/04/2023','https://alojob.vn/Img/Work/le-tan-cho-Prague-airport-hotel-1-2019-11-28-11-28-01.jpg',2,4),
      (5,'Tuyển bảo vệ cho khách sạn','Mô tả công việc
+ Trực cổng, tuần tra, ghi chép sổ sách.
+ Đảm bảo an ninh, an toàn mục tiêu làm việc
+ Duy trì nội quy của chủ quản
+ Thường xuyên kiểm tra PCCC tại mục tiêu
Quyền lợi
+ Hưởng mức lương từ 5.500.000 - 10.000.000 đồng/tháng.
+ Hưởng 300 % lương cơ bản nếu làm việc ngày lễ, tết.
+ Miễn phí toàn bộ chi phí đào tạo cho nhân viên bảo vệ chưa có kinh nghiệm, nhận lương bắt đầu từ thời gian học nghiệp vụ.
+ Hỗ trợ chổ ăn ở lại cho nhân viên có nhu cầu.
+ Được học các khóa PCCC, Nghiệp vụ bảo vệ chuyên nghiệp miễn phí.
+ Chế độ phụ cấp chức danh.
+ Chế độ phúc lợi: ma chay, hiếu hỷ, ốm đau, sinh đẻ,...
+ Có cơ hội thăng tiến trong công việc.','19/03/2023','https://tuyenbaove.com.vn/Images/right-banner.jpg',4,1);
      
select * from post;
create table `use`(
                      id_use int primary key auto_increment,
                      use_name varchar(255) not null,
                      email varchar(255) not null,
                      `password` varchar(255) not null,
                      phone_number varchar(255) not null

);

insert into `use` (use_name, email, password, phone_number,id_delete)
values ('Anh Đào', 'phantaanhdao@gmail.com', '12345678', '0931997293',0),
       ('Hữu Huy', 'nguyenhuuhuy1998@gmail.com,', '12345678', '0931997293',0),
       ('Hưng', 'ngotienhung2000@gmail.com', '12345678', '0931997293',0),
       ('Danh', 'danhnguyen.15112003@gmail.com', '12345678', '0931997293',0),
       ('HaiTT', 'haitan28102408@gmail.com', '12345678', '0931997293',0),
       ('Admin', 'admin@gmail.com', '123123123', '0931997293',0);

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

# drop table post;
# drop table category;


# alter table `use` add id_delete tinyint (1) default '0';
#
alter table category
    add is_delete tinyint(1) default '0';
# insert into post(post_title, `describe`,date_submitted, img, id_category, id_use)values( 'nắng', 'mưa' ,'là', 'chuyện', 1, 2);

