use UNIVER

SELECT (2014 - GROUPS.YEAR_FIRST)[COURSE],FACULTY.FACULTY_NAME, 
ROUND(AVG(CAST(PROGRESS.NOTE AS FLOAT(4))), 2)[AVG_NOTE]
FROM FACULTY 
INNER JOIN GROUPS ON FACULTY.FACULTY = GROUPS.FACULTY
INNER JOIN STUDENT ON STUDENT.IDGROUP = GROUPS.IDGROUP
INNER JOIN PROGRESS ON PROGRESS.IDSTUDENT = STUDENT.IDSTUDENT
GROUP BY GROUPS.YEAR_FIRST, GROUPS.PROFESSION, FACULTY.FACULTY_NAME;