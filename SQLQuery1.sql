Create Database Restaurant_Management_System;

use Restaurant_Management_System;

create table customer(
Customer_ID int primary key,
Customer_Name varchar (30) not null,
C_Phone int not null unique,
C_Address varchar (50) not null,
Waiter_ID int FOREIGN KEY References Waiter (Waiter_id)
);

select*from customer;

insert into customer values(1201,'Md khalik',01712423878,'Mirpur02',101);
insert into customer values(1221,'Tuhin',01722423878,'Mirpur02',102);
insert into customer values(1252,'Md khalik',01512423878,'Mirpur01',103);
insert into customer values(1223,'Amiri Azim',01752423878,'Mirpur02',105);
insert into customer values(1251,'Shamim',01812423878,'Mirpur02',104);
insert into customer values(1231,'Md khalik',01412423878,'Mirpur01',106);
insert into customer values(1241,'Sani',01510423879,'Mirpur01',107);
insert into customer values(1242,'Eleas',01910420878,'Mirpur02',108);
insert into customer values(1243,'Eleas',01911420878,'Mirpur02',108);
insert into customer values(1246,'Emon',01920400878,'Mirpur02',109);
insert into customer values(1248,'Efty',01998040878,'Mirpur02',110);
insert into customer values(1280,'Tuhin',01801012301,'Dhanmondi07',102);
insert into customer values(1276,'Emon',01762400087,'Dhanmondi14',109);
insert into customer values(1270,'Nency',060943832,'USA',105);
insert into customer values(1287,'Robad',065478923,'USA',103);
insert into customer values(1301,'Jolok Ahamed',01469040878,'Khilkhet',101);
insert into customer values(1302,'Rayhan',01801912391,'Khilkhet',101);
insert into customer values(1303,'Emon',01723509082,'Airport',103);
insert into customer values(1304,'Adda',+860609438,'China',105);
insert into customer values(1305,'Ander shon',+1065478923,'USA',103);

use Restaurant_Management_System;

create table Waiter(
Waiter_id int primary key,
W_Name varchar (30) not null,
W_Phone varchar(30) not null,
W_Add varchar (50) not null,
Salary int not null,
Hire_Date varchar (50) not null
);

use Restaurant_Management_System;

select*from Waiter;

insert into  Waiter values(101,'Md Kamal','01712123434','Khulna',18000,'12/09/2021');
insert into  Waiter values(102,'Md Sumo Khan','01612343222','Mirpur01',18000,'05/09/2022');
insert into  Waiter values(103,'Md Kamal','01712123434','Mirpur01',20000,'10/09/2021');
insert into  Waiter values(104,'Emran kobir','01712133443','Khulna',18000,'03/11/2022');
insert into  Waiter values(105,'Emir khan','01912133003','Khulna',20000,'08/11/2021');
insert into  Waiter values(106,'Sumia Aktar','01812133403','Khulna',18000,'22/11/2022');
insert into  Waiter values(107,'Susmita khan','01410330443','Satkhira',20000,'12/10/2021');
insert into  Waiter values(108,'Shahin khan','01410230443','Satkhira',20000,'12/07/2021');
insert into  Waiter values(109,'Siraj khan','01710130443','Satkhira',18000,'28/07/2022');
insert into  Waiter values(110,'Sakib','01610030403','Satkhira',18000,'07/09/2022');
insert into  Waiter values(111,'Tsha Aktar','01761234510','khulna',18000,'09/06/2022');
insert into  Waiter values(112,'Tasnim khan','01790130443','Mirpur01',18000,'11/09/2022');
insert into  Waiter values(113,'Mamun','01651130443','Mirpur02',15000,'07/08/2022');
insert into  Waiter values(114,'Tamim','01951190443','Mirpur02',17000,'02/09/2022');
insert into  Waiter values(115,'kadija','01659130443','Mirpur02',16000,'10/02/2022');

use Restaurant_Management_System;

create table Chaff(
Chaff_ID int primary key,
Chaff_Name varchar (30) not null,
Salary int not null,
Chaff_Phone varchar(30) unique,
Hire_Date varchar (40) not null
);

select*from Chaff;

insert into Chaff values (501,'MD Mortoja',27000,'01700011191','02/05/2021');
insert into Chaff values (511,'Raj khanna',24000,'01712010190','03/06/2021');
insert into Chaff values (521,'Lora',20000,'01722111721','04/08/2022');
insert into Chaff values (506,'Misrak khan',20000,'01712910199','23/11/2022');
insert into Chaff values (523,'lotif khan',20000,'01712914189','26/11/2022');
insert into Chaff values (526,'MB Habib',20000,'01732310159','26/11/2022');

use Restaurant_Management_System;

 create table Meall(
 M_ID int primary key,
 M_Name varchar (40) not null unique,
 Price int not null,
 Chef_ID int FOREIGN KEY References Chaff (Chaff_ID)
 );

 select*from Meall;

 insert into Meall values(2121,'Shami Kabab',60,501);
 insert into Meall values(2122,'Shami Kabab Sp',90,501);
 insert into Meall values(2123,'Chicken bhuna',150,501);
 insert into Meall values(2124,'Beef bhuna',200,501);

 insert into Meall values(2125,'French Fries',50,501);
 insert into Meall values(2126,'Kids special Noodles',160,501);
 insert into Meall values(2127,'Beef Samosa 2 Pcs',50,501);
 insert into Meall values(2128,'Spring roll 2 Pcs',70,501);

 insert into Meall values(2129,'Fish Finger 6 Pcs',200,501);
 insert into Meall values(2131,'Chicken Cutlet 2 Pcs',180,501);
 insert into Meall values(2132,'Beef Cutlet 2 Pcs',210,501);
 insert into Meall values(2133,'Chicken Nugget 6 Pcs',200,501);

 insert into Meall values(2134,'Chef’s Special Vegetable Salad',50,506);
 insert into Meall values(2135,'Raita- Cucumber Salad',70,506);
 insert into Meall values(2136,'Caesar Salad',55,506);
 insert into Meall values(2137,'Special  Salad',80,506);

 insert into Meall values(2138,'Afghan salad',100,506);
 insert into Meall values(2139,'Arab salad',70,506);
 insert into Meall values(2140,'Asinan Salad',60,506);
 insert into Meall values(2141,'Bean salad',80,506);

 insert into Meall values(2142,'Garden salad',100,506);
 insert into Meall values(2143,'Chinese chicken salad',70,506);
 insert into Meall values(2144,'Celery Victor',60,506);
 insert into Meall values(2145,'Chef salad',80,506);

 insert into Meall values(2146,'Firni',80,511);

  insert into Meall values(2147,'Firni',80,511);
  insert into Meall values(2148,'Gurer Payesh',80,511);
  insert into Meall values(2149,'Brownie',80,511);
  insert into Meall values(2150,'Caramel Pudding (serves 3)',220,511);
  insert into Meall values(2151,'Caramel Pudding (serves 5)',340,511);

  insert into Meall values(2152,'Variety of Juice',80,511);
  insert into Meall values(2153,'Coffee',110,511);
  insert into Meall values(2154,'Tea',80,511);
  insert into Meall values(2155,'Hot Chocolate',120,511);
  insert into Meall values(2156,' Special Milk',100,511);

  insert into Meall values(2157,'Chicken Corn Soup',120,521);
  insert into Meall values(2158,'Thai Soup',150,521);
  insert into Meall values(2159,'Chicken/ Beef Noodle Soup',180,511);
  insert into Meall values(2160,'Special Chicken Pasta',220,521);
  insert into Meall values(2161,' Special Beef pasta',320,521);

  insert into Meall values(2162,'BBQ Chicken 1 Pc',120,523);
  insert into Meall values(2163,'Beef Sheek Kabab 1 Pc',150,523);
  insert into Meall values(2164,'Chicken Rezala',160,523);
  insert into Meall values(2165,'Butter Chicken',220,523);
  insert into Meall values(2166,'Shorshe Chicken',180,523);

  insert into Meall values(2167,'Chef’s special Beef Pizza',520,526);
  insert into Meall values(2168,'Chef’s Special Chicken Pizza',550,526);
  insert into Meall values(2169,'Chef’s Special Shrimp Pizza',560,526);
  insert into Meall values(2170,'Chicken Do Piaza',520,526);
  insert into Meall values(2171,'Fish Do Piaza',480,526);

  insert into Meall values(2172,'Kolkata biryani with salad and drink.',320,521);
  insert into Meall values(2173,'Sindhi Biryani with salad',180,521);
  insert into Meall values(2174,'Malabar biryani with drink',260,521);
  insert into Meall values(2175,'Hazi biryani with salad',220,521);
  insert into Meall values(2176,'Special birani with salad and drink',380,521);

  use Restaurant_Management_System;

  select *from Restaurant01;

  create table Restaurant01(
  Restaurant_Name varchar(500) primary key,
  R_Address varchar(200) not null,
  R_Phone varchar (500)not null,
  R_Email varchar(500) not null unique
  );

  insert into Restaurant01 values('EXPENSIVE','Mirpur01_Rod No 1_Sector No2','Hot_L 2231 PH 01710010011','expensive01@gmail.com');

  Create table Orders(
  Order_Id int primary key,
  Customer_id int FOREIGN KEY References customer (customer_ID),
  Waiter_id int FOREIGN KEY References Waiter (Waiter_ID),
  Or_Date varchar (50) not null,
  Orders_Time varchar (40) not null,
  Quentity varchar (38) not null,
  Status varchar(40) not null,
  Meals_id int FOREIGN KEY References Meall (M_ID)
  );

  select *From Orders;

  insert into Orders values(01,1201,101,'22/11/2022','8:15pm','2','Served',2121);

  insert into Orders values(02,1221,102,'22/11/2022','8:15pm','2','Served',2122);
  insert into Orders values(03,1251,103,'22/11/2022','8:15pm','1','Served',2121);
  insert into Orders values(04,1252,104,'22/11/2022','8:15pm','3','Served',2122);
  insert into Orders values(05,1223,105,'22/11/2022','8:15pm','2','Served',2121);
  insert into Orders values(06,1231,106,'22/11/2022','8:15pm','1','Served',2121);
  insert into Orders values(07,1241,107,'22/11/2022','8:15pm','2','Served',2121);
  insert into Orders values(08,1242,108,'22/11/2022','8:15pm','4','Served',2123);
  insert into Orders values(09,1243,109,'22/11/2022','8:15pm','2','Served',2123);
  insert into Orders values(10,1246,110,'22/11/2022','8:15pm','2','Served',2124);
  insert into Orders values(11,1248,111,'22/11/2022','8:15pm','1','Served',2121);
  insert into Orders values(12,1280,112,'22/11/2022','8:15pm','2','Served',2124);
  insert into Orders values(13,1221,102,'22/11/2022','8:20pm','1','Served',2138);
  insert into Orders values(14,1246,110,'22/11/2022','8:25pm','1','Served',2140);
  insert into Orders values(15,1231,106,'22/11/2022','8:25pm','1','Served',2141);
  insert into Orders values(16,1242,108,'22/11/2022','8:20pm','4','Served',2139);


  insert into Orders values(17,1221,112,'22/11/2022','9:15pm','2','Served',2172);
  insert into Orders values(18,1251,110,'22/11/2022','9:15pm','1','Served',2174);
  insert into Orders values(19,1252,111,'22/11/2022','9:15pm','3','Served',2175);
  insert into Orders values(20,1223,105,'22/11/2022','9:15pm','2','Served',2176);
  insert into Orders values(21,1231,106,'22/11/2022','8:45pm','1','Served',2176);
  insert into Orders values(22,1241,107,'22/11/2022','8:45pm','2','Served',2167);
  insert into Orders values(23,1242,108,'22/11/2022','8:45pm','4','Served',2167);
  insert into Orders values(24,1243,109,'22/11/2022','8:45pm','2','Served',2169);
  insert into Orders values(25,1246,113,'22/11/2022','8:45pm','2','Served',2168);
  insert into Orders values(26,1248,114,'22/11/2022','8:45pm','1','Served',2169);
  insert into Orders values(27,1280,115,'22/11/2022','9:15pm','2','Served',2168);

  insert into Orders values(28,1221,112,'22/11/2022','9:15pm','2','Served',2147);
  insert into Orders values(29,1251,110,'22/11/2022','9:15pm','1','Served',2148);
  insert into Orders values(30,1252,111,'22/11/2022','9:15pm','3','Served',2149);
  insert into Orders values(31,1223,105,'22/11/2022','9:15pm','2','Served',2151);
  insert into Orders values(32,1231,106,'22/11/2022','8:45pm','1','Served',2147);
  insert into Orders values(33,1241,107,'22/11/2022','8:45pm','2','Served',2147);
  insert into Orders values(34,1242,108,'22/11/2022','8:45pm','4','Served',2150);
  insert into Orders values(35,1243,109,'22/11/2022','8:45pm','2','Served',2150);
  insert into Orders values(36,1246,113,'22/11/2022','8:45pm','2','Served',2147);
  insert into Orders values(37,1248,114,'22/11/2022','8:45pm','1','Served',2152);
  insert into Orders values(38,1280,115,'22/11/2022','9:15pm','2','Served',2152);

  insert into Orders values(39,1276,112,'22/11/2022','9:45pm','2','Served',2167);
  insert into Orders values(40,1270,110,'22/11/2022','9:45pm','1','Served',2168);
  insert into Orders values(41,1287,111,'22/11/2022','9:45pm','3','Served',2169);
  insert into Orders values(42,1301,105,'22/11/2022','9:45pm','2','Served',2167);
  insert into Orders values(43,1302,106,'22/11/2022','10:15pm','1','Served',2171);
  insert into Orders values(45,1303,107,'22/11/2022','10:15pm','2','Served',2162);
  insert into Orders values(46,1304,108,'22/11/2022','10:15pm','4','Served',2163);
  insert into Orders values(47,1305,109,'22/11/2022','10:15pm','2','Served',2164);
  insert into Orders values(48,1246,113,'22/11/2022','10:15pm','2','Served',2166);
  insert into Orders values(49,1248,114,'22/11/2022','10:15pm','1','Served',2165);
  insert into Orders values(50,1280,115,'22/11/2022','10:15pm','2','Served',2161);
