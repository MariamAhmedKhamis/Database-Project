use SchoolDB;
Go
create table Teacher
(
SSN varchar(20) not null,
first_name varchar(20) not null,
last_name varchar(20) not null,
country varchar(20),
city varchar(20),
street varchar(20),
constraint teacher_pk primary key(SSN),
);

create table Classes
(
class_name varchar (10),
number int ,
SSN_teacher varchar(20),
constraint classes_pk primary key (class_name),
constraint classes_teacher_fk foreign key (SSN_teacher)
references Teacher (SSN)
);

create table Students
(
studentID int not null,
studentSSN varchar(30) not null,
first_name varchar(20) not null,
last_name varchar(20) not null,
studentAddress varchar(50) not null,
date_of_birth varchar(20) not null,
calss_name varchar(10),
constraint students_pk primary key (studentID , studentSSN),
constraint students_class_fk foreign key (calss_name)
references Classes (class_name)
);

create table Phone
(
SSN_teacher varchar(20) not null,
phone varchar(20),
constraint phone_pk primary key(SSN_teacher)
);

create table Material
(
materialID int,
materialName varchar(20),
constraint material_pk primary key(materialID)
);

create table Assignment
(
assignmentID int,
assignmentName varchar(20),
assignmentDate varchar(20),
constraint assignment_fk foreign key (assignmentID)
references Material (materialID)
);
alter table Assignment
alter column assignmentName varchar(50);


create table Teach_material
(
SSN_teacher varchar(20),
materialID int,
constraint teach_pk primary key(SSN_teacher,materialID),
);

create table student_material
(
SSN_student varchar(20),
materialID int,
);
 
alter table student_material
add constraint student_material_fk foreign key (materialID)
references Material(materialID);
alter table student_material
add constraint student_material_pk primary key(SSN_student);

create table Staff
(
SSN_staff varchar(20),
staff_name varchar(20),
job_title varchar(20),
constraint staff_pk primary key(SSN_staff)
);

insert into SchoolDB.dbo.Students (studentID,studentSSN,first_name,last_name,studentAddress,date_of_birth,calss_name)
values (20170100,'30179142301833','maram','mahmoud','fayoum','14/9/2017','1/3'),
       (20170101,'30176162301833','nourhan','mahmoud','cairo','16/6/2017','1/2'),
	   (20170102,'30178042301883','marwa','ali','fayoum','4/8/2017','1/1'),
	   (20170103,'30173043301893','yaraa','mohamed','cairo','4/3/2017','1/1'),
	   (20170104,'30176062301433','nadaa','khaled','fayoum','6/6/2017','1/2'),
	   (20170105,'30172052301593','mona','omar','fayoum','5/2/2017','4/3'),
	   (20170106,'30171122301598','mai','ahmed','cairo','2/11/2017','4/2'),
	   (20170107,'30172092301573','shimaa','omar','fayoum','9/2/2017','4/1'),
	   (20170108,'30175052301594','sabrin','mohammed','fayoum','5/5/2017','4/2'),
	   (20170109,'30177042301593','shimaa','mohammed','cairo','4/7/2017','1/1'),
	   (20170110,'30175128990332','ahmed','hassan','fayoum','12/5/2017','1/2'),
       (20170111,'30176114456620','ali','mohamed','cairo','11/6/2017','1/3'),
       (20170112,'30176644346201','mohsen','gaber','fayoum','6/6/2017','1/2'),
       (20170113,'30177134456620','hassan','ali','cairo','13/7/2017','1/1'),
       (20170114,'30174104452620','wael','ahmed','cairo','4/10/2017','5/2'),
	   (20170115,'301748104452620','naglaa','fathy','fayoum','8/10/2017','5/1'),
	   (20180116,'301823685697801','reem','ziad','cairo','2/3/2018','5/3'),
	    (20170117,'30182092301573','shimaa','omar','fayoum','9/2/2018','2/1'),
	   (20170118,'30185052301594','sabrin','mohammed','fayoum','5/5/2018','2/2'),
	   (20170119,'30187042301593','shimaa','mohammed','cairo','4/7/2018','2/3'),
	   (20170120,'30185128990332','ahmed','hassan','fayoum','12/5/2018','2/2'),
       (20170121,'30186114456620','ali','mohamed','cairo','11/6/2018','6/3'),
       (20170122,'30186644346201','mohsen','gaber','fayoum','6/6/2018','6/2'),
       (20170123,'30188134456620','hassan','ali','cairo','13/7/2018','2/1'),
	   (20180124,'30182116577833','hasnaa','gamal','fayoum','11/2/2018','2/1'),
       (20180125,'30183906577833','khaled','essam','fayoum','9/3/2018','6/1'),
       (20180126,'30184065778330','hager','sayed','fayoum','6/4/2018','2/2'),
       (20180127,'30184175348330','alia','ahmed','cairo','17/4/2018','2/2'),
       (20180128,'30181155348330','ahmed','gamal','cairo','15/1/2018','6/3'),
       (20180129,'30187055348330','amira','khaled','fayoum','5/7/2018','2/3'),
	   (20190130,'30197042301593','shimaa','mohammed','cairo','4/7/2019','3/1'),
	   (20190131,'30195128990332','ahmed','hassan','fayoum','12/5/2019','3/2'),
       (20190132,'30196114456620','ali','mohamed','cairo','11/6/2019','3/3'),
       (20190133,'30196644346201','mohsen','gaber','fayoum','6/6/2019','6/2'),
       (20190134,'30198134456620','hassan','ali','cairo','13/7/2019','3/1'),
	   (20190135,'30192116577833','hasnaa','gamal','fayoum','11/2/2019','3/1'),
       (20190136,'30193906577833','khaled','essam','fayoum','9/3/2019','3/1'),
       (20190137,'30194065778330','hager','sayed','fayoum','6/4/2019','4/2'),
       (20190138,'30194175348330','alia','ahmed','cairo','17/4/2019','3/2'),
       (20190139,'30191155348330','ahmed','gamal','cairo','15/1/2019','5/3'),
       (20190130,'30197055348330','amira','khaled','fayoum','5/7/2018','3/3');


insert into SchoolDB.dbo.Teacher(SSN,first_name,last_name,country,city,street)
     values('37485912304561','Steven','King','egypt','fayoum','mostafa-kamel-street'),
           ('23759104762315','Neena','Kochhar','egypt','cairo','elmoaz-street'),
		   ('46281345670982','Lex','DeHaan','egypt','fayoum','mostafa-kamel-street'), 
           ('45673829981356','Alexander','Hunold','egypt','cairo','elharam-street'),  
           ('34221987452300','Bruce','Ernst','egypt','cairo','elharam-street'),  
           ('45321765490234','David','Austin','egypt','fayoum','mostafa-kamel-street'), 
           ('98076543298767','Valli','Pataballa','egypt','cairo','elmoaz-street'),  
           ('34678906547621','Diana','Lorentz','egypt','cairo','elmoaz-street'),
           ('34216543217654','Nancy','Greenberg','egypt','fayoum','mostafa-kamel-street'),  
           ('98712345009897','Daniel','Faviet','egypt','cairo','elharam-street'),  
           ('12347896543208','John','Chen','egypt','fayoum','mostafa-kamel-street'),
           ('09081232154632','Ismael','Sciarra','egypt','fayoum','mostafa-kamel-street');                                                                                                                                                                                                                            Jose Manuel  
           
insert into SchoolDB.dbo.Phone(SSN_teacher,phone)
          values('37485912304561','01006637321'),
		        ('23759104762315','01028388384'),
		        ('46281345670982','01188832210'),
				('45673829981356','01063737298'),
				('34221987452300','01189902010'),
				('45321765490234','01289930044'),
				('98076543298767','01083300012'),
				('34678906547621','01288122388'),
                ('34216543217654','01264748990'),
                ('98712345009897','01134888100'),
                ('12347896543208','01038455221'),
				('09081232154632','01008388994');
 
 
 insert into SchoolDB.dbo.Classes(class_name,number,SSN_teacher)
            values('1/1',1,'37485912304561'),
			      ('1/2',1,'23759104762315'),
				  ('1/3',1,'46281345670982'),          
                  ('2/1',2,'45673829981356'),
				  ('2/2',2,'34221987452300'),
				  ('2/3',2,'45321765490234'),
				  ('3/1',3,'98076543298767'),
				  ('3/2',3,'09081232154632'),
				  ('3/3',3,'12347896543208'),
				  ('4/1',4,'98712345009897'),
                  ('4/2',4,'23759104762315'),
                  ('4/3',4,'34678906547621'),
                  ('5/1',5,'46281345670982'),
                  ('5/2',5,'45673829981356'),
                  ('5/3',5,'12347896543208'),
				  ('6/1',6,'98712345009897'),
				  ('6/2',6,'34216543217654'),
				  ('6/3',6,'34678906547621'); 
 

  insert into SchoolDB.dbo.Material(materialID,materialName)
              values(1, 'Arabic'),(2, 'Mathematics'),
			        (3,'Science'),(4,'English'),
					(5,'Social Studies');


 insert into SchoolDB.dbo.Assignment(assignmentID,assignmentName,assignmentDate)
             values(1,'Assignment1_Arabic', '12/9/2017'),
                   (2,'Assignment1_ Mathematics','1/10/2017'),
                   (3,'Assignment1_ Science','8/9/2017'),
                   (1,'Assignment2_Arabic', '14/3/2017'),
                   (4,'Assignment1_ English', '10/4/2017'),
                   (3,'Assignment2_ Science', '10/10/2017'),
                   (5,'Assignment2_ Social Studies',' 11/6/2017'),
				   (3,'Assignment1_ Science', '23/3/2018'),
                   (2,'Assignment1_ Mathematics', '27/4/2018'),
                   (1,'Assignment1_ Arabic','19/5/2018'),
                   (4,'Assignment1_ English',' 3/9/2018'),
                   (4,'Assignment2_ English',' 22/11/2018'),
                   (5,'Assignment1_ Social Studies', '1/8/2018'),
                   (1,'Assignment2_ Arabic', '2/11/2018'),
				   (3,' Assignment1_ Science',' 23/3/2019'),
                   (2,'Assignment1_ Mathematics','27/4/2019'),
                   (1,'Assignment1_ Arabic','19/5/2019'),
                   (4, 'Assignment1_ English', '3/9/2019'),
                   (4,'Assignment2_ English','22/11/2019'),
                   (5,'Assignment1_ Social Studies','1/8/2019');
      
 insert into SchoolDB.dbo.Teach_material(SSN_teacher,materialID)
	  values('37485912304561', 1), 
            ('23759104762315', 1), 
            ('46281345670982', 2),
            ('45673829981356', 2), 
            ('34221987452300', 2),
            ('45321765490234', 3),
            ('98076543298767', 3),
            ('34678906547621', 4),
            ('34216543217654', 4),
            ('98712345009897', 4),
            ('12347896543208', 5),
            ('09081232154632', 5);
         


insert into SchoolDB.dbo.Staff (SSN_staff,staff_name,job_title)
       values('30309142301944','omar khaled','cleanliness_worker'),
	         ('30302020914256','ali khaled','security workers'),
			 ('90909142301844','sami ali','cleanliness_worker'),
			 ('40403030124567','hasnaa gamal','security workers'),
			 ('10109123405672','ahmed gamal','cleanliness_worker'),
			 ('70984273812443','mohsen gaber','cleanliness_worker');

			 
insert into SchoolDB.dbo.student_material(SSN_student,materialID)
values('30179142301833', 1), 
     ('30176162301833', 2), 
     ('30178042301883', 3), 
     ('30173043301893', 1),
     ('30176062301433', 2), 
     ('30172052301593', 4),
     ('30171122301598', 5), 
     ('30172092301573', 4), 
     ('30175052301594', 5), 
     ('30177042301593', 3), 
     ('30175128990332', 2), 
     ('30176114456620 ', 1),
     ('30176644346201', 2), 
     ('30177134456620', 3),
     ('30174104452620', 4), 
     ('301748104452620',5), 
     ('301823685697801', 3),
     ('30182092301573', 4), 
     ('30185052301594', 1), 
     ('30187042301593', 2),
     ('30185128990332', 3), 
     ('30186114456620', 4), 
     ('30186644346201', 3),
	 ('30188134456620', 3),
     ('30182116577833', 5),
     ('30183906577833', 5),
     ('30184065778330', 4),
     ('30184175348330', 4), 
     ('30181155348330', 2), 
     ('30187055348330', 1), 
     ('30197042301593', 2), 
     ('30195128990332', 3), 
     ('30196114456620', 5), 
     ('30196644346201', 5),
     ('30198134456620 ', 3),
     ('30192116577833', 2),
     ('30193906577833', 4), 
     ('30194065778330', 5), 
     ('30194175348330', 3), 
     ('30191155348330', 2), 
     ('30197055348330', 1);

 
	select * from Students;
	select * from Teacher;
	select * from Phone;
	select * from Classes;
	select * from Material;
	select * from Assignment;
	select * from Teach_material;
	select * from Staff;
	select * from student_material;