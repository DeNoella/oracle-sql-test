# Ntunga interior design company database

This README provides an overview of The Ntunga interior design company  manages various projects for clients. Each project involves multiple design elements such as furniture, fabrics, and colors. The company needs to keep track of clients, projects, design elements, and design teams to streamline their workflow and enhance customer satisfaction. 

Attached are the pictures for conceptual diagrams:

![Conceptual1](https://github.com/user-attachments/assets/de3eb055-baea-40b6-92c2-375ef23f7b14) 
![Conceptual2](https://github.com/user-attachments/assets/0285e573-ffd0-4eb0-a356-004b8154405e) 
![Conceptual3](https://github.com/user-attachments/assets/7afddf87-efa2-4072-b125-a1bff10ef0f4)
![Conceptual4](https://github.com/user-attachments/assets/3653e548-528c-4c25-ae88-562706991a3e) 

Screenshots illustration:

![client](https://github.com/user-attachments/assets/86d3cc02-6bbe-480b-9693-38ebe2909e48) 
![designElement](https://github.com/user-attachments/assets/b5c85e62-71e4-4e3f-8e9e-24697f7f2d54) 
![designTeam](https://github.com/user-attachments/assets/42b9a297-fa0d-44df-beec-b94e2329e9fa) 
![projects](https://github.com/user-attachments/assets/15a1fd4b-4fd0-4d38-bce5-5d00dcfe1dcf)

### SQL Commands Explanation

1. Creating a table: To create a new table, you use the CREATE TABLE statement.

```sql 
Create table projects(
projectId int primary key not null,
projectName varchar(30) not null,
clientId int not null,
StartDate date,
EndDate date,
foreign key (clientId) references clients(clientId)
);

```

2.Inserting values into a table: The SQL INSERT command is used to add new records to a table.

```sql
insert into clients values (1,'Mutesi','mutesi1771@gmail.com');
insert into clients values (2,'Noella','noella1771@gmail.com');
insert into clients values (3,'ange','ange1771@gmail.com');
insert into clients values (4,'De','de1771@gmail.com'); 
insert into projects values(5,'Now space',1);
insert into projects values(6,'Executive interiors',3);
insert into projects values(7,'Inspire interiors',4);
```
3. Altering a table: You can modify the structure of an existing table using the ALTER TABLE statement. For example, to add a new column:

```sql
alter table projects
add projectName varchar(30);
```

4. Droping/ Deleting a table: To remove a table and all its data, use the DROP TABLE statement and to delete specific records from a table, use the DELETE statement.

```sql 
drop table projects;
```


5. Retrieving:To retrieve data, you use the SELECT statement. You can specify which columns to retrieve.

```sql
select c.clientId, c.clientName, p.projectName from clients c join projects p on c.clientId=p.clientId;
```

6. Updating: To modify existing records, use the UPDATE statement.

```sql 
update designTeams set teamName='Power Girl' where teamId=16;

```
7. Transactions: 
```sql
commit;
```

#### Summary:
These are the fundamental SQL operations you'll commonly use to manage and manipulate data in a relational database. Each command can be enhanced with various clauses and options for more complex queries. If you have any specific questions or need examples of a particular operation, feel free to ask!

