-- Creating the Clients table

Create table clients(
clientId int primary key not null,
clientName varchar(50) not null,
contactInfo varchar(100) not null);

-- Creating the projects table with a foreign key from clients table

Create table projects(
projectId int primary key not null,
projectName varchar(30) not null,
clientId int not null,
StartDate date,
EndDate date,
foreign key (clientId) references clients(clientId)
);

-- Creating the designElements table with a foreign key from projects table
create table designElements(
elementId int primary key not null,
elementtype varchar(50) not null,
elementdescription varchar(200) not null,
projectId int not null,
price decimal(20,2) not null,
Foreign key(projectId) references projects(projectId)
);

-- Creating designTeam table
create table designTeams(
teamId int primary key not null,
teamName varchar(50) not null,
projectId int not null);

-- Inserting values into the clients table

insert into clients values (1,'Mutesi','mutesi1771@gmail.com');
insert into clients values (2,'Noella','noella1771@gmail.com');
insert into clients values (3,'ange','ange1771@gmail.com');
insert into clients values (4,'De','de1771@gmail.com');
SELECT * from clients;


-- Inserting values into the projects table

insert into projects values(5,'Now space',1);
insert into projects values(6,'Executive interiors',3);
insert into projects values(7,'Inspire interiors',4);
select* from projects;
-- Altering the projects table
alter table projects
add projectName varchar(30);
select * from projects;

insert into projects values(5,'Now space',1);
insert into projects values(6,'Executive interiors',3);
insert into projects values(7,'Inspire interiors',4);

-- Droping or deleting the projects table
drop table projects;

-- Recreating the projects table with a foreign key from clients table
create table projects(
projectId int primary key not null,
projectName varchar(50) not null,
clientId int not null,
Foreign key (clientId) references clients (clientId)
);

insert into projects values(5,'Now space',1);
insert into projects values(6,'Executive interiors',3);
insert into projects values(7,'Executive interiors',1);
insert into projects values(8,'Inspire interiors',2);
select * from projects;

-- Inserting values into designElements table
insert into designElements values (10,'space','pure',7,2000000);
insert into designElements values (11,'line','gold',6,6770000);
insert into designElements values (12,'space','silver',8,8900000);
insert into designElements(elementId,elementtype,elementdescription,projectId,price) values (13,'texture','silver',7,5200000);
desc designElements;
select * from designElements;

-- Inserting values into designTeams table 
insert into designTeams values(15,'Silent signal',8);
insert into designTeams values(16,'Girl Power',5);
insert into designTeams values(17,'Women Empowerment',7);
desc designTeams;
select * from designTeams;

-- Retrieving client projects
select c.clientId, c.clientName, p.projectName from clients c join projects p on c.clientId=p.clientId;

--updating a designTeams's name 
update designTeams set teamName='Power Girl' where teamId=16;

-- transactions
commit;


