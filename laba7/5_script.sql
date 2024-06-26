use UNIVER

Select FACULTY.FACULTY, GROUPS.PROFESSION, PROGRESS.SUBJECT, AVG(PROGRESS.NOTE)[NOTE]
From FACULTY inner join GROUPS
ON FACULTY.FACULTY = GROUPS.FACULTY inner join STUDENT
On GROUPS.IDGROUP = STUDENT.IDGROUP inner join PROGRESS
On STUDENT.IDSTUDENT = PROGRESS.IDSTUDENT
Where FACULTY.FACULTY = 'TOB'
GROUP BY FACULTY.FACULTY, GROUPS.PROFESSION, PROGRESS.SUBJECT
EXCEPT
Select FACULTY.FACULTY, GROUPS.PROFESSION, PROGRESS.SUBJECT, AVG(PROGRESS.NOTE)[NOTE]
From FACULTY inner join GROUPS
ON FACULTY.FACULTY = GROUPS.FACULTY inner join STUDENT
On GROUPS.IDGROUP = STUDENT.IDGROUP inner join PROGRESS
On STUDENT.IDSTUDENT = PROGRESS.IDSTUDENT
Where FACULTY.FACULTY = 'XTiT'
GROUP BY FACULTY.FACULTY, GROUPS.PROFESSION, PROGRESS.SUBJECT