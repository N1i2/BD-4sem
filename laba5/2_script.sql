use UNIVER

Select PULPIT.PULPIT_NAME
From PULPIT inner join FACULTY
On FACULTY.FACULTY = PULPIT.FACULTY 
where FACULTY.FACULTY In (Select PROFESSION.FACULTY 
from PROFESSION 
where PROFESSION.PROFESSION_NAME like '%technologies%')