use UNIVER

Select PULPIT.PULPIT_NAME
From PULPIT inner join FACULTY
On FACULTY.FACULTY = PULPIT.FACULTY inner join PROFESSION
On FACULTY.FACULTY = PROFESSION.FACULTY
where PROFESSION.PROFESSION_NAME like '%technologies%'